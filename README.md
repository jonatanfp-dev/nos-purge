<div align="center">

# NOS Purge — Assetto Corsa

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
![Lua](https://img.shields.io/badge/lua-CSP-Script-2C2D72)

**Realistic NOS purge smoke particle effects for Assetto Corsa vehicles.**

</div>

---

## Description

This Lua script adds realistic NOS purge smoke effects to your vehicles in Assetto Corsa. When activated via the `ExtraE` button in Content Manager, the script emits dual smoke trails from the rear of the vehicle, simulating a real nitrous purge system.

Created for use with CSP (Custom Shaders Patch) Particle FX system.

---

## Features

- Realistic NOS purge smoke with customizable particle properties
- Easy installation via Content Manager
- Dual smoke emission points for authentic NOS purge effect
- Adjustable parameters: color, thickness, life, size, spread, and velocity
- Lightweight — minimal performance impact

---

## Requirements

- Assetto Corsa
- Content Manager
- Custom Shaders Patch (CSP)

---

## Installation

### 1. Add the Script

Copy `nos_purge.lua` to the `extension` folder of your car:

```
steamapps/common/assettocorsa/content/cars/[your-car]/extension/
```

### 2. Configure `ext_config.ini`

Open the `ext_config.ini` file in the same folder and add at the end:

```ini
[SCRIPT_0]
SCRIPT=nos_purge.lua
SKIP_FRAMES=0
ACTIVE_FOR_NEAREST=4
ACTIVE_FOR_UNFOCUSED=1
```

### 3. Activate in Content Manager

Launch Content Manager and make sure the `ExtraE` option is enabled for the script to function.

---

## Usage

Once installed and configured, the NOS purge smoke activates automatically when you press the `ExtraE` button while driving.

---

## Customization

You can tweak the particle properties in `nos_purge.lua`:

| Property | Description | Default |
|---|---|---|
| `color` | Smoke color and transparency | white / 0.1 alpha |
| `thickness` | Smoke density | 1 |
| `life` | Particle duration | 1 |
| `size` | Particle size | 0.001 |
| `spreadK` | Spread coefficient | 1 |
| `growK` | Growth coefficient | 2 |
| `targetYVelocity` | Vertical velocity | 15 |

---

## Script

```lua
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
