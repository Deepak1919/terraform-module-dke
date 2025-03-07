variable "namespaces" {
  description = "List of namespaces to be created on PKE"
  type        = set(string)
  default     = ["unconfigured-variable"]
}

variable "pke_k8s_version" {
  description = "Version of the Kubernetes"
  type        = string
  default     = "v1.23.16-rancher2-1"
}

variable "nodes_api" {
  description = "List of control/API nodes"
  type        = list(string)
  default     = ["pke-api"]
}
variable "nodes_worker" {
  description = "List of worker nodes"
  type        = list(string)
  default     = ["pke-worker"]
}
variable "domain_name" {
  description = "Domain name suffix"
  type        = string
  default     = "cloud.itplatforma.com"
}
variable "worker_tags" {
  description = "Optional tags to be added on worker nodes"
  type        = map(any)
  default     = { default = "default" }
}

variable "ingress_default" {
  description = "Set to true in case you want default nginx, or false if you plan to install custom one"
  type        = bool
  default     = true
}
variable "use_compression" {
  description = "Use compression module (gzip) on ingress"
  type        = bool
  default     = false
}

variable "use_brotli" {
  description = "Use brotli compression"
  type        = bool
  default     = false
}

variable "ingress_ncpu" {
  description = "Set to desired number of CPUs to be used by nginx ingress controller"
  type        = string
  default     = "auto"
}

variable "image_puller" {
  description = "Name of image puller secret used for pulling"
  type        = string
  default     = "imgcred"
}
variable "registry_url" {
  description = "Hostname of the image registry"
  type        = string
  default     = "https://index.docker.io/v1/"
}
variable "registry_user" {
  description = "Username for the image registry"
  type        = string
  default     = "_default"
}
variable "registry_pass" {
  description = "Password of the image registry"
  type        = string
  default     = "passsword-not-set"
}

variable "custom_api_url" {
  description = "Custom domain for answering API, used for load-balancing between control nodes"
  type        = string
  default     = ""
}

variable "use_ssh_agent" {
  description = "Enable or disable usage of ssh agent"
  type        = bool
  default     = true
}

variable "k8s_version" {
  type = map(string)
  default = {
    "1.23" = "v1.23.16-rancher2-1"
    "1.24" = "v1.24.17-rancher1-1"
    "1.25" = "v1.25.16-rancher2-3"
    "1.26" = "v1.26.14-rancher1-1"
    "1.27" = "v1.27.11-rancher1-1"
    "1.28" = "v1.28.15-rancher1-1"
    "1.29" = "v1.29.10-rancher1-1"
    "1.30" = "v1.30.6-rancher1-1"
    "1.31" = "v1.31.2-rancher2-1"
  }
}

variable "ingress_forwarded_for" {
  description = "Name of the header where Real IP is stored"
  type        = string
  default     = "X-Forwarded-For"
}

variable "max_pods" {
  description = "Amount of pods each available for every node"
  type        = string
  default     = "110"
}
