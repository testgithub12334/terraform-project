pipeline {
    agent any
    tools {
  terraform 'terraform'
}
stages () {
    stage('gitcheckout') {
        steps{
            git branch: 'main', credentialsId: 'fef30eaf-8227-4005-b072-d33a642d8428', url: 'https://github.com/testgithub12334/terraform-project.git'
        }
    }
    stage('Terraform Initlization') {
        steps {
            sh 'terraform init'
        }
    }
    stage('Terraform plan') {
        steps {
            sh 'terraform plan'
        }
    }
    stage('Terraform provisioning') {
        steps {
            sh 'terraform apply --auto-aprove'
        }
    }
}
}
