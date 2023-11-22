#
# Contextual Fields
#

variable "context" {
  description = <<-EOF
Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.

Examples:
```
context:
  project:
    name: string
    id: string
  environment:
    name: string
    id: string
  resource:
    name: string
    id: string
```
EOF
  type        = map(any)
  default     = {}
}

#
# Connection Fields
#

variable "hosts" {
  description = "The host list of the MySQL service."
  type        = list(string)
}

variable "hosts_readonly" {
  description = "The readonly host list of the MySQL service."
  type        = list(string)
  default     = []
}

variable "port" {
  description = "The port of the MySQL service."
  type        = number
  default     = 3306
}

variable "database" {
  description = "The name of the MySQL database to access."
  type        = string
  default     = ""
}

variable "username" {
  description = "The username of the account to access the database."
  type        = string
}

variable "password" {
  description = "The password of the account to access the database."
  type        = string
  sensitive   = true
}
