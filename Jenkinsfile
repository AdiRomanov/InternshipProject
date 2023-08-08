pipeline {
    agent any
    
    stages {
        stage('Hello') {
            steps {
                script {
                    echo 'Hello, Jenkins!'
                    currentBuild.result = 'SUCCESS'
                }
            }
        }
        
        stage('Test') {
            steps {
                script {
                    def log = currentBuild.rawBuild.getLog(100)
                    if (log.contains('Hello, Jenkins!')) {
                        echo 'Test passed: "Hello, Jenkins!" message found.'
                    } else {
                        error 'Test failed: "Hello, Jenkins!" message not found.'
                    }
                }
            }
        }
    }
}
