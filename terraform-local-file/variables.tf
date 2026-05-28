variable "filename" {
  default = "./pet.txt"
  type = string
  description = "This is the name of the file"
}

variable "content" {
  default = {
    first = "We hate pets in my house including"
    second = "We don't like dog pets in my house"
  }
  type = map(string)
  description = "This is a map of strings for the content statement"
}

variable "prefix" {
  type = list(string)
  default = ["Mr", "Mrs", "Sir"]
  description = "This is the list of the title"
}

variable "separator" {
  type = string
  description = "This is a string seperator"
  default = ":"
}

variable "length" {
  type = number
  description = "This is the lenght"
  default = 1
}