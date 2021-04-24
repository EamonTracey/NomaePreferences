# Header

Header view to display a package name, an optional package icon, and an optional subtitle.

``` swift
public struct Header<Icon: View>: View
```

## Inheritance

`View`

## Initializers

### `init(_:icon:subtitle:)`

``` swift
public init(_ packageName: String, icon: Icon? = nil, subtitle: String? = nil)
```

## Properties

### `body`

``` swift
var body: some View
```
