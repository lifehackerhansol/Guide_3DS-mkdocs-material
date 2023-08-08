FROM nginx:stable-bullseye

# setup work directory
RUN mkdir /opt/nginx-testing
WORKDIR /opt/nginx-testing

# setup Python 3
RUN apt-get update && apt-get install -y python3 python3-pip python3-venv

# why is this a problem
RUN python3 -m venv venv
RUN . venv/bin/activate

# Get stuff copied
COPY requirements.txt .

# Install deps
RUN pip3 install -r requirements.txt

COPY _pages _pages
COPY _configs _configs
COPY extras extras
COPY mkdocs-base-config.yml .

# Build site
RUN python3 -m mkdocs build --verbose --clean
RUN cp -r /opt/nginx-testing/site/* /usr/share/nginx/html/

COPY nginx-test.conf /etc/nginx/conf.d/default.conf

# serve site
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]
