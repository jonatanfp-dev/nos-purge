<div align="center">

# NOS Purge — Assetto Corsa

[![MIT License](https://img.shields.io/badge/Licencia-MIT-verde.svg)](LICENSE)

![Lua](https://img.shields.io/badge/lua-CSP-Script-2C2D72)

**Efectos realistas de partículas de humo NOS Purge para vehículos en Assetto Corsa.**

</div>


---

<p align="center">🌐 <strong>También disponible en:</strong> <a href="README.md">Inglés</a></p>

---
## Descripción

Este script de Lua añade efectos realistas de humo NOS Purge a tus vehículos en Assetto Corsa. Al activarse mediante el botón `ExtraE` en Content Manager, el script emite dos columnas de humo desde la parte trasera del vehículo, simulando un sistema de purga de nitro real.

Creado para usar con el sistema de partículas CSP (Custom Shaders Patch).

---

## Funcionalidades

- Humo NOS Purge realista con propiedades de partículas personalizables
- Instalación sencilla desde Content Manager
- Doble punto de emisión para un efecto más auténtico
- Parámetros ajustables: color, grosor, duración, tamaño, dispersión y velocidad
- Ligero — impacto mínimo en el rendimiento

---

## Requisitos

- Assetto Corsa
- Content Manager
- Custom Shaders Patch (CSP)

---

## Instalación

### 1. Añadir el Script

Copia `nos_purge.lua` a la carpeta `extension` de tu coche:

```
steamapps/common/assettocorsa/content/cars/[tu-coche]/extension/
```

### 2. Configurar `ext_config.ini`

Abre el archivo `ext_config.ini` en la misma carpeta y añade al final:

```ini
[SCRIPT_0]
SCRIPT=nos_purge.lua
SKIP_FRAMES=0
ACTIVE_FOR_NEAREST=4
ACTIVE_FOR_UNFOCUSED=1
```

### 3. Activar en Content Manager

Abre Content Manager y asegúrate de que la opción `ExtraE` está activada para que el script funcione.

---

## Uso

Una vez instalado y configurado, el humo NOS Purge se activa automáticamente al pulsar el botón `ExtraE` mientras conduces.

---

## Personalización

Puedes ajustar las propiedades de las partículas en `nos_purge.lua`:

| Propiedad | Descripción | Valor por defecto |
|---|---|---|
| `color` | Color y transparencia del humo | blanco / 0.1 alpha |
| `thickness` | Densidad del humo | 1 |
| `life` | Duración de las partículas | 1 |
| `size` | Tamaño de las partículas | 0.001 |
| `spreadK` | Coeficiente de dispersión | 1 |
| `growK` | Coeficiente de crecimiento | 2 |
| `targetYVelocity` | Velocidad vertical | 15 |

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
