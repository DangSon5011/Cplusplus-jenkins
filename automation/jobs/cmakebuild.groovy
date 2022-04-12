pipeline {
    agent any
    parameters {
        string(name: 'PROJECT_NAME', description: "Project's name to build with CMake",
                defaultValue: 'Project1')
    }
    stages {
        stage('Build') {
            steps {
                sh """
                cmake -G "MinGW Makefiles" -B build/ Project/${PROJECT_NAME}
                cmake --build build/
                ./build/${PROJECT_NAME}.exe
                """
            }
        }

    }
}