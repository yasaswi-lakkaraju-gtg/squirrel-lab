FROM alpine:latest

RUN apk add bash
# Create a non-root user and group
RUN groupadd -r myuser && useradd -r -g myuser myuser

# Create a directory and set permissions
RUN mkdir /app && chown myuser:myuser /app

# Switch to the non-root user
USER myuser

# Example command that runs as the non-root user
WORKDIR /app
CMD ["echo", "Hello from myuser!"]
ADD dummy.txt .
