variable "instance_type" {
    default = {
        prod = "t2.micro"
        dev = "t3.small"
    }
}