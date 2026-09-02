# Blood Cathedral

**Blood Cathedral** is a small third-person gothic stealth/action game prototype built in **Unreal Engine 5.8** with gameplay systems implemented primarily in **C++**.

The project is being developed as a complete playable portfolio piece: a compact cathedral/crypt level, exploration, interaction, stealth, combat, progression, save/checkpoints, UI, custom 3D assets and a polished packaged build.

## Current milestone — v0.5 Prototype Baseline

Implemented systems:

- C++ interaction system for world objects
- pickup + inventory/key flow
- locked/openable doors
- objective progression
- health/damage
- save game + checkpoint restore
- Warden enemy prototype
- AI states: Patrol → Investigate → Chase → Search → Return
- line-of-sight awareness
- detection/stealth meter
- crouch
- sprint
- Blood Dash
- Blood Lure distraction
- runtime prototype chamber/crypt generation
- HUD for health, objective, interaction and stealth feedback

## Current controls

| Action | Input |
|---|---|
| Move | WASD |
| Look | Mouse |
| Interact | E |
| Sprint | Shift |
| Crouch | C |
| Blood Lure | Q |
| Blood Dash | Left Ctrl |
| Restore checkpoint | F9 |

## Project architecture

Important gameplay code lives under:

```text
Source/BloodCathedral/
├── Gameplay/
│   ├── AI/
│   ├── Health/
│   ├── Interaction/
│   ├── Inventory/
│   ├── Objectives/
│   ├── Progress/
│   ├── Stealth/
│   └── World/
└── UI/
```

The prototype deliberately keeps core gameplay logic in C++ while allowing presentation, assets and tuning to remain Unreal-friendly.

## Roadmap

Next milestones:

- **v0.6** — combat: player attack, enemy health, hit/stun/death, blood ability
- **v0.7** — complete first playable level flow, puzzle/progression, ending encounter
- **Art Pass** — custom modular gothic architecture and props from Blender
- **UI Pass** — custom gothic HUD, menus, icons, interaction and objective presentation
- **Polish** — animation, VFX, lighting, sound, optimization and bug fixing
- **v1.0** — packaged build, gameplay trailer, screenshots and technical breakdown

## Engine

- Unreal Engine 5.8
- C++
- Enhanced Input
- UMG/Slate HUD
- Git + Git LFS

## Repository note

Unreal `.uasset` and `.umap` files are stored through **Git LFS**. Generated Unreal folders such as `Binaries`, `Intermediate`, `Saved` and `DerivedDataCache` are intentionally excluded from version control.
