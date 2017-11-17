pipeline {

    agent {
        docker {
            image 'maven'
        }
    }
  
    stages {
        stage('Build') {
            steps {
                echo 'Building...1'
                sh 'mvn test'
            }
        }
    }
    
    
}
