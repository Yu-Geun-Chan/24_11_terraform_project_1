terraform {
  // 자바의 import 와 비슷함
  // aws 라이브러리 불러옴
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-northeast-2"
}

# 환경 설정
// 아래 테라폼 코드는 자바에서 aws_vpc example = aws_vpc new aws_vpc("10.0.0.0/16", "example"); 라고 생각하면 된다
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "example-1"
  }
}

# 환경 설정
// 아래 테라폼 코드는 자바에서 aws_vpc example = aws_vpc new aws_vpc("10.0.0.0/16", "example"); 라고 생각하면 된다
resource "aws_vpc" "example_2" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "example-2"
  }
}