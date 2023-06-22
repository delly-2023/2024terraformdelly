pipeline {

        agent any
        // tools 'Terraform'

        stages {
        
            stage('Checkout') {
                steps {
                    git branch: 'main', credentialsId: 'me', url: ''
                }
            }
            stage ("terraform init") {
                steps {
                    sh ('terraform init')
                }
            }
            stage ("terraform Action") {
                steps {
                    // echo "Terraform action is –> ${action}"
                    sh 'terraform apply --auto-approve'
                }
            }
        }
}
