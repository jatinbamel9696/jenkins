# Define variables to be passed from Jenkins
variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
}

variable "region" {
  description = "AWS Region"
  type        = string
}


variable "pub_key" {
  description = "AWS Region"
  type        = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCdG3o7b+/LMPPEUKyocYTfVDZ2Oi5BpmnaATbdiRl8Ix326JLjXs8UhvxYZhX/UPK7Ts3jG2i1O08TXpZgl4k7Lyfbba3/eOh6nclFHuoYurd20dd62oZxU3AV9+Q8kJ4+In11WFzY/1FQzTDqLt2DoqnRADMqnHPPJ2o8Be31w9ndFih3Uf0nAESrVELv/WHcc4E5LFoqsXp0TMkW3zPsbGMjpGHwE5eD/kPA948rhpKkqXxUo+pgjaOhWxV8uWMurBoKZrQ1Yy69dWbIqlOMtL57NrsxyfDUQK3vPnyL0RnPZAiApPNB/xx//0T9MnNlbyQBnF+OGh7V3B0M8h2IvrjAVAGqxR4Jjn5nDjjE/jdRFc1kL26dPxL3YLQgGtGEdnPDF3ZOUehGzITk7jV7R/6O4E/My8gEGvG7ELHBLBu8brwECtha34J94tMYZS9cOMcb5kAwZAC6V9lmnfWW5gDtT10tvuWa2M9XCZ39bC7F87ODCNDWrxKol+pIheYn+cOr0+FVYtymhttICL3QbEkPoka5tZDugGTYE57Z+3g9vaXfpH78s6W1Z4iyPHI1A7YbEcQACSwJxxhxIWcL4ssn/RRUy2aRGk74B29RVnerpNQxFi5M7sT7n0FjN7hBRy8izVCEwZf9Jz6Q39GZQCZxrQv9vo3oghDMG2UtYw=="
}


# Private Key Variable (Multi-line string)
variable "private_key" {
  description = "Private key for instance"
  type        = string
  default     = ""
}
