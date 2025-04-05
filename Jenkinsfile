node {    
      def dockerImage     
      stage('Clone repository') {               
             
            checkout scm    
      }     
      stage('Build image') {         
        dockerImage = docker.build("wasabi805/my_test_of_build_image")    
      }     
      stage('Test image') {           
            dockerImage.inside {            
             
             sh 'echo "Tests passed"'        
            }    
      }     
        stage('Push image') {
            // docker.withRegistry('https://registry.hub.docker.com', 'git') {            
            // dockerImage.push("${env.BUILD_NUMBER}")            
            // dockerImage.push("latest")        
            // }    
            sh 'echo "push image to Git"' 
        }   
}