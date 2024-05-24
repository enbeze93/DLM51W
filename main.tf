module "files" {
  source       = "./modules/files"
  file_count   = 3
  file_prefix  = "example"
  file_content = "Something something"
}

output "created_filenames" {
  value = module.files.filenames
}
