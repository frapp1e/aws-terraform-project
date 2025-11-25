# AWS Terraform Project - EC2 & S3

Este proyecto es una demostración práctica de despliegue de infraestructura en **AWS** utilizando **Terraform** como herramienta de Infraestructura como Código (IaC). El objetivo es automatizar la creación de recursos en la nube y documentar la configuración completa.

---

## Recursos desplegados

- **EC2**:  
  - Instancia Amazon Linux 2023
  - Tipo: `t3.micro` (Free Tier)
  - Clave SSH importada para acceso seguro
  - Nginx instalado manualmente tras el despliegue (puede automatizarse con `user_data` o Ansible)
  - Grupos de seguridad configurados para permitir:
    - SSH desde la IP del usuario
    - HTTP desde cualquier IP

- **S3**:  
  - Bucket gestionado mediante Terraform
  - Uso para almacenamiento de datos y posibles capturas

- **Seguridad y configuración de red**:
  - Grupos de seguridad configurados correctamente
  - Acceso seguro a la instancia mediante clave privada

---

