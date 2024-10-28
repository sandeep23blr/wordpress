pipeline {
    agent any

    stages {
        stage('Deploy to Instance 1') {
            steps {
                sshagent(['SSHtoken']) {
                    script {
                        // Define the SSH command for Instance 1
                        def deployCommand1 = '''
                            ssh -o StrictHostKeyChecking=no ec2-user@13.200.222.156 << 'EOF'
                            # Ensure the directory exists or create it
                            mkdir -p /home/ec2-user/application
                            cd /home/ec2-user/application

                            # If git repo exists, pull the latest changes; if not, clone it
                            if [ -d ".git" ]; then
                                git config pull.rebase false  # Prevent divergent branches error
                                git pull origin main
                            else
                                git clone https://github.com/sandeep23blr/wordpress.git .
                            fi

                            # Check if the application is already running and kill it if necessary
                            if pgrep -f "php -S 0.0.0.0:8000"; then
                                echo "Stopping existing application..."
                                pkill -f "php -S 0.0.0.0:8000"
                            fi

                            # Run the application using PHP
                            nohup php -S 0.0.0.0:8000 &

                            echo "Application started."
                            EOF
                        '''
                        // Execute the command
                        sh deployCommand1
                    }
                }
            }
        }

        stage('Deploy to Instance 2') {
            steps {
                sshagent(['SSHtoken']) {
                    script {
                        // Define the SSH command for Instance 2
                        def deployCommand2 = '''
                            ssh -o StrictHostKeyChecking=no ec2-user@13.201.137.23 << 'EOF'
                            # Ensure the directory exists or create it
                            mkdir -p /home/ec2-user/application
                            cd /home/ec2-user/application

                            # If git repo exists, pull the latest changes; if not, clone it
                            if [ -d ".git" ]; then
                                git config pull.rebase false  # Prevent divergent branches error
                                git pull origin main
                            else
                                git clone https://github.com/sandeep23blr/wordpress.git .
                            fi

                            # Check if the application is already running and kill it if necessary
                            if pgrep -f "php -S 0.0.0.0:8000"; then
                                echo "Stopping existing application..."
                                pkill -f "php -S 0.0.0.0:8000"
                            fi

                            # Run the application using PHP
                            nohup php -S 0.0.0.0:8000 &

                            echo "Application started."
                            EOF
                        '''
                        // Execute the command
                        sh deployCommand2
                    }
                }
            }
        }
    }
}
