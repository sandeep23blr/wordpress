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
                                    git pull origin main
                                else
                                    git clone https://github.com/sandeep23blr/wordpress.git .
                                fi

                                # Assuming you want to run the application using a command, replace with the actual command
                                # For example, if it's a PHP application:
                                nohup php -S 0.0.0.0:8000 &

                                # Or if it's a Node.js application:
                                # nohup node app.js &

                                # Add any other commands necessary to run your application
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
                                    git pull origin main
                                else
                                    git clone https://github.com/sandeep23blr/wordpress.git .
                                fi

                                # Assuming you want to run the application using a command, replace with the actual command
                                # For example, if it's a PHP application:
                                nohup php -S 0.0.0.0:8000 &

                                # Or if it's a Node.js application:
                                # nohup node app.js &

                                # Add any other commands necessary to run your application
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
