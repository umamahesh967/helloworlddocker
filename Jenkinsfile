pipeline {

    agent {
        docker {
            image 'maven'
        }
    }
  
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'mvn package'
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
