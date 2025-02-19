## How to Run the Project

### Instructions for Testing on Docker

1. Pull the main branch of the GitHub repository:
   ```bash
   git clone https://github.com/XuetingDeng/fastapi-beyond-CRUD.git
   cd fastapi-beyond-CRUD
   ```

2. Copy the .env.example file to .env:
   ```bash
   cp .env.example .env
   ```

3. Start the Docker containers:
   ```bash
   docker-compose up
   ```

4. Once the services are running, open your browser and navigate to:
   ```bash
   http://localhost:8000/api/v1/docs
   ```

5. To run the tests, open another terminal and enter the Docker container:
   ```bash
   docker exec -it fastapi-beyond-crud-web-1 /bin/bash
   ```

6. Inside the container, run the tests using:
   ```bash
   pytest
   ```
   or
   ```bash
   pytest src/tests/
   ```

7. After running the tests, exit the container:
   ```bash
   exit
   ```
