pipeline {
    agent any

    stages {
        stage('Deploy to Instance 2') {
            steps {
                sshagent(['SSHtoken']) {
                    sh '''
                        ssh -o StrictHostKeyChecking=no ec2-user@13.201.137.23 << 'EOF'
                            set -x  # Enable debugging
                            echo "Starting deployment..."

                            # Ensure the application directory exists
                            mkdir -p /home/ec2-user/application
                            cd /home/ec2-user/application

                            # Pull the latest changes from the Git repository
                            if [ -d ".git" ]; then
                                git pull origin main
                            else
                                git clone https://github.com/sandeep23blr/wordpress.git .
                            fi

                            echo "Deploying application..."
                            # Add your commands to start the application here
                            echo "Deployment completed."
                        EOF
                    '''
                }
            }
        }
    }
}
