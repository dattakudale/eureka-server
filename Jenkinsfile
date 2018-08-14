pipeline {
  agent any

	tools {
	    maven 'mvn-3.5.2'
	}
    stages {
        stage('build') {
            steps {
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                sh 'mvn clean install'
            }
        }
        
        stage('Make Container') {
	      steps {
			    sh "docker build -t eureka-server:${env.BUILD_ID} ."
			    sh "docker tag eureka-server:${env.BUILD_ID} eureka-server:latest"
	      }
    	}
    }
    
  post {
	    always {
	      archive 'target/**/*.jar'
	      junit 'target/**/*.xml'
	    }
    }    
    
}
