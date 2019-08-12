# Packer
Es una herramienta para construir imagines casi en cualquier proveedor de nube.

### Instalación
En este link se encuentran las instrucciones para instalar packer en los diferentes sistemas operativos. En este documento se detallan las instrucciones para sistema operatio Mac y Linux.
- https://www.packer.io/intro/getting-started/install.html
    ```sh
    $ curl -o /tmp/packer.zip https://releases.hashicorp.com/packer/1.4.2/packer_1.4.2_darwin_amd64.zip 
    $ unzip /tmp/packer.zip -d /usr/local
    ## En el siguiente link se encuentra la url de los binarios para los demas sistemas operativos https://www.packer.io/downloads.html
    ```


### Demo
En esta demo se creara una AMI para AWS con una llave publica personalizada y con docker. En esta demo se asumirá que ya tienes una cuenta de AWS previamente creada.
- Crear un usuario en tu cuenta de AWS y obtener las credenciales (secret_id y secret_key) de AWS.
- Configurar las credenciales como variables de entorno.
    ```sh
     $ export AWS_ACCESS_KEY_ID=""
     $ export AWS_SECRET_ACCESS_KEY=""
    ```
- Dentro del directorio `scripts`se encuentra la llave publica que se agregara a la imagen base resultante. Por cuestiones se seguridad no se encuentra la llave privada por lo que se sugiere que se cree un set de llaves y se remplace el contendido del archivo `scripts/packer-key.pub`  por el valor de llave publica generada (.pub). Para generar el set de llaves puedes seguir las siguientes instrucciones:
    ```sh
    $ ssh-keygen -f ~/.ssh/packer-key -t rsa
    # Este comando generará 2 archivos "packer-key" que contiene la llave privada y "packer-key.pub" que contiene la llave publica, el contenido de esta es el que e reemplazara en el archivo "scripts/packer-key.pub" dentro de esta carpeta.
    ```
- Para validar la sintaxis del archivo de definición que contiene todas las configuraciones necesarias se ejecutará el siguiente comando:
    ```sh
    $ cd demo-packer
    $ packer validate aws-ami.json
    ```
- Finalmente se procede a crear el AMI en la cuenta de AWS configurada previamente. y para ello es necesario ejecutar el siguiente commando
    ```sh
    $ cd demo-packer
    $ packer build aws-ami.json
    ```