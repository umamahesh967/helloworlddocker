pipeline {

    agent {
        docker {
            image 'maven'
        }
    }

  environment{
    
  }
  
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'mvn clean build'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'mvn test'
            }
        }
    }
    
    post{
      sh 'docker build -t test .'
      sh 'docker run test '
    }
}
