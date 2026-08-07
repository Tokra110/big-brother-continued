# Big Brother Continued

Factorio 2.1 continuation of the Big Brother radar and surveillance mod.

## Commands

- Build: `./scripts/build.sh`
- Check archive: `unzip -t dist/big-brother-continued_2.1.0.zip`
- Runtime verification uses the locally installed Factorio 2.1 binary and disposable saves under `/tmp`.

## Compatibility rule

Factories must be able to migrate by disabling `big-brother` and enabling `big-brother-continued`. Preserve all existing prototype names. Only the mod identifier and asset namespace use `big-brother-continued`.

## Release rule

Do not publish a release unless the old-to-new identifier handover test passes through load, save, reload, and runtime assertions.
