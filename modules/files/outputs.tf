output "filenames" {
  value = [for f in local_file.file : f.filename]
}
