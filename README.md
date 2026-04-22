
# Infraestructura Multi-Entorno con Terraform en Azure

**Descripción**

Este proyecto implementa una arquitectura multi-entorno (dev, staging,
prod) en Microsoft Azure usando Terraform como infraestructura como
código (IaC) y Azure DevOps para automatización CI/CD.

------------------------------------------------------------------------

# Objetivo

Automatizar la creación y despliegue de infraestructura separada por
entornos, aplicando buenas prácticas de:

-   Infraestructura como código
-   Separación de entornos
-   Automatización de despliegues

------------------------------------------------------------------------

# Arquitectura

-   Resource Groups por entorno
-   App Service (F1 - capa gratuita)
-   Backend remoto con Azure Blob Storage
-   Pipeline de despliegue automatizado


------------------------------------------------------------------------

# Tecnologías

-   Terraform
-   Microsoft Azure
-   Azure DevOps
-   Git

------------------------------------------------------------------------

# Despliegue

az login cd terraform/envs/dev terraform init terraform apply
-var-file=“dev.tfvars”

------------------------------------------------------------------------

# Notas

-   Se utilizaron recursos gratuitos (F1) para evitar costos.
-   Cada entorno tiene su propio estado remoto en Azure Blob Storage.
-   El pipeline automatiza validación y despliegue progresivo.

------------------------------------------------------------------------

# Resultado

- Infraestructura modular
- Multi-entorno funcional
- CI/CD automatizado
- Sin costos en la nube