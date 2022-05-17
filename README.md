# tfsec-container

## Rego Policies
- In order to write rego policies, you can find the structure of models for each provider under [defsec](https://github.com/aquasecurity/defsec/blob/master/pkg/providers/aws/aws.go). The `tfsec` architecture [doc](https://github.com/aquasecurity/tfsec/blob/master/ARCHITECTURE.md) does a good job of explaining the process

**Test Commands**
```bash
docker build . -t tfsec-test
docker run --rm -it -v "$(pwd)/test-eks:/src" tfsec-test /src --rego-policy-dir /app/policies --custom-check-dir /app/checks
```
