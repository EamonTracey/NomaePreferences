// MIT License
//
// Copyright (c) 2020 Xavier Lowmiller
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//
//
// The majority of code in this file is from https://github.com/xavierLowmiller/AppStorage
// The following changes have been made:
//      - `AppStorage` renamed to `Preference` (typealias removed)
//      - Rather than initializing with a UserDefaults object, a `String` identifier is used.
//          UserDefaults with suite name "/var/mobile/Library/Preferences/\(identifier).plist"
//          is created. Due to cfprefsd internals and because we provided an absolute path as
//          the suite name, the given file path will be used to store preferences. Thus, the
//          preferences can be accessed in any process.
//

import Combine
import SwiftUI

/// A property wrapper type that reflects a value from `UserDefaults` and
/// invalidates a view on a change in value in that user default.
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

    /// Creates a property that can read and write to a boolean user default.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if a boolean value is not specified
    ///     for the given key.
    ///   - key: The key to read and write the value to in the user defaults
    ///     store.
    ///   - store: The user defaults store to read and write to. A value
    ///     of `nil` will use the user default store from the environment.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let initialValue = store.object(forKey: key) as? Value ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? Value
        }, saveValue: { newValue in
            store.set(newValue, forKey: key)
        })
    }
}

extension Preference where Value == Int {
    /// Creates a property that can read and write to an integer user default.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if an integer value is not specified
    ///     for the given key.
    ///   - key: The key to read and write the value to in the user defaults
    ///     store.
    ///   - store: The user defaults store to read and write to. A value
    ///     of `nil` will use the user default store from the environment.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let initialValue = store.object(forKey: key) as? Value ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? Value
        }, saveValue: { newValue in
            store.set(newValue, forKey: key)
        })
    }
}

extension Preference where Value == Double {

    /// Creates a property that can read and write to a double user default.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if a double value is not specified
    ///     for the given key.
    ///   - key: The key to read and write the value to in the user defaults
    ///     store.
    ///   - store: The user defaults store to read and write to. A value
    ///     of `nil` will use the user default store from the environment.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let initialValue = store.object(forKey: key) as? Value ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? Value
        }, saveValue: { newValue in
            store.set(newValue, forKey: key)
        })
    }
}

extension Preference where Value == String {

    /// Creates a property that can read and write to a string user default.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if a string value is not specified
    ///     for the given key.
    ///   - key: The key to read and write the value to in the user defaults
    ///     store.
    ///   - store: The user defaults store to read and write to. A value
    ///     of `nil` will use the user default store from the environment.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let initialValue = store.object(forKey: key) as? Value ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? Value
        }, saveValue: { newValue in
            store.set(newValue, forKey: key)
        })
    }
}

extension Preference where Value == URL {

    /// Creates a property that can read and write to a url user default.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if a url value is not specified for
    ///     the given key.
    ///   - key: The key to read and write the value to in the user defaults
    ///     store.
    ///   - store: The user defaults store to read and write to. A value
    ///     of `nil` will use the user default store from the environment.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let initialValue = store.object(forKey: key) as? Value ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            ($0 as? String).flatMap(URL.init)
        }, saveValue: { newValue in
            store.set(newValue, forKey: key)
        })
    }
}

extension Preference where Value == Data {

    /// Creates a property that can read and write to a user default as data.
    ///
    /// Avoid storing large data blobs in user defaults, such as image data,
    /// as it can negatively affect performance of your app. On tvOS, a
    /// `NSUserDefaultsSizeLimitExceededNotification` notification is posted
    /// if the total user default size reaches 512kB.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if a data value is not specified for
    ///    the given key.
    ///   - key: The key to read and write the value to in the user defaults
    ///     store.
    ///   - store: The user defaults store to read and write to. A value
    ///     of `nil` will use the user default store from the environment.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let initialValue = store.object(forKey: key) as? Value ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? Value
        }, saveValue: { newValue in
            store.set(newValue, forKey: key)
        })
    }
}

extension Preference where Value: RawRepresentable, Value.RawValue == Int {

    /// Creates a property that can read and write to an integer user default,
    /// transforming that to `RawRepresentable` data type.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if an integer value
    ///     is not specified for the given key.
    ///   - key: The key to read and write the value to in the user defaults
    ///     store.
    ///   - store: The user defaults store to read and write to. A value
    ///     of `nil` will use the user default store from the environment.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let rawValue = store.object(forKey: key) as? Int
        let initialValue = rawValue.flatMap(Value.init) ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            ($0 as? Int).flatMap(Value.init)
        }, saveValue: { newValue in
            store.set(newValue.rawValue, forKey: key)
        })
    }
}

extension Preference where Value: RawRepresentable, Value.RawValue == String {

    /// Creates a property that can read and write to a string user default,
    /// transforming that to `RawRepresentable` data type.
    ///
    /// - Parameters:
    ///   - wrappedValue: The default value if a string value
    ///     is not specified for the given key.
    ///   - key: The key to read and write the value to in the user defaults
    ///     store.
    ///   - store: The user defaults store to read and write to. A value
    ///     of `nil` will use the user default store from the environment.
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let rawValue = store.object(forKey: key) as? String
        let initialValue = rawValue.flatMap(Value.init) ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            ($0 as? String).flatMap(Value.init)
        }, saveValue: { newValue in
            store.set(newValue.rawValue, forKey: key)
        })
    }
}
