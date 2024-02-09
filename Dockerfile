# Fluent Bit Dockerfile

FROM public.ecr.aws/aws-observability/aws-for-fluent-bit:stable

# Copy the redact.conf file into the /fluent-bit/configs/ directory
COPY redact.conf /fluent-bit/configs/redact.conf

# Other configurations or instructions for Fluent Bit can go here

# Entry point for Fluent Bit
ENTRYPOINT ["fluent-bit"]