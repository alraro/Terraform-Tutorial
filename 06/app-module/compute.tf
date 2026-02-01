resource "aws_instance" "web" {
    count = var.server_count

    ami = var.ami
    instance_type = var.instance_type
    security_groups = [aws_security_group.instances.name]
    user_data = <<-EOF
              #!/bin/bash
              echo "Hola, mundo, soy la web ${count.index + 1} de la app ${var.app-name}" > index.html
              python3 -m http.server 8080 &
              EOF
    tags = {
        Name = "${var.app-name}-instance-${count.index + 1}"
    }
}