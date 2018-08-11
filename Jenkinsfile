pipeline {
    agent any
    
    stages {
        stage('Docker Version') {
            steps {
                sh 'docker version'
            }
        }

        stage('Docker images') {
            steps {
                sh 'docker images'
            }
        }


        stage('Artifactory configuration') {
           steps {
             script {
                def server = Artifactory.server 'server'
                def rtDocker = Artifactory.docker server: server
                server.bypassProxy = true
                def buildInfo = rtDocker.push 'http://jfrog.baladigitalcloud.com:80/artifactory/dockerdemo/hello-world:latest', 'dockerdemo'
                server.publishBuildInfo buildInfo
    }
  }
 }





    }
}
