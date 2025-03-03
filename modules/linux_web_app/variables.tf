variable "rg_name" {
  description = "Nome do grupo de Recurso"
}
variable "service_plan_id" {
  description = "Id do Service Plan"
}
variable "location" {
  description = "Local da subida"
  default = "Westus2"
}
variable "project" {
  description = "Nome do Web App"
}
variable "env" {
  description = "Ambiente"
}
variable "identifier" {
  description = "Nome indentificador"
}