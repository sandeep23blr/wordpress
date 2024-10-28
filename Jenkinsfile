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
                            # Ensure the directory exists or create it
                            mkdir -p /home/ec2-user/application
                            cd /home/ec2-user/application

                            # If git repo exists, pull the latest changes; if not, clone it
                            if [ -d ".git" ]; then
                                git pull origin main
                            else
                                git clone https://github.com/sandeep23blr/wordpress.git .
                            fi

                            # Deployment process
                            echo "Deploying application..."
                            
                            # Add commands necessary for starting the application
                            # For example, if you're using a web server, start it here
                            # Uncomment and modify the line below based on your setup
                            # e.g., start web server command like:
                            # nohup php -S 0.0.0.0:8000 &

                            echo "Deployment completed."
                        EOF
                    '''
                }
            }
        }
    }
}
