pipeline {
    agent any
    tools {
        terraform 'terraform'
    }
    stages {
        stage('git clone') {
            steps {
               checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Rishusharma1/terraforminfra.git']])
                
            }
        }
        stage('terraform') {
            steps {
                dir('terraform_module'){
                sh 'terraform init'
            }
        }
        }
        
stage('terraform validate') {
steps {
             dir('terraform_module'){
                sh 'terraform plan'
                }
            }
        }
        stage('terraform apply') {
            steps {
                
             dir('terraform_module'){
            
                sh 'terraform apply --auto-approve'
                // sh 'terraform destroy --auto-approve'
                
            }
        }
       
}
}
}
