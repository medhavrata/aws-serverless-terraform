locals {
  emailid = ["tyagi.25@gmail.com", "medha.tyagi@yahoo.com"]
}

resource "aws_ses_email_identity" "email_id" {
  count = length(local.emailid)
  email = local.emailid[count.index]
}