# Blood Cathedral

**Blood Cathedral** is a third-person gothic stealth/action game prototype built in **Unreal Engine 5.8**, centered on stealth readability, player choice, enemy awareness, progression and compact level flow.

The project is being developed as a complete playable portfolio piece: a compact cathedral/crypt level where exploration, stealth, distraction abilities, enemy awareness and progression are designed to work as one coherent player experience.

## Quick Review

**Role:** Solo game designer / developer  
**Engine:** Unreal Engine 5.8  
**Primary focus:** Stealth readability, enemy-state design, player mobility, progression and level flow  
**Current state:** Playable prototype baseline  
**Best recruiter entry point:** [Game Design Breakdown](GAME_DESIGN.md)

### Portfolio navigation

- [Ashen Keep](https://github.com/milenastrahova/AshenKeep) — complete gameplay vertical slice
- **Blood Cathedral** — stealth/action design prototype
- [CyberCorp HQ](https://github.com/milenastrahova/CyberCorp-HQ-Technical-Art) — interaction, objective flow and technical art
- [ArtStation](https://www.artstation.com/milenastrahova) — visual portfolio

## Game Design Breakdown

A focused breakdown of the stealth loop, player choices, design questions and iteration plan is available in [GAME_DESIGN.md](GAME_DESIGN.md).

## Game Design Goals

- Make enemy awareness easy to read through line-of-sight and detection feedback
- Give the player more than one solution through crouch, sprint, Blood Dash and Blood Lure
- Build a compact level loop around exploration, keys, locked spaces, checkpoints and objectives
- Create tension through Patrol → Investigate → Chase → Search → Return AI states
- Keep progression understandable through HUD feedback and clear objective updates

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

## Player Experience & Iteration

The prototype is structured around a simple decision loop: **observe → distract or evade → move through danger → unlock progress → recover at checkpoints**. The current milestone is used to test whether stealth states, detection feedback and traversal abilities are understandable before adding the full combat and art pass.

Current iteration priorities:

- tune detection speed and search duration;
- test whether Blood Lure creates meaningful alternate routes;
- balance sprint/Blood Dash so mobility helps without removing tension;
- refine objective and stealth feedback based on playtesting;
- complete the first playable level before expanding content.

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


## My Role

Game design, gameplay prototyping, encounter/stealth-system design, C++ implementation, UI feedback, level-flow iteration, debugging and playtesting.
