# AutoscalingGroup con terraform
## Instalación de terraform
El la demo anterior `../demo-terrafom1` se instalo terraform y se configuro una cuenta de AWS para poder construir infraestructura, en esta demo se creará un grupo de instancias. definiendo todos los valores como variables.

## Archivos
- *main.tf* En el archivo main.tf se encuentra la definición de todos los recursos a crear. no es necesario que el archivo se llame _main_ incluso los recursos pueden estar distribuidos en diferentes archivos con diferentes nombres y terraform sera capaz de interpetrarlos. 
- *variables.tf* En este archivo se encuentran declaradas todas las variables que se utilizaran. El archivo puede llamarse de otra forma, terraform sabra interpretar que son variables. Si bien se pueden crear variables y recursos dentro de un mismo archivo lo recomendable es mantenerlo separado para una mayor claridad.
- *dev.tfvats* Todos los archivos con la extensión _auto.tfvars_ contendran los valores de las variables declarada terraform no es capaz de interpretar estos archivos por lo que es necesario enviarlo como un argumento `-var-file=dev.tfvars` se debe enviar este argumento con los commandos `plan | appy | destroy`
- *default.auto.tfvars* A diferencia del anterior los archivos con extensión `auto.tfvars` si los interpreta terraform automaticamente.