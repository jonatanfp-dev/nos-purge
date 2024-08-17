# Instalación y Configuración del Script de Partículas

## Descripción

Este script añade efectos de partículas de humo a tu vehículo en el juego. El script ha sido creado por @jonatanfp_.

## Instalación

1. **Añadir el Script:**
   - Copia el archivo `nos_purge.lua` y pégalo en la carpeta `extension` de tu proyecto. La ruta exacta puede variar dependiendo de tu configuración, pero suele ser algo como `steamapps\common\assettocorsa\content\cars\jfp_vw_golf_mk4_r32\extension`.

2. **Configurar el Script en el Archivo de Configuración:**
   - Abre el archivo `ext_config.ini` que se encuentra en la misma carpeta que tu script.
   - Añade la siguiente configuración al final del archivo:
     ```ini
     [SCRIPT_0]
     SCRIPT=nos_purge.lua
     SKIP_FRAMES=0
     ACTIVE_FOR_NEAREST=4
     ACTIVE_FOR_UNFOCUSED=1
     ```

3. **Activar el Script:**
   - El script se activa utilizando la opción `ExtraE` en Content Manager.

## Código del Script

El script `nos_purge.lua` contiene el siguiente código:

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

## Explicación del Código

- **Propiedades del Humo:**
  - `color`: Color y transparencia del humo.
  - `colorConsistency`: Consistencia del color.
  - `thickness`: Grosor del humo.
  - `life`: Duración del humo.
  - `size`: Tamaño de las partículas de humo.
  - `spreadK`: Coeficiente de dispersión.
  - `growK`: Coeficiente de crecimiento.
  - `targetYVelocity`: Velocidad vertical objetivo.

- **Función `script.update(dt)`:**
  - El humo se emite cuando `car.extraE` está activado.

## Activación en Content Manager

- Abre Content Manager y asegúrate de que `ExtraE` está activado para que el script funcione.