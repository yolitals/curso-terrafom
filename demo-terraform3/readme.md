# AWS instance with terraform
## Instalación de terraform
Terraform tiene un binario para cada sistema operativo, en el siguiente link estan las instrucciones para descargalo e instalarlo en cada uno.
- https://learn.hashicorp.com/terraform/getting-started/install.html

## Verificar la instalación 
```sh
$ terraform version
Terraform v0.12.6
```

## Configurar la cuenta de aws
Configurar las credenciales de AWS. Esto no es indispensable pero si se omite será necesario setear las variables dentro de los archivos de configuración de terraform.
```sh
$ export AWS_ACCESS_KEY_ID=""
$ export AWS_SECRET_ACCESS_KEY=""
```

## Comandos de terraform
Para poder ejecutar los comandos de terraform es necesario estar dentro de la carpeta donde se encuentran los archivos de definicion.
```sh
$ terraform fmt
# Este comando es util para dar un formato uniforme a todos los archivos de terraform.
```
```sh
$ terraform validate
# Este comando es util para validar la sintaxis de los archivos de definición de terraform.
```
```sh
$ terraform init
# Este comando es necesario para descargar los plugins necesarios para el provider.
```
```sh
$ terraform plan
# Con este comando es posible ver los recursos que se crearan con la definición.
```
```sh
$ terraform apply
# Finalmente cuando estamos seguros de lo que vamos a crear procedemos a aplicar. Esto creara la infraestructura que definimos que en este caso es una instance en AWS.
```
```sh
$ terraform destroy
# Terraform tambien nos permite destruir la infraestructura creada.
```