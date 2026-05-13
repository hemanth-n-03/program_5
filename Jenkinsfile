Jenkinsfile:
pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = 'Docker-cred'//give your credential name
        IMAGE_NAME = 'hemanthn03/new_docker_image'//give your image name
    }

    stages {

        stage('Build Java Application') {
            steps {
                bat 'javac helloworld.java'
            }
        }

        stage('Run Java Program') {
            steps {
                bat 'java helloworld'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t %IMAGE_NAME%:latest .'
            }
        }

        stage('Login to DockerHub') {
            steps {
                withCredentials([usernamePassword(
                credentialsId: 'Docker-cred',//give your credentials mentioned above
                usernameVariable: 'USER',
                passwordVariable: 'PASS')]) {

                    bat 'echo %PASS%| docker login -u %USER% --password-stdin'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                bat 'docker push %IMAGE_NAME%:latest'
            }
        }
    }
}
