FROM aquasec/tfsec

WORKDIR /app

ADD checks /app/checks
ADD policies /app/policies
COPY tfsec.yml /app/

ENTRYPOINT ["tfsec", "--rego-policy-dir", "/app/policies", "--custom-check-dir", "/app/checks", "--config-file", "/app/tfsec.yml"]
