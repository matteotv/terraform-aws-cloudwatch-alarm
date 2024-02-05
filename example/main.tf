module "matt-metric-alarm" {
  source = "../"

  input               = "${path.module}/path to yaml file"
  alarm_name_prefix   = "MATTALARMS"
  current_environment = sandbox
  template_data = {
    ECS_CLUSTER  = "example"
    ECS_SERVICES = "example"
  }
  alarm_actions = {
    default = {

      alarm = ["arn:aws:sns:eu-west-:"]
      ok    = ["arn:aws:sns:eu-west-:"]
    }
  }
}

