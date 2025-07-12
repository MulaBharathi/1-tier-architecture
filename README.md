
# 🚀 Flask 1-Tier Architecture on AWS (Terraform + GitHub Actions)

This project sets up a fully automated **1-tier architecture**:
- Python Flask app
- Hosted on AWS EC2
- Automated with Terraform
- CI/CD via GitHub Actions


pip install -r requirements.txt

## 🔐 Step 1: Generate SSH Key (1-time only)

```
ssh-keygen -t rsa -b 4096 -f ~/.ssh/flask-key
```

## ☁️ Step 2: Setup EC2 with Terraform

```
cd terraform
terraform init         # Initialize Terraform
terraform plan         # Check resources
terraform apply        # Create EC2 and SG
```

## 🌐 Final Output
Visit in browser:

```
http://<EC2_PUBLIC_IP>:5000
```

