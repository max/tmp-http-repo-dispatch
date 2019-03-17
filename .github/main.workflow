workflow "ping" {
  on = "issues"
  resolves = "ping action"
}

action "ping action" {
  uses = "docker://byrnedo/alpine-curl"
  runs = ["./ping.sh"]
}

workflow "pong" {
  on = "repository_dispatch"
  resolves = "pong action"
}

action "pong action" {
  uses = "docker://alpine"
  runs = ["echo", "pong"]
}
