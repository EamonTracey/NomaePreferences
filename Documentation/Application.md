# Application

A representation of an iOS application wrapped around `LSApplicationProxy`.

``` swift
public struct Application
```

## Inheritance

`Equatable`, `RawRepresentable`

## Initializers

### `init?(rawValue:)`

Create an `Application` instance with a raw `String` value (the bundle identifier).

``` swift
public init?(rawValue: String)
```

### `init(_:)`

Creates an `Application` instance.

``` swift
public init(_ bundleID: String)
```

#### Parameters

  - bundleID: The bundle identifier of the application.

## Properties

### `rawValue`

Returns the `Application` raw `String` value (the bundle identifier).

``` swift
var rawValue: String
```

### `bundleID`

The bundle identifier of the application.

``` swift
let bundleID: String
```

### `proxy`

An `LSApplicationProxy` instantiated from the bundle identifier.

``` swift
let proxy: LSApplicationProxy
```

### `name`

The display name of the application.

``` swift
let name: String?
```

### `icon`

The icon of the application with 40x40 resolution.

``` swift
let icon: UIImage?
```

### `allInstalledApplications`

Returns an array of all installed applications, including system applications.

``` swift
var allInstalledApplications: [Application]
```

## Methods

### `==(lhs:rhs:)`

Compare the `bundleID` of each `Application`

``` swift
public static func ==(lhs: Application, rhs: Application) -> Bool
```
