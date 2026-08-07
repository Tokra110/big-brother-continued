# Big Brother Continued

Research radar upgrades in amplification, efficiency, and surveillance capabilities. Create the ultimate surveillance state.

This is the Factorio 2.1 continuation of **Big Brother** by Afforess and **Big Brother 2.0 WIP** by kubiix.

## New technologies

### Radar efficiency, levels 1 to 9

Increases the speed at which radars scan distant sectors.

### Radar amplification, levels 1 to 9

- Increases the radius of nearby revealed sectors by 2 with each upgrade.
- Increases the distant scanning radius by 3 with each upgrade.
- Increases radar power requirements by 75 kW per level.

### Surveillance 1

Unlocks the Surveillance Center. A powered center keeps vehicles and trains visible on the map.

### Surveillance 2

Automatically equips big electric poles with surveillance coverage, keeping their surroundings visible on the map.

## Continuing a factory from the 2.0 WIP

1. Disable `big-brother`.
2. Enable `big-brother-continued`.
3. Load the factory and save it under a new name.

Existing entities and researched technologies are retained, and runtime tracking is rebuilt automatically. Do not enable both mods together.

## Factorio 2.1 fixes

- Fixed save failures caused by non-serializable scheduled callbacks.
- Fixed surveillance code writing a property that became read-only in Factorio 2.1.
- Rebuilt tracking for existing entities after switching mods or changing configuration.
- Preserved radar health and quality while applying research upgrades.
- Replaced invisible blueprint proxy radars with normal radar-item placement.
- Added support for script-created and script-destroyed entities.
- Repaired German text encoding and restored the French locale.

## Credits

Created by Afforess. Continued through contributions from pw_sys, Dominic Scheirlinck, kryshnar, sign-out, Cameron McAvoy, Rseding91, umbrios, kubiix, and Tokra110. See the source repository for complete attribution and licence notices.
