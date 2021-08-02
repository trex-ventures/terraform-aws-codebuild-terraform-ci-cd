variable "terraform_version" {
  type        = string
  description = "The terraform version which will be used"
}

variable "product" {
  type        = string
  description = "The name of the product"
}

variable "environment" {
  type        = string
  description = "The environment which applied"
}

variable "additional_tags" {
  type        = map(string)
  description = "Additional tags that will be added to the resources"
  default     = {}
}

variable "source_repository_url" {
  type        = string
  description = "The source repository URL"
}

variable "compute_type" {
  type        = string
  default     = "BUILD_GENERAL1_SMALL"
  description = "The builder instance class"
}

variable "image" {
  type        = string
  default     = "786823103752.dkr.ecr.ap-southeast-1.amazonaws.com/build-terraform-ci-cd-app:v0.2.1"
  description = "Docker image used by CodeBuild"
}

variable "image_credentials" {
  type        = string
  default     = "SERVICE_ROLE"
  description = "Credentials to be used to pull codebuild environment image"
}

variable "github_app_id" {
  type        = string
  default     = "129655"
  description = "Terraform CI/CD Github App ID"
}

variable "github_app_installation_id" {
  type        = string
  default     = "18633311"
  description = "Terraform CI/CD Github App Installation ID"
}

######
# CI #
######
variable "ci_shell" {
  type        = string
  default     = "bash"
  description = "The shell command interpreter for CI"
}

variable "ci_env_var" {
  type        = list(map(string))
  default     = []
  description = "Environment variables for CI"
}

variable "ci_install_commands" {
  type        = list(string)
  default     = []
  description = "Commands for CI's install phase"
}

variable "ci_pre_build_commands" {
  type        = list(string)
  default     = []
  description = "Commands for CI's pre_build phase"
}

variable "ci_build_commands" {
  type        = list(string)
  default     = []
  description = "Commands for CI's build phase"
}

variable "ci_post_build_commands" {
  type        = list(string)
  default     = []
  description = "Commands for CD's post_build phase"
}

######
# CD #
######
variable "cd_shell" {
  type        = string
  default     = "bash"
  description = "The shell command interpreter for CD"
}

variable "cd_env_var" {
  type        = list(map(string))
  default     = []
  description = "Environment variables for CD"
}

variable "cd_install_commands" {
  type        = list(string)
  default     = []
  description = "Commands for CD's install phase"
}

variable "cd_pre_build_commands" {
  type        = list(string)
  default     = []
  description = "Commands for CD's pre_build phase"
}

variable "cd_build_commands" {
  type        = list(string)
  default     = []
  description = "Commands for CD's build phase"
}

variable "cd_post_build_commands" {
  type        = list(string)
  default     = []
  description = "Commands for CD's post_build phase"
}
