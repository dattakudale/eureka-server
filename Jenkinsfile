pipeline {
	
   agent none
	
    stages {
	  
        stage('build') {
	    	agent { 
	    		docker { 
	    					image 'maven:3.3.3' 
	    					args '-v $HOME/.m2:/root/.m2'
	    			} 
	    	} 	
		 
            steps {
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                sh 'mvn clean install'
            }
        }
        
        stage('Make Container') {
          agent any
	      steps {
			    sh "docker build -t eureka-server:${env.BUILD_ID} ."
			    sh "docker tag eureka-server:${env.BUILD_ID} eureka-server:latest"
	      }
    	}
    }
     
    
}
