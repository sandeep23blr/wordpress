pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/yourusername/your-repo-name.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('simple-html-app')
                }
            }
        }
        stage('Deploy to VM') {
            steps {
                sshagent (credentials: ['your-ssh-credential-id']) {
                    sh '''
                    docker stop simple-app || true
                    docker rm simple-app || true
                    docker run -d -p 80:80 --name simple-app simple-html-app
                    '''
                }
            }
        }
    }
}
