# NomaePreferences
A SwiftUI preferences framework for iOS tweak development

Check out the [Wiki](https://github.com/EamonTracey/NomaePreferences/wiki) for the full documentation!

## Requirements

- Xcode 12 or above
- git

## Table of Contents:
* [Setup](#setup)
* [Usage](#usage)
    + [Introduction](#introduction)
    + [Writing Values to Your Preferences](#writing-values-to-your-preferences)
    + [Reading Values from Your Preferences](#reading-values-from-your-preferences)
    + [Extra Utilities](#extra-utilities)
* [Tweak Examples](#tweak-examples)
* [Credits](#credits)

## Setup

[//]: <> (  UPDATE WHEN DISTRUBITION OF FRAMEWORK FOR THEOS WORKED OUT )
Open a terminal and paste the following:
```bash
cp -R NomaePreferences.framework $THEOS/lib
```

Link NomaePreferences in the Makefile
```makefile
$(TWEAK_NAME)_FRAMEWORKS += NomaePreferences
````

Add NomaePreferences as a dependency in the control file
```
Depends: com.eamontracey.nomaepreferences
```

## Usage

### Table of Contents:

- [Introduction](#introduction)
- [Writing Values to Your Preferences](#writing-values-to-your-preferences)
- [Reading Values from Your Preferences](#reading-values-from-your-preferences)
- [Extra Utilities](#extra-utilities)

### Introduction

RootListController.swift:
```swift
import SwiftUI
import NomaePreferences

class RootListController: NomaePreferencesController {
    override var suiView: AnyView {
        get { AnyView(RootPreferencesView()) }
        set { super.suiView = newValue }
    }
}
```

Create a Swift file called RootPreferencesView.swift with a SwiftUI struct and declaration of your bundle identifier. Example:
```swift
import SwiftUI
import NomaePreferences

// Replace with the identifier of your tweak.
let identifier = "com.yourdomain.yourtweak"

struct RootPreferencesView: View {
    @Preference("enabled", identifier: identifier) var enabled = true

    var body: some View {
        Form {
            Toggle("Enabled", isOn: $enabled)
        }
        .navigationBarTitle("Your Tweak")
    }
}
```
This will display an example enable/disable switch switch in the preferences.

### Writing Values to Your Preferences

The @Preferences property wrapper is responsible for reading/writing your values, and updating your view when those values are changed. It works very similarly to Apple's own @AppStorage property wrapper.

For each value you want to later access in your tweak's code you must declare @Preferences as it's source of truth. Use the $ prefix to for the property wrapped values in your SwiftUI code. Examples:
```swift
// Example Toggle Switch.
@Preference("enabled", identifier: identifier) var enabled = true // Correspond to:
Toggle("Enabled", isOn: $enabled)

// Example Color Picker.
@Preference("color", identifier: identifier) var color = Color.red // Correspond to:
ColorPicker("Pick a Color", selection: $color)

// Example Slider.
@Preference("size", identifier: identifier) var size = 50 // Correspond to:
Slider(value: $size, in: 0...100)

// Example Text Field.
@Preference("text", identifier: identifier) var text: String = "" // Correspond to:
TextEditor(text: $text)
```

### Reading Values from Your Preferences

A simple and clean way of accessing your values in your tweak.x.swift file is to create a struct containing them. You can copy and paste all of your @Preference uses but remeber to attach the variables to the struct by making them `static` variables and to declare your identifier:
```swift
struct YourTweakPrefs: Tweak {

    // Replace with the identifier of your tweak.
    static let identifier = "com.yourdomain.yourtweak"
    
    @Preference("enabled", identifier: identifier) static var enabled = true
    @Preference("color", identifier: identifier) static var color = Color.red
    @Preference("size", identifier: identifier) static var size = 50
    @Preference("text", identifier: identifier) static var text: String = ""
}
```

You can now easily access these values in your code using dot notation:
```swift
YourTweakPrefs.enabled
YourTweakPrefs.color
YourTweakPrefs.size
YourTweakPrefs.text
```

### Extra Utilities

NomaePreferences also has some extra utilities.

- Respring by calling: `respring()`
- SBReload by calling: `sbreload()`
- You can also run yout own shell commands, see this [page](https://github.com/EamonTracey/NomaePreferences/wiki/shell(_:args:)) for more info.

## Tweak Examples
[ColorfulLines](https://github.com/EamonTracey/ColorfulLines) by Eamon Tracey

# Credits
#### Huge thank you to [Kabir](https://github.com/kabiroberai) for help debugging and fixing various Swift/Xcode problems.

[Colaski](https://github.com/colaski) for helping with the readme.
