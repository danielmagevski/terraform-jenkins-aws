pipeline {
    agent  any {
    stages {

        stage("Checkout source") {
            steps {
                git url: 'https://github.com/danielmagevski/terraform-jenkins-aws.git', branch: 'main'
                sh 'ls'
            }
        }

        stage('Execução do projeto Terraform') {
            environment {
                AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
                AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
            }
            steps {
                script {
                    dir('src') {
                        sh 'terraform init' 
                        sh 'terraform apply --auto-approve'
                    }
                }
            }
        }
    }
}