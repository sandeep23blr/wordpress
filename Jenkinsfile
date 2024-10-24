pipeline {
    agent any

    stages {
        stage('Deploy to Instance 1') {
            steps {
                sshagent(['SSHtoken']) {
                    sh '''
                        ssh -o StrictHostKeyChecking=no ec2-user@13.127.81.47 << EOF
                        cd Jenkinsfile
                        ./start_application.sh
                        EOF
                    '''
                }
            }
        }

        stage('Deploy to Instance 2') {
            steps {
                sshagent(['SSHtoken']) {
                    sh '''
                        ssh -o StrictHostKeyChecking=no ec2-user@43.204.149.185 << EOF
                        cd Jenkinsfile
                        ./start_application.sh
                        EOF
                    '''
                }
            }
        }
    }
}
