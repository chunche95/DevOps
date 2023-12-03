# �Qu� significa estos comandos?
```.net
	dotnet new webapi -o MyMicroservice --no-https -f net7.0
```
El comando ```dotnet```crea una aplicaci�n nueva de tipo ```webapi``` (es decir, un punto de conexi�n de API de REST).
	- El parametro ```-o``` crea un directorio denominado ```MyMicroservice``` donde se almacena la aplicaci�n.
	- La marca ```--no-https``` crea una aplicaci�n que se ejecutar� sin un certificado HTTPS para simplificar la implementaci�n.
	- El par�metro ```-f``` indica que est� creando una aplicaci�n .NET 7.
El comando ```MyMicroservice``` le coloca en el directorio de aplicaciones reci�n creado.

## El c�digo generado.
Se crearon varios archivo en el directorio MyMicroservice, para brindarle un servicio simple que est� listo para ejecutarse.
	- 'MyMicroservice.csproj' define a qu� bibliotecas hace referencia el royecto, etc.
	- 'Program.cs' contiene todos los ajustes y la configuraci�n cargadas cuando se inicia la aplicaci�n.
	- 'Controllers/WeatherForecastController.cs' tiene c�digo para una API simple que devuelve la previsi�n meteorol�gica para los pr�ximos cinco d�as.
	- El archivo 'launchSettings.json' dentro del directorio 'Prtoperties' define diferentes configuraciones de perfil para el entorno de dsarrollo local. Un n�mero de puerto que oscila entre 5000 y 5300
	se asigna autom�ticamente al crear el proyecto y se guarda en este archivo.

# Crear imagen Docker	
Ejecutando el comando
```
	docker build -t mymicroservice .
```
El comando docker build usa el Dockerfile para compilar una imagen de Docker.
	- El par�metro -t mymicroservice le indica que etiquete (o asigne un nombre) a la imagen como mymicroservice.
	- El par�metro final indica qu� directorio usar para buscar el Dockerfile (. especifica el directorio actual).
	- Este comando descargar� y compilar� todas las dependencias para crear una imagen de Docker y puede tardar alg�n tiempo.
Puede ejecutar el siguiente comando para ver una lista de todas las im�genes disponibles en el equipo, incluida la que acaba de crear. ```docker images```
