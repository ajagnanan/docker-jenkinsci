FROM jenkinsci/jenkins:2.34
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y ruby build-essential libssl-dev
RUN apt-get install -y nodejs npm
RUN npm install -g n && n lts && npm install -g npm@latest-2
RUN npm install -g grunt-cli bower istanbul mocha jsinspect buddy eslint codeclimate-test-reporter  && echo '{ "allow_root": true }' > /root/.bowerrc
RUN curl -O https://bootstrap.pypa.io/get-pip.py && python get-pip.py
RUN pip install awscli
RUN npm install -g serverless@0.5.5
