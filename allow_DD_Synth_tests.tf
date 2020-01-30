resource "aws_security_group" "allow_DD_synth_tests" {
  name        = "allow_DD_synth_tests"
  description = "Allow HTTP and HTTPS inbound traffic from Datadog Synthetics"
  vpc_id      = "${aws_vpc.main.id}"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [ "13.114.211.96/32", "13.115.46.213/32", "13.126.169.175/32", "13.209.118.42/32", "13.209.230.111/32", "13.234.54.8/32", "13.238.14.57/32", "13.54.169.48/32", "18.130.113.168/32", "18.139.52.173/32", "18.195.155.52/32", "18.200.120.237/32", "18.229.28.50/32", "3.1.219.207/32", "3.1.36.99/32", "3.120.223.25/32", "3.121.24.234/32", "3.18.172.189/32", "3.18.188.104/32", "3.18.197.0/32", "34.208.32.189/32", "35.154.93.182/32", "35.176.195.46/32", "35.177.43.250/32", "52.192.175.207/32", "52.35.61.232/32", "52.60.189.53/32", "52.67.95.251/32", "52.89.221.151/32", "52.9.13.199/32", "52.9.139.134/32", "63.34.100.178/32", "63.35.33.198/32", "99.79.87.237/32" ]
  }
  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [ "13.114.211.96/32", "13.115.46.213/32", "13.126.169.175/32", "13.209.118.42/32", "13.209.230.111/32", "13.234.54.8/32", "13.238.14.57/32", "13.54.169.48/32", "18.130.113.168/32", "18.139.52.173/32", "18.195.155.52/32", "18.200.120.237/32", "18.229.28.50/32", "3.1.219.207/32", "3.1.36.99/32", "3.120.223.25/32", "3.121.24.234/32", "3.18.172.189/32", "3.18.188.104/32", "3.18.197.0/32", "34.208.32.189/32", "35.154.93.182/32", "35.176.195.46/32", "35.177.43.250/32", "52.192.175.207/32", "52.35.61.232/32", "52.60.189.53/32", "52.67.95.251/32", "52.89.221.151/32", "52.9.13.199/32", "52.9.139.134/32", "63.34.100.178/32", "63.35.33.198/32", "99.79.87.237/32" ]
  }
  tags = {
    Name = "allow_DD_synth"
  }
}
