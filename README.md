# NomaePreferences
A SwiftUI preferences framework for iOS tweak development

## Usage

PreferencesController.swift
```swift
class PreferencesController: NomaePreferencesController {
    override var suiView: AnyView {
        get { AnyView(RootPreferences()) }
        set { super.suiView = newValue }
    }
}
```

RootPreferences.swift
```swift
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

## Credits
Huge thank you to [Kabir](https://github.com/kabiroberai) for help debugging and fixing various Swift/Xcode problems
