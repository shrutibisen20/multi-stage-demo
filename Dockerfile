# Stage 1: Build stage
FROM python:3.12-slim AS builder

WORKDIR /app
COPY app.py .
RUN python -m py_compile app.py

# Stage 2: Final stage
FROM python:3.12-slim AS final

WORKDIR /app
COPY --from=builder /app/app.py .
CMD ["python", "app.py"]
