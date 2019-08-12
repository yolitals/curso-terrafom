# Configuración del backend

## Crear backend
En esta demo se utilizara AWS s3 como backend de terraform. por lo tanto lo primero es crear un bucket, la definicion se encuentra lista en la carpeta `aws_bucket`
```sh
$ cd aws_bucket

$ terraform apply  -var-file dev.tfvars
```


## Configurar Backend
Para especificar el backend es necesario agregar la siguiente seccion de codigo
```
terraform {
  backend "s3" {
    bucket = "terraform-backend-platzi"
    key    = "terraform/bucket/dev"
    region = "us-east-2"
  }
}
```
En esta demo esta configuración se agregará en un archivo llamado `backend.tf`. Esta configuración se hará efectiva con el comando init.
```sh
$ Terraform init 
```
Si existe actualmente un archivo de estado en el directorio terraform preguntará si deseamos usar ese para guardarlo en s3 o si queremos empezar desde 0 con un archivo en blanco.