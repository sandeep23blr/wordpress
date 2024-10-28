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

                        # Check if .git directory exists
                        if [ -d ".git" ]; then
                            echo "Updating application from repository..."
                            git pull origin main
                        else
                            echo "Cloning repository..."
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
