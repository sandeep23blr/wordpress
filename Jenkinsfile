/*
pipeline {
    agent any

    stages {
        stage('Deploy to Instance 1') {
            steps {
                sshagent(['SSHtoken']) {
                    sh '''
                        ssh -o StrictHostKeyChecking=no ec2-user@13.127.81.47 << 'EOF'
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
