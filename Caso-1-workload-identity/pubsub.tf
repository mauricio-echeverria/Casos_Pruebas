module "topic-echo" {
 source = "./modules/pubsub/topic"
 name-topic = "echo"
 resource_labels_pubsub = {
   teams = "test"
 }
}

module "subs-echo-read" {
 source                     = "./modules/pubsub/subscription/pull/subscription-v1"
 name-suscripcion           = "echo-read"
 topic                      = module.topic-echo.name-topic
 ack_deadline_seconds       = 180
 message_retention_duration = "1800s" # 30 minutos
 project                    = var.project_id
 resource_labels_pubsub = {
   teams = "test"
 }
}
