resource "local_file" "file" {
  count    = var.file_count
  filename = "${path.module}/${var.file_prefix}_${count.index}.txt"
  content  = var.file_content
}
