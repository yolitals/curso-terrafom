# Reutilizacion de codigo

## Modulos
Un modulo es basicamente una definición de infraestructura que puede ser llamado o invocado desde otra definición de infraestructura en terraform. Para hacer referencia a un modulo se utiliza el siguiente codigo:
```
module "name" {
  source = "source" 
}
```
### Modulos locales
Son definiciones que se encuntran en alguna ubicación de la misma computadora donde se invoca o hace referencia, se le puede enviar un path relativo o el path completo.
```
source = "../modules/aws_elb"
```
### Modulos remotos
Tienen el mismo fin, pero se encuentran el algun servidor de control de versiones como: github, bitbucket incluso consul.

```
source = "github.com/yolitals/terraform-modules-platzi/aws_elb"
```