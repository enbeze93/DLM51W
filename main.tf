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
