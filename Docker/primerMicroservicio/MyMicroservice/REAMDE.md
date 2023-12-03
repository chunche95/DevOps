# ¿Qué significa estos comandos?
```.net
	dotnet new webapi -o MyMicroservice --no-https -f net7.0
```
El comando ```dotnet```crea una aplicación nueva de tipo ```webapi``` (es decir, un punto de conexión de API de REST).
	- El parametro ```-o``` crea un directorio denominado ```MyMicroservice``` donde se almacena la aplicación.
	- La marca ```--no-https``` crea una aplicación que se ejecutará sin un certificado HTTPS para simplificar la implementación.
	- El parámetro ```-f``` indica que está creando una aplicación .NET 7.
El comando ```MyMicroservice``` le coloca en el directorio de aplicaciones recién creado.

## El código generado.
Se crearon varios archivo en el directorio MyMicroservice, para brindarle un servicio simple que está listo para ejecutarse.
	- 'MyMicroservice.csproj' define a qué bibliotecas hace referencia el royecto, etc.
	- 'Program.cs' contiene todos los ajustes y la configuración cargadas cuando se inicia la aplicación.
	- 'Controllers/WeatherForecastController.cs' tiene código para una API simple que devuelve la previsión meteorológica para los próximos cinco días.
	- El archivo 'launchSettings.json' dentro del directorio 'Prtoperties' define diferentes configuraciones de perfil para el entorno de dsarrollo local. Un número de puerto que oscila entre 5000 y 5300
	se asigna automáticamente al crear el proyecto y se guarda en este archivo.

# Crear imagen Docker	
Ejecutando el comando
```
	docker build -t mymicroservice .
```
El comando docker build usa el Dockerfile para compilar una imagen de Docker.
	- El parámetro -t mymicroservice le indica que etiquete (o asigne un nombre) a la imagen como mymicroservice.
	- El parámetro final indica qué directorio usar para buscar el Dockerfile (. especifica el directorio actual).
	- Este comando descargará y compilará todas las dependencias para crear una imagen de Docker y puede tardar algún tiempo.
Puede ejecutar el siguiente comando para ver una lista de todas las imágenes disponibles en el equipo, incluida la que acaba de crear. ```docker images```
