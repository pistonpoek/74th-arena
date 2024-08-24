74th Arena
=============================

 - [Overview](#overview)
 - [Terrain](#terrain)
 - [Features](#features)
 - [Controls](#controls)

-----------------------------

# Overview
This repository contains a Minecraft world that is inspired by the 74th Hunger Games arena. The world has custom developed data packs for extended vanilla functionallity, such as working tribute tubes, no GUI loot items and more.

# Terrain
The original [world](https://www.9minecraft.net/the-hunger-games-arena-map) makes up the exterior terrain for the arena, which was made by Flashness[^1]. I extended the world with the underground catacombs and launch rooms for tributes to enter the arena from.

![catacombs](images/catacombs.png)
*Hallway in the catacombs leading to the launch room of tribute 1*

![launch room](images/launch_room.png)
*Launch room with door looking at a table that has a tribute token item placed upon it*


# Features

## Launch
![tribute tube](images/tribute_tube.png)
*Entrance of the tribute tube viewed from within the launch room*

### Arena Elevator


## Start
![platforms](images/platforms.png)
*Platforms bend around the cornucopia center that has a countdown display upon it*

## Loot
Spread throughout the arena are loot items that can be picked up by players, as seen in the following image.

![cornucopia](images/cornucopia.png)
*Looking out from within the cornucopia to the loot items layed out on the ground before the platforms*

### Arena items
These items can be picked up by interacting with the entity. The default Minecraft control for interacting is right click. The functionality for the special items is found in the [arena item](#arena-item) data pack.

### Loot table
All items in the arena are picked based on the same loot table, which is stored in the [arena world](#arena-world) data pack. The items are placed at loot markers on the reset trigger.


## Reset
At any moment the arena can be reset to allow for a new match to ready itself. During the reset arena entities are removed, sweet berry bushes are grown to be pluckable and campfires are unlit.

> [!NOTE]
> Only sweet berry bushes and campfires that have a special marker placed at them are reset, see the [placing markers](#placing-markers) section for how to place these markers.

![campfire](images/campfire.png)
*Outer area of the arena with a campfire next to a creek*

# Data packs

## Arena action
The [arena action](world/datapacks/arena_action_v1.9) data pack manages player related functionality for the arena.

## Arena elevator
The [arena elevator](world/datapacks/arena_elevator_v1.13) data pack manages player related functionality for the arena.

## Arena item
The [arena item](world/datapacks/arena_item_v1.12) data pack manages player related functionality for the arena.

## Arena world
The [arena world](world/datapacks/arena_world_v1.13) data pack contains functionality for controlling the world for the arena.


# Controls
Various function of the [data packs](#data-packs) can be used to setup and manage the arena.

## Players
The [arena action](#arena-action) includes functions to manage players for the arena.

### Roles
In order to differentiate between players and moderators there are two roles. The tribute and gamemaker role can both be altered for a player by executing the [tribute add](#tribute-add-function), [tribute remove](#tribute-remove-function), [gamemaker add](#gamemaker-add-function) or [gamemaker remove](#gamemaker-remove-function) function.

#### [Tribute add function](world/datapacks/arena_action_v1.9/data/arena_action/function/tribute/add.mcfunction)
    \function arena_action:tribute\add

#### [Tribute remove function](world/datapacks/arena_action_v1.9/data/arena_action/function/tribute/remove.mcfunction)
    \function arena_action:tribute\remove

#### [Gamemaker add function](world/datapacks/arena_action_v1.9/data/arena_action/function/gamemaker/add.mcfunction)
    \function arena_action:gamemaker\add

#### [Gamemaker remove function](world/datapacks/arena_action_v1.9/data/arena_action/function/gamemaker/remove.mcfunction)
    \function arena_action:gamemaker\remove

### Sponsering
For making sponsering of players easier during a physical local server event some function are available. The [select function](#select-function) can be used to select the currently held item as the item to sponsor, which can be followed by the [receive function](#receive-function) to give the player executing the function the currently selected item. As a one command option the [give function](#give-function) allows a gamemaker to give the currently held item to the player with the specified name.

#### [Select function](world/datapacks/arena_action_v1.9/data/arena_action/function/sponsor/select.mcfunction)
    \function arena_action:sponsor\select

#### [Receive function](world/datapacks/arena_action_v1.9/data/arena_action/function/sponsor/receive.mcfunction)
    \function arena_action:sponsor\receive

#### [Give function](world/datapacks/arena_action_v1.9/data/arena_action/function/sponsor/give.mcfunction)
    \function arena_action:sponsor\give {name:%player_name%}

## Triggers
In order to ease the control of the arena the following triggers are made for gamemakers to use. The [arena action](#arena-action) will take care to update the state of the arena accordingly.

### Reset
Restores the arena to a 'clean' state that is prepared to be made ready for a game. An ideal state to adjust data before starting the game.

### Launch
Starts the arena by launching tributes inside a tribute tube into the arena. After the tributes have been lifted and the countdown finished the games have begun.

### Player
Starts the arena by teleporting tributes to the start position markers in the arena. Then a countdown starts, after which the games have begun.

### Finish
Announces the winner of the games by checking for alive tributes. Additionally the spectating tributes are teleported to spectate the victor.

## Placing world objects
Special objects can be placed in the arena using the [arena world](#arena-world) data pack. The objects, [`berry_bush`](world/datapacks/arena_world_v1.13/data/arena_world/function/berry_bush/make.mcfunction), [`campfire`](world/datapacks/arena_world_v1.13/data/arena_world/function/campfire/make.mcfunction), [`countdown`](world/datapacks/arena_world_v1.13/data/arena_world/function/countdown/make.mcfunction), [`elevator`](world/datapacks/arena_world_v1.13/data/arena_world/function/elevator/make.mcfunction), [`loot`]((world/datapacks/arena_world_v1.13/data/arena_world/function/loot/make.mcfunction)), [`start_position`](world/datapacks/arena_world_v1.13/data/arena_world/function/start_position/make.mcfunction) and [`token`](world/datapacks/arena_world_v1.13/data/arena_world/function/token/make.mcfunction) can be made using the following function by replacing the respective name.

#### Make function
    \function arena_world:[name]/make

Further more animal spawn location can be marked by using the following command for either a [`land`](world/datapacks/arena_world_v1.13/data/arena_world/function/animal/land.mcfunction) or [`water`]((world/datapacks/arena_world_v1.13/data/arena_world/function/animal/water.mcfunction)) spawn position.

#### Mark animal spawn location
    \function arena_world:animal/[land | water]
    
## Additional functions

Other functions that can be used from the [data packs](#data-packs) include a function to spawn an angry wolf as a threat to the players.

#### [Spawn threat function](world/datapacks/arena_world_v1.13/data/arena_world/function/threat/wolf/spawn.mcfunction)
    \function arena_world:threat\wolf\spawn


[^1]: I would be pleased to hear better references to the originial world author Flashness or the original upload for the world used.