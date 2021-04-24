# NomaePreferencesController

A `PreferenceLoaderController` subclass that loads a SwiftUI `View`.

``` swift
open class NomaePreferencesController: PreferenceLoaderController
```

Example usage:

``` 
class PreferencesController: NomaePreferencesController {
    override var suiView {
        get { AnyView(RootPreferences()) }
        set { super.suiView = newValue }
    }
}
```

## Inheritance

[`PreferenceLoaderController`](/PreferenceLoaderController)

## Properties

### `suiView`

SwiftUI `View` to be overridden with a custom view.

``` swift
var suiView: AnyView
```

## Methods

### `loadView()`

``` swift
override public func loadView()
```
