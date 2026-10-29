# Homebrew Tap for Swamp

Official [Homebrew](https://brew.sh) tap for [swamp](https://github.com/swamp-club/swamp), the AI Native Automation CLI.

## Install

```bash
brew install swamp-club/tap/swamp
```

Using the fully qualified name taps `swamp-club/tap` and marks the `swamp` formula as trusted in one step. Homebrew 7 and later refuse to load formulae from third-party taps that haven't been trusted, so a plain `brew install swamp` after `brew tap swamp-club/tap` fails with `Refusing to load formula swamp-club/tap/swamp from untrusted tap`.

To trust the whole tap instead:

```bash
brew tap swamp-club/tap
brew trust swamp-club/tap
brew install swamp
```

## Upgrade

```bash
brew upgrade swamp
```

## How it works

This tap is updated automatically on every [swamp release](https://github.com/swamp-club/swamp/releases). Binaries are downloaded from `artifacts.swamp-club.com`.

## Supported platforms

| Platform | Architecture |
|----------|-------------|
| macOS | Apple Silicon (aarch64) |
| macOS | Intel (x86_64) |
| Linux | aarch64 |
| Linux | x86_64 |

## Alternative installation methods

- **Install script:** `curl -fsSL https://swamp-club.com/install.sh | sh`
- **Direct download:** [GitHub Releases](https://github.com/swamp-club/swamp/releases)
- **Built-in updater:** `swamp update`

## Links

- [swamp on GitHub](https://github.com/swamp-club/swamp)
- [swamp-club.com](https://swamp-club.com)
- [Discord](https://discord.gg/swamp-club)
