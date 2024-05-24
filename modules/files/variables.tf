variable "file_count" {
  description = "Number of files"
  type        = number
  default     = 1
}

variable "file_prefix" {
  description = "Prefix"
  type        = string
  default     = "file"
}

variable "file_content" {
  description = "Content"
  type        = string
  default     = "Something something"
}
