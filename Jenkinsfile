/*
pipeline {
    agent any

    stages {
        stage('Deploy to Instance 1') {
            steps {
                sshagent(['SSHtoken']) {
                    sh '''
                        ssh -o StrictHostKeyChecking=no ec2-user@13.201.137.23 << 'EOF'
                            # Ensure the directory exists or create it
                            mkdir -p /home/ec2-user/application
                            cd /home/ec2-user/application

                            # If git repo exists, pull the latest changes; if not, clone it
                            if [ -d ".git" ]; then
                                git pull origin main
                            else
                                git clone https://github.com/sandeep23blr/wordpress.git .
                            fi

                            # Check if the start script exists, if not, provide an error message
                            if [ -f ./start_application.sh ]; then
                                chmod +x ./start_application.sh
                                ./start_application.sh
                            else
                                echo "Error: Application start script './start_application.sh' not found."
                                exit 1
                            fi
                        EOF
                    '''
                }
            }
        }

        stage('Deploy to Instance 2') {
            steps {
                sshagent(['SSHtoken']) {
                    sh '''
                        ssh -o StrictHostKeyChecking=no ec2-user@43.204.149.185 << 'EOF'
                            # Ensure the directory exists or create it
                            mkdir -p /home/ec2-user/application
                            cd /home/ec2-user/application

                            # If git repo exists, pull the latest changes; if not, clone it
                            if [ -d ".git" ]; then
                                git pull origin main
                            else
                                git clone https://github.com/sandeep23blr/wordpress.git .
                            fi

                            # Check if the start script exists, if not, provide an error message
                            if [ -f ./start_application.sh ]; then
                                chmod +x ./start_application.sh
                                ./start_application.sh
                            else
                                echo "Error: Application start script './start_application.sh' not found."
                                exit 1
                            fi
                        EOF
                    '''
                }
            }
        }
    }
}
*/
pipeline {
    agent any

    stages {
        stage('Deploy to Instance 2') {
            steps {
                sshagent(['SSHtoken']) {
                    sh '''
                        ssh -o StrictHostKeyChecking=no ec2-user@13.201.137.23 << 'EOF'
                            # Ensure the directory exists or create it
                            mkdir -p /home/ec2-user/application
                            cd /home/ec2-user/application

                            # If git repo exists, pull the latest changes; if not, clone it
                            if [ -d ".git" ]; then
                                git pull origin main
                            else
                                git clone https://github.com/sandeep23blr/wordpress.git .
                            fi

                            # Start the application using a built-in command (e.g., Apache, Nginx, or another command based on your setup)
                            # Assuming a web application that runs on a web server, you might need to use:
                            # For example, if it's a PHP application:
                            # sudo systemctl restart httpd  # For Apache
                            # or
                            # sudo systemctl restart nginx    # For Nginx

                            # If you need to run a specific command, replace the line below:
                            echo "Deploying application..."
                            
                            # Uncomment and modify this line according to your application's requirements
                            # e.g., if you are using a built-in PHP server for WordPress, you might run:
                            # php -S 0.0.0.0:8000 &

                            echo "Deployment completed."
                        EOF
                    '''
                }
            }
        }
    }
}
