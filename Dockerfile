FROM aquasec/tfsec

WORKDIR /app

ADD checks /app/checks
ADD policies /app/policies
