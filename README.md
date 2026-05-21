# Legacy Inventory - CI/CD & IaC

## Arquitectura Implementada
Se implementó un flujo completo de DevOps:
- **CI (Integración Continua):** Pipeline en GitHub Actions que ejecuta pruebas automatizadas en Node.js sobre la rama `develop`.
- **IaC (Infraestructura como Código):** Arquitectura modular en Terraform (módulos `network` y `compute`) con backend remoto en S3.
- **CD (Despliegue Continuo):** Pipeline automatizado que aprovisiona una instancia t3.micro en AWS Learner Lab al integrar código en la rama `main`, aplicando el principio de GitOps para modificaciones de red.

## URL de Validación en Vivo
La aplicación se encuentra desplegada y respondiendo en: 
**http://44.198.182.184:5000/**