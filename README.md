# Big Brother Continued

Big Brother Continued brings the classic research-driven radar and surveillance mod to Factorio 2.1.

## Features

### Radar amplification

Nine research levels progressively increase radar coverage:

- Nearby revealed-sector radius increases by 2 per level.
- Distant scanning radius increases by 3 per level.
- Each level increases radar power demand by 75 kW.

### Radar efficiency

Nine research levels make radars scan distant sectors progressively faster.

### Surveillance

- Surveillance centers keep vehicles and trains visible on the map.
- Surveillance level 2 adds automatic map coverage around big electric poles.

## Continuing a Factorio 2.0 factory

This continuation uses a new Mod Portal identifier because the previous `big-brother` entry has a different owner. Existing factories remain supported:

1. Disable `big-brother`.
2. Enable `big-brother-continued`.
3. Load the factory and save it under a new name the first time.

The continuation retains the existing entity, item, recipe, and technology prototype names. It rebuilds runtime tracking from the factory on first load. Do not enable both mods together because they provide the same prototypes.

## History and attribution

This project continues:

- [Big Brother](https://mods.factorio.com/mod/Big_Brother), created by Afforess
- [Big Brother 2.0 WIP](https://mods.factorio.com/mod/big-brother), ported by kubiix

All known contributors are listed in [CONTRIBUTORS.md](CONTRIBUTORS.md). Original and continuation licence notices are retained in [LICENSE](LICENSE), with bundled-library notices in [THIRD_PARTY_LICENSES.md](THIRD_PARTY_LICENSES.md).

## Building

Run `./scripts/build.sh`. The portal-ready archive is written to `dist/`.
