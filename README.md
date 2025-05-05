<p align='center'>
  <img width='200' heigth='225' src='https://user-images.githubusercontent.com/62605744/171186764-43f7aae0-81a9-4b6e-b4ce-af963564eafb.png'>
</p>

# 🎓 Sistema de Gestión de Cursos - Universidad del Valle 🏫

## 📋 Información del Proyecto 📑

**🏛️ Universidad:** Universidad del Valle - Escuela de Ingeniería de Sistemas y Computación (EISC)  
**📚 Asignatura:** Programación Interactiva  
**🗓️ Periodo:** 2021-I

## 👥 Autores 👨‍💻

- **Carlos Andrés Cáceres** - 🆔 202126639 - ✉️ [carlos.caceres@correounivalle.edu.co](mailto:carlos.caceres@correounivalle.edu.co)
- **Diego Fernando Victoria** - 🆔 201941366 - ✉️ [diego.victoria@correounivalle.edu.co](mailto:diego.victoria@correounivalle.edu.co)

## 🔍 Descripción del Proyecto 📝

Este sistema permite la gestión de matrículas y cancelaciones de asignaturas para estudiantes de la EISC. La aplicación implementa una arquitectura cliente-servidor donde los estudiantes (clientes) pueden conectarse simultáneamente para gestionar sus asignaturas académicas en tiempo real. 🔄

## 🛠️ Tecnologías Utilizadas 💻

- **💻 Lenguaje:** Java ☕
- **🗃️ Base de Datos:** PostgreSQL 🐘
- **🔄 Comunicación:** Sockets para la conexión cliente-servidor 🔌
- **📊 GUI:** Java Swing para interfaces gráficas 🖥️

## ✨ Características Principales 🌟

- ✅ Autenticación de estudiantes mediante código estudiantil 🔐
- 📝 Consulta de información académica del estudiante 🔍
- ➕ Matrícula de asignaturas disponibles 📋
- ➖ Cancelación de asignaturas matriculadas ❌
- 📊 Visualización de créditos académicos actuales 📈
- 🔢 Control automático de cupos disponibles 👥
- 📄 Registro de operaciones en archivos de texto 📊
- 🔄 Soporte para múltiples conexiones simultáneas 👨‍👩‍👧‍👦

## 🗃️ Estructura de la Base de Datos 🧩

El sistema utiliza una base de datos PostgreSQL con las siguientes tablas:
- **👨‍🎓 estudiantes:** Almacena información de los estudiantes (código, nombre, programa, créditos)
- **📚 asignaturas:** Contiene los cursos disponibles (código, nombre, créditos, cupos)
- **📝 matriculas:** Relaciona estudiantes con las asignaturas matriculadas

## 🏗️ Arquitectura del Sistema 🔨

El proyecto está dividido en dos componentes principales:

### 📱 Cliente 👤
- 🖥️ Interfaz gráfica para estudiantes (Login y Gestión de Matrícula)
- 🔄 Comunicación con el servidor mediante sockets
- 📊 Visualización de información académica y asignaturas

### ⚙️ Servidor 🖧
- 🔄 Gestión de conexiones de clientes
- 💾 Procesamiento de solicitudes
- 🗃️ Comunicación con la base de datos
- 📝 Registro de operaciones del sistema

## 🚀 Instrucciones de Uso ⚡

### 📋 Requisitos Previos
- ☕ Java JDK 8 o superior
- 🐘 PostgreSQL 12 o superior
- 📄 Ejecutar el script SQL para crear la base de datos (`SIRABD.sql`)

### 🖥️ Ejecución del Servidor
1. ⚙️ Configurar los parámetros de conexión a la base de datos en `BD.java`
2. 🔨 Compilar y ejecutar la clase `Lanzador.java` en el módulo Servidor

### 📱 Ejecución del Cliente
1. 🔄 Una vez que el servidor esté en ejecución, compilar y ejecutar la clase `Login.java` en el módulo Cliente
2. 👤 Ingresar con el código de estudiante
3. 📝 Realizar la gestión de asignaturas (matricular/cancelar)

## 📋 Funcionalidades Detalladas 🔎

- 🔍 **Consulta de Información:** Visualización de datos del estudiante (código, nombre, programa, créditos)
- ➕ **Matrícula de Asignaturas:** Selección y matrícula de cursos disponibles
- ➖ **Cancelación de Asignaturas:** Eliminación de asignaturas previamente matriculadas
- ⚖️ **Validación de Créditos:** Control automático de límites de créditos por estudiante
- 👥 **Control de Cupos:** Verificación y actualización de cupos disponibles por asignatura
- 📊 **Registro de Operaciones:** Almacenamiento de las acciones realizadas para auditoría

## 🔧 Aspectos Técnicos ⚙️

- 🧵 **Multithreading:** Soporte para múltiples conexiones simultáneas
- 💾 **Persistencia:** Almacenamiento seguro en base de datos y archivos
- 🔄 **Comunicación:** Protocolo personalizado para intercambio de mensajes cliente-servidor
- 🖥️ **Interfaz Gráfica:** Diseño intuitivo con Java Swing
- 🔒 **Seguridad:** Validación de entradas y control de excepciones

## 📄 Licencia 📜

Este proyecto fue desarrollado con fines académicos como proyecto final del curso de Programación Interactiva en la Universidad del Valle. ©️ 2021
