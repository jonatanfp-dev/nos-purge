# Particle Script Installation and Configuration

## Description

This script adds smoke particle effects to your vehicle in the game. The script was created by @jonatanfp_.

## Installation

1. **Add the Script:**
   - Copy the `nos_purge.lua` file and place it in the `extension` folder of your project. The exact path may vary depending on your setup, but it is typically something like `steamapps\common\assettocorsa\content\cars\jfp_vw_golf_mk4_r32/extension`.

2. **Configure the Script in the Configuration File:**
   - Open the `ext_config.ini` file located in the same folder as your script.
   - Add the following configuration to the end of the file:
     ```ini
     [SCRIPT_0]
     SCRIPT=nos_purge.lua
     SKIP_FRAMES=0
     ACTIVE_FOR_NEAREST=4
     ACTIVE_FOR_UNFOCUSED=1
     ```

3. **Activate the Script:**
   - The script is activated using the `ExtraE` option in Content Manager.

## Script Code

The `nos_purge.lua` script contains the following code:

```lua
-----------------------------------
-- script created by @jonatanfp_ --
-----------------------------------

local properties = {
    color = rgbm(255, 255, 255, 0.1),
    colorConsistency = 0.5,
    thickness = 1,
    life = 1,
    size = 0.001,
    spreadK = 1,
    growK = 2,
    targetYVelocity = 15
}

local smoke = ac.Particles.Smoke(properties)

function script.update(dt)
    if car.extraE == true then
        smoke:emit(vec3(-0.68, 0.95, 0.7), vec3(-6, 6, 3), 2)
        smoke:emit(vec3(0.68, 0.95, 0.7), vec3(6, 6, -3), 2)
    end
end
```

## Code Explanation

- **Smoke Properties:**
  - `color`: Color and transparency of the smoke.
  - `colorConsistency`: Consistency of the color.
  - `thickness`: Thickness of the smoke.
  - `life`: Duration of the smoke.
  - `size`: Size of the smoke particles.
  - `spreadK`: Spread coefficient.
  - `growK`: Growth coefficient.
  - `targetYVelocity`: Target vertical velocity.

- **Function `script.update(dt)`:**
  - Smoke is emitted when `car.extraE` is activated.

## Activation in Content Manager

- Open Content Manager and make sure `ExtraE` is activated for the script to function.
