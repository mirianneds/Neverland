# Informe Técnico de Entorno de Ejecución
## Neverland - Portal Web Corporativo

---

> **Nota:** La aplicación de gestión en Java con conexión JDBC no ha sido desarrollada. Este informe describe el entorno técnico del portal web del proyecto.

---

## 1. Tipo de sistema

El proyecto se ejecuta en un **PC de usuario** estandar. Al tratarse de una web estatica (HTML + CSS) con una base de datos local gestionada desde phpMyAdmin, no se requiere servidor dedicado ni maquina virtual.

---

## 2. Requisitos de hardware

| Componente | Minimo | Recomendado |
|---|---|---|
| CPU | Dual-core 1.8 GHz | Quad-core 2.5 GHz |
| RAM | 4 GB | 8 GB |
| Almacenamiento | 1 GB libres | 5 GB libres |

---

## 3. Sistema operativo recomendado

**Windows 10 / 11 (64 bits)**

Es el sistema utilizado durante el desarrollo. Las herramientas empleadas (XAMPP, Visual Studio Code, phpMyAdmin) tienen soporte completo en Windows. Tambien es compatible con Ubuntu 22.04 LTS o macOS.

---

## 4. Instalacion del entorno

### Paso 1 - Clonar el repositorio
Descargar o clonar el repositorio desde GitHub:

```
git clone https://github.com/mirianneds/Neverland.git
```

O descargarlo como ZIP desde GitHub y extraerlo en local.

### Paso 2 - Instalar XAMPP
Descargar XAMPP desde [https://www.apachefriends.org](https://www.apachefriends.org) e instalarlo. Incluye Apache, MySQL y phpMyAdmin.

### Paso 3 - Iniciar los servicios
Abrir el panel de control de XAMPP y arrancar los modulos **Apache** y **MySQL**.

### Paso 4 - Importar la base de datos
1. Acceder a `http://localhost/phpmyadmin`.
2. Crear una base de datos llamada `neverland`.
3. Ir a **Importar** y seleccionar el archivo `Datos_BBDD_Neverland.sql` de la carpeta `/Bases_de_Datos/sql/` del repositorio.

### Paso 5 - Visualizar la web
Abrir la carpeta `Lenguaje_de_Marcas/Web/` del repositorio descargado y abrir `index.html` en el navegador, o usar Visual Studio Code con la extension **Live Server** haciendo clic derecho sobre `index.html` y seleccionando "Open with Live Server".

> La web y la base de datos son independientes en este proyecto. La base de datos se gestiona unicamente desde phpMyAdmin.

---

## 5. Usuarios, permisos y estructura

| Usuario | Herramienta | Permisos |
|---|---|---|
| root | phpMyAdmin / MySQL | Acceso total a la base de datos local |

Las copias de seguridad se realizan exportando la base de datos desde phpMyAdmin en formato SQL.

---

## 6. Mantenimiento basico

- Actualizar XAMPP cuando haya nuevas versiones estables.
- Exportar la base de datos desde phpMyAdmin periodicamente como copia de seguridad.
- Si Apache o MySQL no arrancan, verificar que los puertos 80 y 3306 no esten en uso por otro proceso. Los logs de error son accesibles desde el panel de XAMPP.

---

## 7. Evidencias

Las capturas de funcionamiento se encuentran en `/Sistemas_Informaticos/capturas/` e incluyen el panel de XAMPP activo, la base de datos en phpMyAdmin y la web visualizada en el navegador.

*Informe elaborado como parte del Proyecto Intermodular de 1º de DAW — Prometeo by The Power por alumna Mirianne Dos Santos Martins*