# Types

  - [Preference](https://github.com/EamonTracey/NomaePreferences/wiki/Preference):
    A property wrapper type that reflects a value from `UserDefaults` and
    invalidates a view on a change in value in that user default.
  - [NomaePreferencesController](https://github.com/EamonTracey/NomaePreferences/wiki/NomaePreferencesController):
    A `PreferenceLoaderController` subclass that loads a SwiftUI `View`.
  - [PreferenceLoaderController](https://github.com/EamonTracey/NomaePreferences/wiki/PreferenceLoaderController):
    A view controller containing`PSViewController` methods that
    PreferenceLoader automatically calls.
  - [Application](https://github.com/EamonTracey/NomaePreferences/wiki/Application):
    A representation of an iOS application wrapped around `LSApplicationProxy`.
  - [Header](https://github.com/EamonTracey/NomaePreferences/wiki/Header):
    Header view to display a package name, an optional package icon, and an optional subtitle.
  - [DiscordLogo](https://github.com/EamonTracey/NomaePreferences/wiki/DiscordLogo):
    The Discord logo as a SwiftUI `Shape`.
  - [GitHubLogo](https://github.com/EamonTracey/NomaePreferences/wiki/GitHubLogo):
    The GitHub logo as a SwiftUI `Shape`.
  - [RedditLogo](https://github.com/EamonTracey/NomaePreferences/wiki/RedditLogo):
    The Reddit logo as a SwiftUI `Shape`.
  - [TwitterLogo](https://github.com/EamonTracey/NomaePreferences/wiki/TwitterLogo):
    The Twitter logo as a SwiftUI `Shape`.

# Global Functions

  - [respring()](https://github.com/EamonTracey/NomaePreferences/wiki/respring\(\)):
    Respring the device by sending SIGKILL to SpringBoard.
  - [sbreload()](https://github.com/EamonTracey/NomaePreferences/wiki/sbreload\(\)):
    Respring the device by running sbreload.
  - [shell(\_:​args:​)](https://github.com/EamonTracey/NomaePreferences/wiki/shell\(_:args:\)):
    Perform a shell command.
