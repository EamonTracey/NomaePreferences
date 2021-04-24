# Preference

A property wrapper type that reflects a value from `UserDefaults` and
invalidates a view on a change in value in that user default.

``` swift
@frozen @propertyWrapper public struct Preference<Value>: DynamicProperty
```

Example usage:

``` 
let identifier = "com.somedomain.sometweak"

struct RootPreferences: View {
    @Preference("enabled", identifier: identifier) var enabled = true

    var body: some View {
        Form {
            Toggle("Enabled", isOn: $enabled)
        }
        .navigationBarTitle("SomeTweak")
    }
}
```

## Inheritance

`DynamicProperty`

## Properties

### `wrappedValue`

``` swift
var wrappedValue: Value
```

### `projectedValue`

``` swift
var projectedValue: Binding<Value>
```
