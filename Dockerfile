FROM amazon/aws-for-fluent-bit:latest
ADD redact.conf /redact.conf
ADD mask.lua /mask.lua