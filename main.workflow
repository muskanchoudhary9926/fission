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
Push the code to a repository with the workflow definition. Assuming you have Git Hub Actions enabled in your repo, you will see an Action tab. You will notice that the workflow is marked as invalid and has errors. This is because it does not yet have values for the secrets.