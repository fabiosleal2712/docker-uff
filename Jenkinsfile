pipeline {
    agent any
    stages {
        // ...existing code...
        stage('Clonar Repositório') {
            steps {
                script {
                    sh '''
                    ssh devinfomarcas@72.60.5.211 '
                        if [ ! -d ~/docker-taxifort ]; then
                            git clone git@gitlab.com:fabiosleal2712/docker-taxifort.git ~/docker-taxifort;
                        fi &&
                        cd ~/docker-taxifort &&
                        git pull
                    '
                    '''
                }
            }
        }
        stage('Reiniciar Containers') {
            steps {
                script {
                    sh '''
                    ssh devinfomarcas@72.60.5.211 '
                        cd ~/docker-taxifort &&
                        docker-compose down &&
                        docker-compose up -d
                    '
                    '''
                }
            }
        }
    }
}
