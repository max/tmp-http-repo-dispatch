workflow "hello" {
  on = "repository_dispatch"
  resolves = "ping"
}

action "ping" {
  uses = "docker://alpine"
  runs = ["ping", "-c", "1", "google.com"]
}
