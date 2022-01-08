<p align="center">
  <a href="" rel="noopener">
    <img src="banner.png" alt="Project logo">
  </a>
</p>

<div align="center">

  [![Status](https://img.shields.io/badge/status-active-success.svg)]()

</div>

---


## 📝 Table of Contents

- [About](#about)
- [Herramientas utilizadas](#herramientas)
- [Preparación del entorno y ejecución](#ejecucion)

#
## 🧐 About <a name = "about"></a>

En la actualidad en la mayoria de los sistemas software se es deseable contar con una forma de gestionar los usuarios, desde la creacion y actualización hasta la manipulacion de las sesiones. Sin contar que la gestion de la seguridad es un tema que va ligado de manera muy estrecha.
<br>
<br>
Como solución a este tarea repetitiva se ideo una arquitectura de sistema que permita gestionar usuarios y sesiones de una manera desacoplada del sistema origen. En este proyecto se otorga una herramienta a los desarrolladores para ayudar a la simplificacion de tareas como: generar nuevos usuarios, actualizacion de datos y generar los token de acceso con los permisos propios del usuario. 

#
## 🛠️ Herramientas utilizadas <a name = "herramientas"></a>
_Acontinuacion se listan las herramientas que se utilizaron para el desarrollo del proyecto._

* [Python 3.9.7](https://www.python.org/) - Lenguaje de programacion Python, en la version 3.9.7.
* [pipenv](https://pipenv-es.readthedocs.io/es/latest/) - Automáticamente crea y maneja un entorno virtual para tus proyectos, también como agregar/remover paquetes desde tu Pipfile como instalar/desisntalar paquetes. También genera el más importante Pipfile.lock, que es usado para producir determinado build.
* [SQL Server 2019](https://www.microsoft.com/es-mx/sql-server/sql-server-downloads) - Motor de base de datos SQL Server 2019, aunque la aplicacion real se realizara sobre la version 2016.
* Librerias utilizadas
    * [pyodbc](https://github.com/mkleehammer/pyodbc/wiki#table-of-contents) Libreria para gestionar la conexion con la base de datos. Permite executar consultas SQL.

#
## 🔧 Preparación del entorno y ejecución <a name = "ejecucion"></a>

Para generar una copia local del sistema ejecute el archivo `run.bat`. _(O bien, dar dobe clic en el archivo si el sistema operativo es Windows)_

```bash
  cmd "/C run.bat"
```

#
## 🔧 Proyectos  <a name = "ejecucion"></a>

Proyectos utilizados en el sistema
  
- [Python](https://github.com/Geronimo-montes/biometric-recognition.git) _: Modelo de reconoimiento facial mediante datos  biometricos_
- [NodeJs](https://github.com/Geronimo-montes/api-authentication.git) _: Backend del sistema, montado con ayuda de NodeJs_
- [Angular](https://github.com/Geronimo-montes/app-authentication.git) _: Pagina Web de gestion dde usuarios._