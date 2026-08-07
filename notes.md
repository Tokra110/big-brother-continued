# Development notes

## 2026-08-07

- Started the public Factorio 2.1 continuation from kubiix's 2.0 WIP port of Afforess's Big Brother.
- Selected the unique Mod Portal identifier `big-brother-continued` because `big-brother` is owned by the previous porter.
- Required compatibility path: users disable `big-brother`, enable `big-brother-continued`, and retain placed entities and researched technologies.
- Added Factorio 2.1 runtime fixes, full attribution, combined licence notices, portal copy, and a reproducible ZIP builder.
- The old-to-new identifier handover test passed on Factorio 2.1.14: research,
  upgraded radar, surveillance center, big electric pole, and pole camera survived;
  the migrated factory then saved, reloaded, and passed runtime assertions again.
- A copy of David's `Space I guess.zip` also loaded with the full current mod set
  after replacing `big-brother` with `big-brother-continued`.
- Published the source repository at
  `https://github.com/Tokra110/big-brother-continued` and the verified 2.1.0
  archive as GitHub release `v2.1.0`.
- The final Mod Portal entry remains pending David's logged-in submission.
