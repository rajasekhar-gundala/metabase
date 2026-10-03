FROM metabase/metabase:latest

# Switch to the root user to install system packages
USER root

# Install the missing C++ standard library and glibc compatibility layers
RUN apk add --no-cache libstdc++ gcompat libc6-compat

# Switch back to Metabase's default non-root user for security
USER 200
