FROM aquasec/tfsec

WORKDIR /app

ADD checks /app/checks
ADD rules /app/rules
