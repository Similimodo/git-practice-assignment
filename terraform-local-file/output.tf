output "random-pet-name" {
  value       = random_pet.my-pet.id
  description = "The random pet name"
}

output "local-file-name" {
  value = local_file.datasource_ref.content
}