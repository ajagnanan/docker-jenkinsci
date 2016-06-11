FROM jenkinsci/jenkins:2.8
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y ruby build-essential libssl-dev
RUN apt-get install -y nodejs npm
RUN npm install -g n && n lts && npm install -g npm
RUN npm install -g grunt-cli bower istanbul mocha jsinspect buddy eslint && echo '{ "allow_root": true }' > /root/.bowerrc
