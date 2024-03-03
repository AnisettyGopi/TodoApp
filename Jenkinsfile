pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch:"main" url:"https://github.com/AnisettyGopi/TodoApp.git"
            }
        }
        stage('Deploy') {
            steps {
                dir("TodoApp") {
                    sh "python run.py"
                }
            }
        }
    }
}
