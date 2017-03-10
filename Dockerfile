FROM ubuntu:16.04
# Published from http://github.com/aeimer

ENV MH_USER mhog
ENV MH_PWD mhog123

USER root

# Install MailHog
RUN apt-get update \
  && apt install -y golang-go wget \
  && export GOPATH=~/go \
  && cd \
  && wget https://github.com/mailhog/MailHog/releases/download/v0.2.1/MailHog_linux_amd64 \
  && cp MailHog_linux_amd64 /usr/bin/mailhog \
  && chmod +x /usr/bin/mailhog

# Expose the SMTP and HTTP ports:
EXPOSE 1025 8025

CMD "echo $(echo $MH_USER):$(mailhog bcrypt $MH_PWD) > auth_file && mailhog -auth-file auth_file"
