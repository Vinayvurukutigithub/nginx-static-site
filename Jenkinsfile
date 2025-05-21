pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', 
                    url: 'https://github.com/Vinayvurukutigithub/nginx-static-site.git', 
                    credentialsId: 'docker-token'
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
                    docker.image('nginx-static-site').run('-d -p 8081:80')
                }
            }
        }
    }
}
