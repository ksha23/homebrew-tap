# ksha23/homebrew-tap

Homebrew tap for my own apps.

## Preroll

Cuts macOS AirPlay output latency from about 2 s to about 350 ms, from a menu
bar app. Source: [ksha23/preroll](https://github.com/ksha23/preroll).

```sh
brew install --cask --no-quarantine ksha23/tap/preroll
```

`--no-quarantine` is needed while the app is unsigned. Once it is notarized,
plain `brew install --cask ksha23/tap/preroll` is enough.
