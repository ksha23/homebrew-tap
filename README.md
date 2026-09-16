# ksha23/homebrew-tap

Homebrew tap for my own apps.

## Preroll

Cuts macOS AirPlay output latency from about 2 s to about 350 ms, from a menu
bar app. Source: [ksha23/preroll](https://github.com/ksha23/preroll).

```sh
brew install --cask ksha23/tap/preroll
```

The app is not notarized yet, so macOS refuses the first launch: open System
Settings > Privacy & Security and press Open Anyway. Homebrew dropped its
`--no-quarantine` option in version 5, so there is no way around that from the
command line. Building from source avoids it entirely.
