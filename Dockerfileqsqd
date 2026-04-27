FROM ubuntu:22.04

# Prevent interactive prompts during apt-get
ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies: python3, pip, swaks, and other tools
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    swaks \
    curl \
    wget \
    perl \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy your Python script and requirements
COPY test.py requirements.txt ./

# Install Python dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the rest of your files (DKIM key, list.txt, body.html, etc.)
COPY . .

# Make sure the script is executable
RUN chmod +x test.py

# Run the script (it will exit when done – that's fine for a one-shot task)
CMD ["python3", "test.py"]
