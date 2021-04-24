# Types

  - [Preference](/Preference):
    A property wrapper type that reflects a value from `UserDefaults` and
    invalidates a view on a change in value in that user default.
  - [NomaePreferencesController](/NomaePreferencesController):
    A `PreferenceLoaderController` subclass that loads a SwiftUI `View`.
  - [PreferenceLoaderController](/PreferenceLoaderController):
    A view controller containing`PSViewController` methods that
    PreferenceLoader automatically calls.
  - [Application](/Application):
    A representation of an iOS application wrapped around `LSApplicationProxy`.
  - [Header](/Header):
    Header view to display a package name, an optional package icon, and an optional subtitle.
  - [DiscordLogo](/DiscordLogo):
    The Discord logo as a SwiftUI `Shape`.
  - [GitHubLogo](/GitHubLogo):
    The GitHub logo as a SwiftUI `Shape`.
  - [RedditLogo](/RedditLogo):
    The Reddit logo as a SwiftUI `Shape`.
  - [TwitterLogo](/TwitterLogo):
    The Twitter logo as a SwiftUI `Shape`.

# Global Functions

  - [respring()](/respring\(\)):
    Respring the device by sending SIGKILL to SpringBoard.
  - [sbreload()](/sbreload\(\)):
    Respring the device by running sbreload.
  - [shell(\_:​args:​)](/shell\(_:args:\)):
    Perform a shell command.
