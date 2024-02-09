# Fluent Bit Dockerfile

FROM public.ecr.aws/aws-observability/aws-for-fluent-bit:stable

# Copy the redact.conf file into the /fluent-bit/configs/ directory
COPY redact.conf /fluent-bit/configs/redact.conf

# Set the working directory
WORKDIR /fluent-bit

# Entry point for Fluent Bit with the configuration file
ENTRYPOINT ["fluent-bit", "-c", "/fluent-bit/configs/redact.conf"]