# Unir bases de datos / Join tables
=================

## Español


El objetivo de este paquete es facilitar la unión de las bases de datos que conforman la Encuesta Nacional de Ocupación y Empleo  (ENOE) y los módulos anexos. La ventaja que ofrece este paquete es que está diseñado para detectar automáticamente la _llave_ de acuerdo a los criterios que maneja el  Instituto Nacional de Estadística y Geografía (INEGI).


#### Instalación

Para poder ejecutar este programa se requiere seguir los siguientes pasos:

+ Paso 1. Instalar la versión más reciente del paquete _devtools_

    ```
              install.packages("devtools")
    ```

+ Paso 2. Cargar el paquete _devtools_

    ```
              library(devtools)
    ```

+ Paso 3. Instalar el paquete **joinENOE**

    ```
              install_github("jcms2665/joinENOE")
    ```

**Nota**: Los usuarios de Windows necesitan instalar [Rtools](https://cran.r-project.org/bin/windows/Rtools/) para poder instalar  paquetes de Github.




#### Uso

Las bases de datos de la ENOE y de los módulos anexos a esta encuesta se pueden descargar de la página oficial del [INEGI](http://www.inegi.org.mx/est/contenidos/proyectos/encuestas/hogares/default.aspx). Una vez que se tienen las bases, hay que  determinar:

+ Tabla de referencia (*x*)
+ Tabla donde están las variables (*y*)
    + Variable o grupo de variables (*u*)

Con esta información, se puede correr el programa de la siguiente manera:

```
              joinENOE(x,y,u)
```

El resultado es una nueva base de datos que contiene todas las variables de *x* más las variables *u*



==============



## English


The aim of this program is to join tables from the National Survey of Occupation and Employment (ENOE in Spanish) as well as its modules. The advantage of this program is that it is designed to automatically detect the key according to the National Institute of Statistics and Geography's criteria.


#### Install

To install the package, it is necessary the following:

+ Step 1. Install he most recent version of _devtools_

    ```
              install.packages("devtools")
    ```

+ Paso 2. Load the  _devtools_ package

    ```
              library(devtools)
    ```

+ Paso 3. Install the package **joinENOE**

    ```
              install_github("jcms2665/joinENOE")
    ```

**Nota**: Windows users need  [Rtools](https://cran.r-project.org/bin/windows/Rtools/) to install from Github.




#### Usage


The databases can be downloaded from [INEGI](http://www.inegi.org.mx/est/contenidos/proyectos/encuestas/hogares/default.aspx). Afterwards, it is required to identify:

+ Reference database (*x*)
+ Origin database (*y*)
    + Variable or group of variables (*u*)

With this information, the package runs as follow:

```
              joinENOE(x,y,u)
```

The result is a database that has all the variables from *x* plus the variables *u*
