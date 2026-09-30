# Blood Cathedral — Game Design Breakdown

## Design Pillars

**Readable stealth. Meaningful mobility. Compact progression.**

Blood Cathedral is designed around a small number of systems that interact clearly rather than a large number of disconnected mechanics.

## Core Player Loop

**Observe → Choose a route → Distract / evade → Move through danger → Unlock progress → Reach safety / checkpoint**

The player should be able to understand why they were detected, what tools are available, and what changed after each objective.

## Stealth Readability

The Warden uses a state-based behaviour flow:

**Patrol → Investigate → Chase → Search → Return**

The goal is to make enemy behaviour understandable enough that the player can plan around it.

The detection meter and line-of-sight feedback are not only UI elements; they are part of the decision-making loop.

## Player Options

The current prototype gives the player several different movement / stealth tools:

- crouch for lower-profile movement;
- sprint for emergency repositioning;
- Blood Dash for fast traversal / escape;
- Blood Lure for distraction and route creation.

The design goal is to avoid a single correct solution.

## Progression

The level flow combines:

- interactable world objects;
- pickups and keys;
- locked doors;
- objectives;
- save/checkpoint restoration.

These systems are intended to make progression explicit while preserving exploration.

## Current Design Questions

The current prototype is used to answer concrete design questions:

1. Is detection readable before the player is fully caught?
2. Does Blood Lure create a meaningful alternative to simply running past enemies?
3. Is Blood Dash useful without removing too much tension?
4. Do objective updates clearly communicate where progression changed?
5. Do Patrol / Search states create enough uncertainty without feeling random?

## Iteration Plan

Before expanding the project, I would:

- tune detection speed and search duration;
- test ability cooldowns and movement distances;
- compare safe and risky routes through the first playable area;
- observe where players misunderstand objectives;
- adjust encounter spacing before adding more enemies;
- finish one polished vertical slice before increasing scope.

## My Role

- game design and gameplay prototyping;
- stealth and enemy-state design;
- player movement / ability design;
- progression and objective flow;
- C++ implementation;
- UI feedback;
- level-flow iteration;
- debugging and playtesting.

## Portfolio Links

- [GitHub profile](https://github.com/milenastrahova)
- [ArtStation](https://www.artstation.com/milenastrahova)
