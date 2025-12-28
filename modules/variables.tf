variable "region" {
  description = "Region to build resources in."
  type        = string
  default     = "us-sanjose-1"
}

variable "availability_domain" {
  description = "AD to build resources in."
  type        = string
  default     = "iRfa:US-SANJOSE-1-AD-1"
}