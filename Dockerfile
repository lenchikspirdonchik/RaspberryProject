FROM arm64v8/python:3.11-bullseye

# Copy the Python Script to blink LED
COPY main.py ./

# Intall the rpi.gpio python module
RUN pip3 install --no-cache-dir rpi.gpio

# Trigger Python script
CMD ["python3", "./main.py"]
