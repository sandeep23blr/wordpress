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
                        // Execute the command
                        sh deployCommand2
                    }
                }
            }
        }
    }
}
