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
//      - Added support for storing Array-like objects
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
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let initialValue = store.object(forKey: key) as? Bool ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? Bool
        }, saveValue: { newValue in
            store.set(newValue, forKey: key)
        })
    }
}

extension Preference where Value == Int {
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let initialValue = store.object(forKey: key) as? Int ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? Int
        }, saveValue: { newValue in
            store.set(newValue, forKey: key)
        })
    }
}

extension Preference where Value == Double {
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let initialValue = store.object(forKey: key) as? Double ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? Double
        }, saveValue: { newValue in
            store.set(newValue, forKey: key)
        })
    }
}

extension Preference where Value == String {
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let initialValue = store.object(forKey: key) as? String ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? String
        }, saveValue: { newValue in
            store.set(newValue, forKey: key)
        })
    }
}

extension Preference where Value == Data {
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let initialValue = store.object(forKey: key) as? Data ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? Data
        }, saveValue: { newValue in
            store.set(newValue, forKey: key)
        })
    }
}

extension Preference where Value == URL {
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let initialValue = store.object(forKey: key) as? URL ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            ($0 as? String).flatMap(URL.init)
        }, saveValue: { newValue in
            store.set(newValue.absoluteString, forKey: key)
        })
    }
}

extension Preference where Value: RawRepresentable, Value.RawValue == Int {
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

extension Preference where Value == [Bool] {
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let initialValue = store.object(forKey: key) as? [Bool] ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? [Bool]
        }, saveValue: { newValue in
            store.set(newValue, forKey: key)
        })
    }
}

extension Preference where Value == [Int] {
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let initialValue = store.object(forKey: key) as? [Int] ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? [Int]
        }, saveValue: { newValue in
            store.set(newValue, forKey: key)
        })
    }
}

extension Preference where Value == [Double] {
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let initialValue = store.object(forKey: key) as? [Double] ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? [Double]
        }, saveValue: { newValue in
            store.set(newValue, forKey: key)
        })
    }
}

extension Preference where Value == [String] {
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let initialValue = store.object(forKey: key) as? [String] ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? [String]
        }, saveValue: { newValue in
            store.set(newValue, forKey: key)
        })
    }
}

extension Preference where Value == [Data] {
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let initialValue = store.object(forKey: key) as? [Data] ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            $0 as? [Data]
        }, saveValue: { newValue in
            store.set(newValue, forKey: key)
        })
    }
}

extension Preference where Value: ExpressibleByArrayLiteral, Value.ArrayLiteralElement == URL {
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let stringArray = store.object(forKey: key) as? [String]
        let initialValue = stringArray?.compactMap(URL.init) as? Value ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            ($0 as? [String])?.compactMap(URL.init) as? Value
        }, saveValue: { newValue in
            store.set((newValue as? [URL])?.compactMap { $0.absoluteString }, forKey: key)
        })
    }
}

extension Preference where Value: ExpressibleByArrayLiteral, Value.ArrayLiteralElement: RawRepresentable, Value.ArrayLiteralElement.RawValue == Int {
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let rawArray = store.object(forKey: key) as? [Int]
        let initialValue = rawArray?.compactMap(Value.ArrayLiteralElement.init) as? Value ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            ($0 as? [Int])?.compactMap(Value.ArrayLiteralElement.init) as? Value
        }, saveValue: { newValue in
            store.set((newValue as? [Value.ArrayLiteralElement])?.compactMap { $0.rawValue }, forKey: key)
        })
    }
}

extension Preference where Value: ExpressibleByArrayLiteral, Value.ArrayLiteralElement: RawRepresentable, Value.ArrayLiteralElement.RawValue == String {
    public init(wrappedValue: Value, _ key: String, identifier: String) {
        let store = UserDefaults(suiteName: "/var/mobile/Library/Preferences/\(identifier).plist")!
        let rawArray = store.object(forKey: key) as? [String]
        let initialValue = rawArray?.compactMap(Value.ArrayLiteralElement.init) as? Value ?? wrappedValue
        self.init(value: initialValue, store: store, key: key, transform: {
            ($0 as? [String])?.compactMap(Value.ArrayLiteralElement.init) as? Value
        }, saveValue: { newValue in
            store.set((newValue as? [Value.ArrayLiteralElement])?.compactMap { $0.rawValue }, forKey: key)
        })
    }
}
