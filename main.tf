module "files" {
  source       = "./modules/files"
  file_count   = 3
  file_prefix  = "example"
  file_content = "This is an example file."
}

output "created_filenames" {
  value = module.files.filenames
}
