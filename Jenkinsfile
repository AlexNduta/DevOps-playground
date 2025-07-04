pipeline {
  agent{
    docker {image 'python:3.9-slim'}
  }
  stages {
    stage('Run my python') {
      sh 'python3 hello_world.py'
    }
  }

}
