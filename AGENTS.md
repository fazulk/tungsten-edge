# Repository instructions

## Fork builds and updates

Build, install, and relaunch this fork from the repository root with:

```sh
./Scripts/install_fork.sh
```

- The installed app is `/Applications/Tungsten Edge Fork.app`, with bundle ID `com.fazulk.tungstenedge.fork`.
- Use the existing signing identity `Developer ID Application: Jeff Fasulkey (RYGJM936NT)`. Keep the signing identity and bundle ID stable across updates so macOS can retain permissions.
- Never fall back to ad-hoc signing or replace the signing identity when a certificate lookup fails. Sandboxed lookups can hide the existing certificate; retry with normal Keychain access. The installer deliberately stops if its configured identity is unavailable.
- Use the fork installer for normal rebuilds and updates. Running `install_local_release.sh` directly with its defaults targets the upstream app instead. Preserve `/Applications/Tungsten Edge.app` unless explicitly asked to change it.
- The built-in updater checks upstream releases; it is not the update path for this local fork.
- Keep the About pane's `Tungsten Edge Fork` label visible in fork builds.
