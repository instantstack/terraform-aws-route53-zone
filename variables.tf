variable "name" {
  type        = string
  description = "description"
}

variable "private_zone" {
  type        = bool
  description = "description"
}

variable "existent_zone" {
  type        = bool
  description = "description"
}

variable "vpc_id" {
  type        = string
  default     = ""
  description = "description"
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "description"
}