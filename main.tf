# Specify the provider and region
provider "aws" {
  region = "us-east-1"  # You can change this to your desired region
}

# Define a resource for an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with a valid AMI ID
  instance_type = "t2.micro"  # Change instance type as needed

  # Optionally, add a tag to your instance
  tags = {
    Name = "MyExampleInstance"
  }

  # Optionally, add a key name for SSH access
  key_name = "my-key-pair"  # Replace with your SSH key name if you want SSH access
}

# Define an output to show the public IP of the instance
output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
