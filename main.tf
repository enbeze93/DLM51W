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

output "created_filenames" {
  value = module.files.filenames
}

output "read_prefixed_filenames" {
  value = module.read.prefixed_filenames
}
