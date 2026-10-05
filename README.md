# Homebrew tap for Rein

[Rein](https://undercoverzest.app/rein/) is one menu-bar panel for the controls macOS hides:
keep-awake, fans, charge limit, per-app audio, displays, casting and a phone remote.
Apple Silicon, macOS 14 or later. Every copy starts with a 7-day trial of every feature.

```sh
brew install --cask lukedavid2/rein/rein
```

Rein updates itself (the same signed, notarised builds as the website), so `brew upgrade` is
optional. To remove it completely, first open Rein and choose Settings > Remove helper, turn off any
virtual audio devices, then:

```sh
brew uninstall --zap --cask rein
```

What Rein touches, and how to check it: https://undercoverzest.app/rein/trust.html
