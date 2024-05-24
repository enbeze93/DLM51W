module "files" {
  source       = "./modules/files"
  file_count   = 3
  file_prefix  = "example"
  file_content = "Something something"
}

module "read" {
  source    = "./modules/read"
  filenames = module.files.filenames
}

variable "answer_1" {
  description = "Answer to question 1"
  type        = string
}

variable "answer_2" {
  description = "Answer to question 2"
  type        = string
}

variable "answer_3" {
  description = "Answer to question 3"
  type        = string
}

variable "answer_4" {
  description = "Answer to question 4"
  type        = string
}

variable "answer_5" {
  description = "Answer to question 5"
  type        = string
}

variable "answer_6" {
  description = "Answer to question 6"
  type        = string
}

variable "answer_7" {
  description = "Answer to question 7"
  type        = string
}

module "write" {
  source   = "./modules/write"
  answer_1 = var.answer_1
  answer_2 = var.answer_2
  answer_3 = var.answer_3
  answer_4 = var.answer_4
  answer_5 = var.answer_5
  answer_6 = var.answer_6
  answer_7 = var.answer_7
}

output "created_filenames" {
  value = module.files.filenames
}

output "read_prefixed_filenames" {
  value = module.read.prefixed_filenames
}

output "answers" {
  value = {
    answer_1 = module.write.answer_1
    answer_2 = module.write.answer_2
    answer_3 = module.write.answer_3
    answer_4 = module.write.answer_4
    answer_5 = module.write.answer_5
    answer_6 = module.write.answer_6
    answer_7 = module.write.answer_7
  }
}
