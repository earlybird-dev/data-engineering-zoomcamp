variable "creds" {
  description = "The ID of the project where you want to create your resources."
  type        = string
  default     = "./keys/gcp.json"
}
variable "project_id" {
  description = "The ID of the project where you want to create your resources."
  type        = string
  default     = "de-zoomcamp-2024-412509"
}
variable "region" {
  description = "The ID of the project where you want to create your resources."
  type        = string
  default     = "australia-southeast2"
}