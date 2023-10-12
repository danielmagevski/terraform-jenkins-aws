pipeline {
    agent any

    stages {

        stage("Checkout source") {
            steps {
                git url: 'https://github.com/danielmagevski/terraform-jenkins-aws.git', branch: 'main'
                sh 'ls'
            }
        }
    }
}