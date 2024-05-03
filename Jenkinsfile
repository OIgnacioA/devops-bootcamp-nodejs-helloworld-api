pipeline {
    agent any
    tools {
      nodejs 'nodejs'

    }
    stages {
        stage('Checkout') {
            steps {
                // Paso para clonar el repositorio
                checkout scm
            }
        }
        
        stage('Install') {
            environment {
                // Establecer la ruta de instalación de Node.js
                NODEJS_HOME = tool name: 'nodejs', type: 'jenkins.plugins.nodejs.tools.NodeJSInstallation'
                PATH = "${env.NODEJS_HOME}/bin:${env.PATH}"
            }
            steps {
                // Paso para instalar las dependencias de Node.js
                bat 'npm install'
            }
        }
        
        stage('Test') {
            steps {
                // Paso para ejecutar las pruebas
                bat 'npm test'
            }
        }
    }
}










// pipeline {
//     agent any
//     tools {
//         nodejs 'nodejs'
//     }
//     stages {
//         stage('Build') {
//             steps {
//                 echo "Ejecutar npm install" 
//                 sh 'npm install'
//             }
//         }

//         stage('Test') {
//             steps {
//                 echo "Ejecutar npm test push" 
//                 sh 'npm test'
//             }
//         }
//     }
// }