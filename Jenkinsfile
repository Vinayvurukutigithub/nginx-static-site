
pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/your-user/nginx-static-site.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('nginx-static-site')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.image('nginx-static-site').run('-d -p 8080:80')
                }
            }
        }
    }
}
