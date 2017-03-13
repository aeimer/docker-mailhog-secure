# Secure Mailhog Docker Image

- https://github.com/aeimer/docker-mailhog-secure
- https://hub.docker.com/r/aeimer/mailhog-secure

## What and Why
This secured Mailhog-Image is created by me for a university-project. I had running this Image on a public server, so I had to secure the frontend.
You only will be able to access the Mailhog with the HTACCESS-Credentials you set on run.

This instance will run with a in-memory-database, so if you stop the container it could happen, that all information are lost.

## Run
`docker run -td -e 'MH_USER=myuser' -e 'MH_PWD=mypw' -p 25:1025 -p 8025:8025 aeimer/mailhog-secure`

The default credentials are `mhog` => `mhog123`, change them with the environment-variables `MH_USER` and `MH_PWD`.
