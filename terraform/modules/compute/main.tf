resource "aws_instance" "app_server" {
  ami                  = var.ami_id
  instance_type        = var.instance_type
  iam_instance_profile = var.iam_profile
  vpc_security_group_ids = [var.sg_id]

  user_data = <<-EOF
              #!/bin/bash
              # Actualizar paquetes con yum
              yum update -y
              
              # Instalar Node.js 20 y Git
              curl -fsSL https://rpm.nodesource.com/setup_20.x | bash -
              yum install -y nodejs git

              # Clonar el repositorio (Asegurate de poner tu usuario de GitHub aqui)
              git clone https://github.com/Matipala/legacy-inventory.git /home/ec2-user/app
              cd /home/ec2-user/app
              
              # Instalar dependencias e iniciar la app en background
              npm install
              nohup npm start > app.log 2>&1 &
              EOF

  tags = {
    Name = "LegacyInventory-Server"
  }
}