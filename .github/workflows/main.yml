workflow "Fission CD" {
  on = "push"
  resolves = [
    "FissionCD",
  ]
}

action "FissionCD" {
  uses = "docker://fission/github-action:1.0.0"
  secrets = ["CERTIFICATE_AUTHORITY", "SERVER_ADDRESS", "USER_TOKEN"]
}
