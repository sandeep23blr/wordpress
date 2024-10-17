pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the HTML code from GitHub
                git 'https://github.com/Naveen77029/wordpress.git'
            }
        }

        stage('Deploy') {
            steps {
                // Copy index.html to the project path
                sh 'cp index.html /var/www/html/wordpress/' // Update this to your exact project path
            }
        }
    }

    post {
        success {
            echo 'Deployment of index.html successful!'
        }
        failure {
            echo 'Deployment of index.html failed.'
        }
    }
}

}
