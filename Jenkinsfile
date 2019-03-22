pipeline {
    agent { docker 'narenas/python-jenkins:0.1' }
    stages {
        stage('Setting up environment') {
            steps {
                sh '''
                apk add --no-cache postgresql-libs && \
                apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev
                pip install -r project/requirements.txt
                cd project
                python run.py
                '''
            }
        }
    }
}
