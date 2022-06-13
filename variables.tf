variable "environment" {
  type = string
}
variable "project" {
  type = string
}

variable "folder_name" {
  description = "S3 Folder name"
  type = list(string)
  default = ["folder1",
             "folder1/in",
             "folder1/out",
             ]
}
