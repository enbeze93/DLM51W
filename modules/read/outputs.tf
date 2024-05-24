output "prefixed_filenames" {
  value = [for filename in var.filenames : "read-${filename}"]
}
