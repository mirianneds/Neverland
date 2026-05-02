# Informe Técnico de Entorno de Ejecución
## Neverland — Sala de Fiestas Infantiles y Eventos

---

> **Nota:** La aplicación de gestión en Java con conexión JDBC no ha sido desarrollada. Este informe describe el entorno técnico del portal web del proyecto.

---

## 1. Tipo de sistema

La aplicación web de Neverland se ejecuta en un **PC de usuario local**. No se requiere acceso remoto ni disponibilidad 24/7, por lo que no es necesario invertir en servidores dedicados ni virtualización.

---

## 2. Requisitos de hardware

| Componente | Mínimo | Recomendado |
|---|---|---|
| CPU | Intel Core i3, 2.0 GHz | Intel Core i5, 2.5 GHz |
| RAM | 4 GB | 8 GB |
| Almacenamiento | 10 GB libres | 50 GB libres |
| Periféricos | Teclado, ratón, monitor | Teclado, ratón, monitor |

---

## 3. Sistema operativo recomendado

**Windows 11 Pro 64 bits**

Se elige Windows por ser el sistema más habitual en pequeños negocios en España, con instaladores sencillos para todas las herramientas necesarias y soporte activo hasta 2031. Como alternativa válida: **Ubuntu 22.04 LTS**, igualmente compatible y con soporte hasta 2027.

---

## 4. Instalación del entorno web

1. Instalar un navegador actualizado (Chrome, Firefox o Edge).
2. Clonar o descargar el repositorio desde GitHub. 
https://github.com/mirianneds/Neverland/tree/main/Lenguaje_de_Marcas/Web
3. Abrir el archivo `index.html` directamente en el navegador o usar la extensión **Live Server** de VS Code para visualizarlo con recarga automática.
4. No se requiere servidor ni configuración adicional al tratarse de un proyecto HTML y CSS estático.

---

## 5. Usuarios, permisos y estructura

| Usuario | Rol | Acceso |
|---|---|---|
| Administrador del equipo | Gestión del sistema | Control total |
| Usuario general | Uso de la web | Solo lectura/navegación |

**Estructura de carpetas del proyecto:**

```
NEVERLAND/
├── Bases_de_datos/
├── Itinerario_profesional_para_la_empleabilidad/
├── Lenguaje_De_Marcas/
│   ├── index.html
│   ├── tarifas.html
│   ├── reserva.html
│   ├── contacto.html
│   ├── styles.css
│   └── img/
├── Sistemas_informaticos/
│   └── Informe_técnico_Neverland.md
└── README.md
```

Los archivos del proyecto se almacenan en local y en el repositorio de GitHub como copia de seguridad principal.

---

## 6. Mantenimiento

| Tarea | Frecuencia |
|---|---|
| Actualizar Windows | Mensual |
| Actualizar el navegador | Automático |
| Hacer push al repositorio GitHub | Tras cada cambio |
| Revisar que los enlaces y formularios funcionan | Mensual |

Si la web deja de visualizarse correctamente, comprobar que el navegador está actualizado y que todos los archivos del proyecto están en la misma carpeta.

---

## 7. Evidencias

Capturas de funcionamiento:

- Página de inicio: 
![alt text](image.png)
![alt text](image-1.png)
![alt text](image-2.png)
![alt text](image-3.png)

- Página de tarifas:



- El portal web abierto en el navegador mostrando la página de inicio.
- La página de tarifas y el formulario de reserva funcionando correctamente.
- El repositorio de GitHub con la estructura de archivos del proyecto.

---

*Informe elaborado como parte del Proyecto Intermodular de 1º de DAW — Prometeo by The Power por alumna Mirianne Dos Santos Martins*