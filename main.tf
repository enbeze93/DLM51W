module "files" 
{
  source     = "./modules/files"
  file_count = 3
  filename   = ""
}

module "read" 
{
  source      = "./modules/read"
}

module "write" 
{
  source   = "./modules/write"
}
