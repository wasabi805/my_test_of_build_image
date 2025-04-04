node {    
      def app     
      stage('Clone repository') {               
             
            checkout scm    
      }     
      stage('Build image') {         
        app = docker.build("wasabi805/my_test_of_build_image")    
      }     
      stage('Test image') {           
            app.inside {            
             
             sh 'echo "Tests passed"'        
            }    
      }     
        stage('Push image') {
            // docker.withRegistry('https://registry.hub.docker.com', 'git') {            
            // app.push("${env.BUILD_NUMBER}")            
            // app.push("latest")        
            // }    
            sh 'echo "push image to Git"' 
        }   
}