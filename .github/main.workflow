workflow "ping" {
  on = "issues"
  resolves = "ping action"
}

action "ping action" {
  uses = "docker://alpine"
  runs = ["./ping.sh"]
  secrets = [
    "GITHUB_TOKEN"
  ]
}

workflow "pong" {
  on = "repository_dispatch"
  resolves = "pong action"
}

action "pong action" {
  uses = "docker://alpine"
  runs = ["echo", "pong"]
}
