output "name-topic" {
  value       = google_pubsub_topic.topic.name
  description = "The unique name of the topic"
}
