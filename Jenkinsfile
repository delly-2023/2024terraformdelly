pipeline {

        agent any
        // tools 'Terraform'

        stages {
        
            stage('Checkout') {
                steps {
                    git branch: 'main', credentialsId: 'me', url: 'https://github.com/delly-2023/2024terraformdelly.git'
                }
            }
            stage('terraform format check') {
                steps{ 
                    sh 'terraform fmt'
                }
            }
            stage ("terraform init") {
                steps {
                    sh ('terraform init')
                }
            }
            stage ("terraform apply") {
                steps {
                    // echo "Terraform action is –> ${action}"
                    sh 'terraform apply --auto-approve'
                }
            }
        }
}
