# tfsec-container

**Test Commands**
```bash
docker build . -t tfsec-test
docker run --rm -it -v "$(pwd)/test-eks:/src" tfsec-test /src --rego-policy-dir /app/policies --custom-check-dir /app/checks
```