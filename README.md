# homebrew-kaho

Homebrew tap for [Kaho](https://kaho.utsava.xyz) — local voice dictation for macOS. Hold a key, speak, release.

## Install

```sh
brew install --cask utsavanand/kaho/kaho
```

That one command adds the tap and installs `Kaho.app` into `/Applications`.

If you'd rather add the tap first:

```sh
brew tap utsavanand/kaho
brew install --cask kaho
```

## Upgrade

```sh
brew upgrade --cask kaho
```

## Uninstall

```sh
brew uninstall --cask kaho
```

To also remove `~/Library/Application Support/Kaho` and `~/Library/Logs/Kaho.log`:

```sh
brew uninstall --zap --cask kaho
```

## Requirements

- macOS 14 (Sonoma) or later
- Apple Silicon

The DMG is signed and notarized with a Developer ID, so Gatekeeper opens it without extra steps.

## Source

Kaho itself lives at [utsavanand/kaho](https://github.com/utsavanand/kaho). This repo only holds the cask.
