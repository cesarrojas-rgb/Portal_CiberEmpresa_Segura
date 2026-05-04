# 🛡️ Portal CiberSafe Enterprise

Este proyecto fue desarrollado para la materia **"Administración de la Seguridad Informática"**. Consiste en una plataforma educativa y de gestión orientada a fortalecer la cultura de prevención y ciberseguridad a nivel empresarial.

---

## 📄 Fase I. Inicio

### 1.1 Introducción - Problemática
En la actualidad, las empresas no solo sufren ataques por falta de software especializado, sino por el "eslabón más débil": el personal. Muchos colaboradores desconocen cómo crear una contraseña segura o identificar amenazas básicas. 
**Problema:** Existe una brecha de conocimiento técnico que pone en riesgo la integridad de los datos organizacionales. Este portal busca cerrar esa brecha mediante herramientas prácticas.

### 1.2 Objetivo General
Desarrollar una plataforma web interactiva en **Java** y **MySQL** que funcione como un centro de capacitación en ciberseguridad, proporcionando herramientas técnicas para fortalecer la prevención empresarial.

### 1.3 Alcance
El proyecto abarca el diseño de base de datos de usuarios, implementación de módulos de criptografía, simulaciones de seguridad (MSAT), evaluación de contraseñas y publicación segura del sitio.

---

## 🗺️ Fase II. Planeación

### 2.1 Carta de Inicio de Proyecto
* **Nombre:** Portal "CiberEmpresa Segura".
* **Recursos:** Java JDK 1.8, MySQL, Apache Tomcat 8.2.

### 2.2 Plan de comunicación y 2.3 Interesados
Se definió el uso de **GitHub** para el control de versiones y **Jira Software** para la gestión de tareas. Los interesados incluyen al Administrador de TI (desarrollador), Empleados (usuarios finales) y el Docente (auditor de seguridad).

### 2.4 Costos y 2.5 Riesgos
* **Costos:** $0 (Implementación basada en software libre y herramientas LDS).
* **Riesgos:** Pérdida de código (mitigado con este repositorio) y ataques por inyección (mitigado con WAF).

---

## 🚀 Fase III. Ejecución y Control

### 3.1.2 Niveles de Contraseñas
Implementación de lógica de validación de robustez:
- **Bajo:** Menos de 6 caracteres.
- **Medio:** 8 caracteres con números.
- **Alto:** Incluye mayúsculas, números y símbolos (Cumple normatividad empresarial).

### 3.1.3 y 3.1.4 Criptografía y Esteganografía
Se han incluido evidencias de ocultamiento de información confidencial en la carpeta raíz:
- `original.bmp`: Imagen base.
- `secreto.bmp`: Imagen con el archivo `reporte_vulnerabilidades.txt` oculto mediante **S-Tools**.
- **Criptografía:** Módulo de cifrado César para reportes de incidentes.

### 3.3.1 Túnel seguro con Ngrok
Publicación segura mediante túnel SSL para acceso remoto, garantizando la confidencialidad de los datos en tránsito.

### 3.3.2 Seguridad Web (WAF)
Protección activa contra ataques de **Inyección SQL** (mediante PreparedStatements) y **XSS** (mediante sanitización de inputs).

---

## 🛠️ Tecnologías y Gestión
- **IDE:** NetBeans 8.2
- **Base de Datos:** MySQL (XAMPP)
- **Gestión:** [Jira Software] (Ver tablero Kanban de actividades)
