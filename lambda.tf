resource "aws_lambda_function" "site_ping" {
  filename = "./build.zip"
  function_name = "site-ping"
  handler = "lambda.handler"
  runtime = "python3.7"
  role = "${aws_iam_role.iam_for_lambda.arn}"
  source_code_hash = "${base64sha256(file("./build.zip"))}"

  environment {
    variables = {
      EXPECTED = "${var.expected}"
      SITE = "${var.site}"
    }
  }
}
