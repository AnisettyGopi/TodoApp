pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', changelog: false, poll: false, url: 'https://github.com/AnisettyGopi/TodoApp.git'
            }
        }
        stage('Deploy') {
            steps {
                
                sh "python3 install -r requirements.txt"
                sh "python3 run.py"
                
            }
        }
    }
}
