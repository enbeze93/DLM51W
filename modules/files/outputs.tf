output "filenames" {
  value = [for f in local_file.files : f.filename]
}
