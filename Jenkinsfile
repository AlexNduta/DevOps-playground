pipeline {
  agent{
    dockerContainer { image 'python:3.9-slim' }
  }
  stages {
    stage('Run my python') {
      steps {
         sh 'python3 hello_world.py'
      }
     
    }
  }

}
