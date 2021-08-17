//
//  Preference.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//
// The majority of code in this file is from https://github.com/xavierLowmiller/AppStorage
// The following changes have been made:
//      - `AppStorage` renamed to `Preference` (typealias removed).
//      - Rather than initializing with a UserDefaults object, a `String` identifier is used.
//        The key is then appended to the identifier to create an identifiedKey. Each value
//        is stored in the `UserDefaults` global domain with its respective identifiedKey.
//      - Support storing `Numeric`s rather than only `Int`s and `Double`s.
//      - Added support for storing `Array`-like objects.
//

import Combine
import SwiftUI

/// A property wrapper type that reflects a value from `UserDefaults` and
/// invalidates a view on a change in value in that user default.
///
/// Example usage:
///
///     let identifier = "com.somedomain.sometweak"
///
///     struct RootPreferences: View {
///         @Preference("enabled", identifier: identifier) var enabled = true
///
///         var body: some View {
///             Form {
///                 Toggle("Enabled", isOn: $enabled)
///             }
///             .navigationBarTitle("SomeTweak")
///         }
///     }
@frozen @propertyWrapper public struct Preference<Value>: DynamicProperty {
    @ObservedObject private var _value: Storage<Value>
    private let saveValue: (Value) -> Void

    private init(value: Value, store: UserDefaults, key: String, transform: @escaping (Any?) -> Value?, saveValue: @escaping (Value) -> Void) {
        _value = Storage(value: value, store: store, key: key, transform: transform)
        self.saveValue = saveValue
    }

    public var wrappedValue: Value {
        get {
            _value.value
        }
        nonmutating set {
            saveValue(newValue)
            _value.value = newValue
        }
    }

    public var projectedValue: Binding<Value> {
        Binding(
            get: { self.wrappedValue },
            set: { self.wrappedValue = $0 }
        )
    }
}

@usableFromInline
class Storage<Value>: NSObject, ObservableObject {
    @Published var value: Value
    private let defaultValue: Value
    private let store: UserDefaults
    private let keyPath: String
    private let transform: (Any?) -> Value?

    init(value: Value, store: UserDefaults, key: String, transform: @escaping (Any?) -> Value?) {
        self.value = value
        self.defaultValue = value
        self.store = store
        self.keyPath = key
        self.transform = transform
        super.init()

        store.addObserver(self, forKeyPath: key, options: [.new], context: nil)
    }

    deinit {
        store.removeObserver(self, forKeyPath: keyPath)
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey: Any]?, context: UnsafeMutableRawPointer?) {
        value = change?[.newKey].flatMap(transform) ?? defaultValue
    }
}

extension Preference where Value == Bool {
    /// Creates a property that can read and write to a `Bool` user default.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if a `Bool` value is not specified for the given key.
    ///   - key: The key to read and write the value to in the `UserDefaults` store.
    ///   - identifier: The identifier used for the `UserDefaults` suite and cfprefsd plist path.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let identifiedKey = identifier + "." + key
        let store = UserDefaults.standard
        let initialValue = store.object(forKey: identifiedKey, inDomain: UserDefaults.globalDomain) as? Bool ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? Bool
        }, saveValue: { newValue in
            store.setObject(newValue, forKey: identifiedKey, inDomain: UserDefaults.globalDomain)
        })
    }
}

extension Preference where Value: Numeric {
    /// Creates a property that can read and write to a `Numeric` user default.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if a `Numeric` value is not specified for the given key.
    ///   - key: The key to read and write the value to in the `UserDefaults` store.
    ///   - identifier: The identifier used for the `UserDefaults` suite and cfprefsd plist path.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let identifiedKey = identifier + "." + key
        let store = UserDefaults.standard
        let initialValue = store.object(forKey: identifiedKey, inDomain: UserDefaults.globalDomain) as? Value ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? Value
        }, saveValue: { newValue in
            store.setObject(newValue, forKey: identifiedKey, inDomain: UserDefaults.globalDomain)
        })
    }
}

extension Preference where Value == String {
    /// Creates a property that can read and write to a `String` user default.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if a `String` value is not specified for the given key.
    ///   - key: The key to read and write the value to in the `UserDefaults` store.
    ///   - identifier: The identifier used for the `UserDefaults` suite and cfprefsd plist path.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let identifiedKey = identifier + "." + key
        let store = UserDefaults.standard
        let initialValue = store.object(forKey: identifiedKey, inDomain: UserDefaults.globalDomain) as? String ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? String
        }, saveValue: { newValue in
            store.setObject(newValue, forKey: identifiedKey, inDomain: UserDefaults.globalDomain)
        })
    }
}

extension Preference where Value == Data {
    /// Creates a property that can read and write to a `Data` user default.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if a `Data` value is not specified for the given key.
    ///   - key: The key to read and write the value to in the `UserDefaults` store.
    ///   - identifier: The identifier used for the `UserDefaults` suite and cfprefsd plist path.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let identifiedKey = identifier + "." + key
        let store = UserDefaults.standard
        let initialValue = store.object(forKey: identifiedKey, inDomain: UserDefaults.globalDomain) as? Data ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? Data
        }, saveValue: { newValue in
            store.setObject(newValue, forKey: identifiedKey, inDomain: UserDefaults.globalDomain)
        })
    }
}

extension Preference where Value == Date {
    /// Creates a property that can read and write to a `Date` user default.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if a `Date` value is not specified for the given key.
    ///   - key: The key to read and write the value to in the `UserDefaults` store.
    ///   - identifier: The identifier used for the `UserDefaults` suite and cfprefsd plist path.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let identifiedKey = identifier + "." + key
        let store = UserDefaults.standard
        let initialValue = store.object(forKey: identifiedKey, inDomain: UserDefaults.globalDomain) as? Date ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? Date
        }, saveValue: { newValue in
            store.setObject(newValue, forKey: identifiedKey, inDomain: UserDefaults.globalDomain)
        })
    }
}

extension Preference where Value == URL {
    /// Creates a property that can read and write to a `URL` user default.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if a `URL` value is not specified for the given key.
    ///   - key: The key to read and write the value to in the `UserDefaults` store.
    ///   - identifier: The identifier used for the `UserDefaults` suite and cfprefsd plist path.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let identifiedKey = identifier + "." + key
        let store = UserDefaults.standard
        let initialValue = store.object(forKey: identifiedKey, inDomain: UserDefaults.globalDomain) as? URL ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            ($0 as? String).flatMap(URL.init)
        }, saveValue: { newValue in
            store.setObject(newValue.absoluteString, forKey: identifiedKey, inDomain: UserDefaults.globalDomain)
        })
    }
}

extension Preference where Value: RawRepresentable, Value.RawValue == Int {
    /// Creates a property that can read and write to a `Numeric` user default,
    /// transforming that to `RawRepresentable` data type.
    ///
    /// A common usage is with enumerations:
    ///
    ///     enum SomeEnum: Int {
    ///         case a
    ///         case b
    ///         case c
    ///     }
    ///
    ///     struct RootPreferences: View {
    ///         @Preference("someEnumValue") private var value = SomeEnum.a
    ///
    ///         var body: some View { ... }
    ///     }
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if a `Numeric` `RawRepresentable` value is
    ///     not specified for the given key.
    ///   - key: The key to read and write the value to in the `UserDefaults` store.
    ///   - identifier: The identifier used for the `UserDefaults` suite and cfprefsd plist path.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let identifiedKey = identifier + "." + key
        let store = UserDefaults.standard
        let rawValue = store.object(forKey: identifiedKey, inDomain: UserDefaults.globalDomain) as? Int
        let initialValue = rawValue.flatMap(Value.init) ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            ($0 as? Value.RawValue).flatMap(Value.init)
        }, saveValue: { newValue in
            store.setObject(newValue.rawValue, forKey: identifiedKey, inDomain: UserDefaults.globalDomain)
        })
    }
}

extension Preference where Value: RawRepresentable, Value.RawValue == String {
    /// Creates a property that can read and write to a `String` user default,
    /// transforming that to `RawRepresentable` data type.
    ///
    /// This allows for storing `Color`s and using `ColorPicker`:
    ///
    ///     struct RootPreferences: View {
    ///         @Preference("someColor") private var color = Color.white
    ///
    ///         var body: some View {
    ///             Form {
    ///                 ColorPicker("Color", selection: $color)
    ///             }
    ///         }
    ///     }
    ///
    /// This also allows for storing `Application`s.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if a `String` `RawRepresentable` value is
    ///     not specified for the given key.
    ///   - key: The key to read and write the value to in the `UserDefaults` store.
    ///   - identifier: The identifier used for the `UserDefaults` suite and cfprefsd plist path.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let identifiedKey = identifier + "." + key
        let store = UserDefaults.standard
        let rawValue = store.object(forKey: identifiedKey, inDomain: UserDefaults.globalDomain) as? String
        let initialValue = rawValue.flatMap(Value.init) ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            ($0 as? String).flatMap(Value.init)
        }, saveValue: { newValue in
            store.setObject(newValue.rawValue, forKey: identifiedKey, inDomain: UserDefaults.globalDomain)
        })
    }
}

extension Preference where Value: ExpressibleByArrayLiteral, Value.ArrayLiteralElement == Bool {
    /// Creates a property that can read and write to an `Array`-like set of `Bool`s user default.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if an `Array`-like set of `Bool`s  value is not specified for the given key.
    ///   - key: The key to read and write the value to in the `UserDefaults` store.
    ///   - identifier: The identifier used for the `UserDefaults` suite and cfprefsd plist path.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let identifiedKey = identifier + "." + key
        let store = UserDefaults.standard
        let initialValue = store.object(forKey: identifiedKey, inDomain: UserDefaults.globalDomain) as? Value ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? Value
        }, saveValue: { newValue in
            store.setObject(newValue, forKey: identifiedKey, inDomain: UserDefaults.globalDomain)
        })
    }
}

extension Preference where Value: ExpressibleByArrayLiteral, Value.ArrayLiteralElement: Numeric {
    /// Creates a property that can read and write to an `Array`-like set of `Numeric`s user default.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if an `Array`-like set of `Numeric`s  value is not specified for the given key.
    ///   - key: The key to read and write the value to in the `UserDefaults` store.
    ///   - identifier: The identifier used for the `UserDefaults` suite and cfprefsd plist path.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let identifiedKey = identifier + "." + key
        let store = UserDefaults.standard
        let initialValue = store.object(forKey: identifiedKey, inDomain: UserDefaults.globalDomain) as? Value ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? Value
        }, saveValue: { newValue in
            store.setObject(newValue, forKey: identifiedKey, inDomain: UserDefaults.globalDomain)
        })
    }
}

extension Preference where Value: ExpressibleByArrayLiteral, Value.ArrayLiteralElement == String {
    /// Creates a property that can read and write to an `Array`-like set of `String`s user default.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if an `Array`-like set of `String`s  value is not specified for the given key.
    ///   - key: The key to read and write the value to in the `UserDefaults` store.
    ///   - identifier: The identifier used for the `UserDefaults` suite and cfprefsd plist path.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let identifiedKey = identifier + "." + key
        let store = UserDefaults.standard
        let initialValue = store.object(forKey: identifiedKey, inDomain: UserDefaults.globalDomain) as? Value ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? Value
        }, saveValue: { newValue in
            store.setObject(newValue, forKey: identifiedKey, inDomain: UserDefaults.globalDomain)
        })
    }
}

extension Preference where Value: ExpressibleByArrayLiteral, Value.ArrayLiteralElement == Data {
    /// Creates a property that can read and write to an `Array`-like set of `Data`s user default.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if an `Array`-like set of `Data`s  value is not specified for the given key.
    ///   - key: The key to read and write the value to in the `UserDefaults` store.
    ///   - identifier: The identifier used for the `UserDefaults` suite and cfprefsd plist path.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let identifiedKey = identifier + "." + key
        let store = UserDefaults.standard
        let initialValue = store.object(forKey: identifiedKey, inDomain: UserDefaults.globalDomain) as? Value ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? Value
        }, saveValue: { newValue in
            store.setObject(newValue, forKey: identifiedKey, inDomain: UserDefaults.globalDomain)
        })
    }
}

extension Preference where Value: ExpressibleByArrayLiteral, Value.ArrayLiteralElement == Date {
    /// Creates a property that can read and write to an `Array`-like set of `Date`s user default.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if an `Array`-like set of `Date`s  value is not specified for the given key.
    ///   - key: The key to read and write the value to in the `UserDefaults` store.
    ///   - identifier: The identifier used for the `UserDefaults` suite and cfprefsd plist path.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let identifiedKey = identifier + "." + key
        let store = UserDefaults.standard
        let initialValue = store.object(forKey: identifiedKey, inDomain: UserDefaults.globalDomain) as? Value ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? Value
        }, saveValue: { newValue in
            store.setObject(newValue, forKey: identifiedKey, inDomain: UserDefaults.globalDomain)
        })
    }
}

extension Preference where Value: ExpressibleByArrayLiteral, Value.ArrayLiteralElement == URL {
    /// Creates a property that can read and write to an `Array`-like set of `URL`s user default.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if an `Array`-like set of `URL`s  value is not specified for the given key.
    ///   - key: The key to read and write the value to in the `UserDefaults` store.
    ///   - identifier: The identifier used for the `UserDefaults` suite and cfprefsd plist path.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let identifiedKey = identifier + "." + key
        let store = UserDefaults.standard
        let stringArray = store.object(forKey: identifiedKey, inDomain: UserDefaults.globalDomain) as? [String]
        let initialValue = stringArray?.compactMap(URL.init) as? Value ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            ($0 as? [String])?.compactMap(URL.init) as? Value
        }, saveValue: { newValue in
            store.setObject((newValue as? [URL])?.compactMap { $0.absoluteString }, forKey: identifiedKey, inDomain: UserDefaults.globalDomain)
        })
    }
}

extension Preference where Value: ExpressibleByArrayLiteral, Value.ArrayLiteralElement: RawRepresentable, Value.ArrayLiteralElement.RawValue == Int {
    /// Creates a property that can read and write to an `Array`-like set of `Numeric`s user default,
    /// transforming that to an `Array`-like set of  `RawRepresentable` data type.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if an `Array`-like set of  `Numeric` `RawRepresentable`value is
    ///     not specified for the given key.
    ///   - key: The key to read and write the value to in the `UserDefaults` store.
    ///   - identifier: The identifier used for the `UserDefaults` suite and cfprefsd plist path.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let identifiedKey = identifier + "." + key
        let store = UserDefaults.standard
        let rawArray = store.object(forKey: identifiedKey, inDomain: UserDefaults.globalDomain) as? [Int]
        let initialValue = rawArray?.compactMap(Value.ArrayLiteralElement.init) as? Value ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            ($0 as? [Int])?.compactMap(Value.ArrayLiteralElement.init) as? Value
        }, saveValue: { newValue in
            store.setObject((newValue as? [Value.ArrayLiteralElement])?.compactMap { $0.rawValue }, forKey: identifiedKey, inDomain: UserDefaults.globalDomain)
        })
    }
}

extension Preference where Value: ExpressibleByArrayLiteral, Value.ArrayLiteralElement: RawRepresentable, Value.ArrayLiteralElement.RawValue == String {
    /// Creates a property that can read and write to an `Array`-like set of `String`s user default,
    /// transforming that to an `Array`-like set of  `RawRepresentable` data type.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if an `Array`-like set of  `String` `RawRepresentable`value is
    ///     not specified for the given key.
    ///   - key: The key to read and write the value to in the `UserDefaults` store.
    ///   - identifier: The identifier used for the `UserDefaults` suite and cfprefsd plist path.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let identifiedKey = identifier + "." + key
        let store = UserDefaults.standard
        let rawArray = store.object(forKey: identifiedKey, inDomain: UserDefaults.globalDomain) as? [String]
        let initialValue = rawArray?.compactMap(Value.ArrayLiteralElement.init) as? Value ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            ($0 as? [String])?.compactMap(Value.ArrayLiteralElement.init) as? Value
        }, saveValue: { newValue in
            store.setObject((newValue as? [Value.ArrayLiteralElement])?.compactMap { $0.rawValue }, forKey: identifiedKey, inDomain: UserDefaults.globalDomain)
        })
    }
}
