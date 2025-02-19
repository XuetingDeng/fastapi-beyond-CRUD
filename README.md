## 🐳 How to Run the Project on Docker

### 👾 Instructions for Testing on Docker

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
   
8. Delete container and cache:
   ```bash
   docker-compose down -v
   ```

### ☀️ Testing the Conventional Commits Action
To test the conventional commits action:
1. Create a new test branch
   ```bash
   git checkout -b test-bad-commit
   ```
2. Create a non-compliant commit
   ```bash
   echo "This is a test." > test.txt
   git add test.txt
   git commit -m "updated test file"
   ```
3. Push to GitHub and create a PR
   ```bash
   git push origin test-bad-commit
   ```
5. Go to project homepage, click "Pull requests", then click "New pull request". Select your test-bad-commit branch as the "compare" branch, and the "base" branch as main. Submit the PR.
6. GitHub Actions Will be Triggered
7. Log in to Ethereal

   https://ethereal.email/
9. Username and Password
    
   alexzander.wilkinson@ethereal.email
   
   9K1T26U8jJV41cVEDH

### 🌛 Testing the Nightly Build Action
To test the nightly build action:
1. Go to the GitHub Actions tab in your repository.
2. Find the Nightly Build workflow.
3. Click Run workflow and ensure the base source is the main branch.

### 🟢 Docker Hub Information
* My Docker Hub Link: https://hub.docker.com/repositories/annki
* Repository Link: https://hub.docker.com/repository/docker/annki/fastapi-beyond-crud/general
* My Docker Hub Username: annki

### 🟢 Email Configuration (Ethereal)
* Host: smtp.ethereal.email
* Port: 587
* Username: alexzander.wilkinson@ethereal.email
* Password: 9K1T26U8jJV41cVEDH

### Project Requirements
#### Part 1: Conventional Commits
1. All Pull Requests (PRs) must follow the **Conventional Commits** format.
2. If a PR does not follow the Conventional Commits format (invalid), it will be **automatically closed**.
3. Failure notifications are sent via **Ethereal Email**.

#### Part 2: Nightly Build
1. The workflow runs, builds, and tests the application every night at around **12 AM PTD** (Pacific Daylight Time). It can also be **manually** triggered.
2. If all tests pass, the Docker image will be pushed to **Docker Hub**.
3. If any test fails, a failure notification is sent via **Ethereal** Email.

### List of Changes
* .github/workflows/commit-check.yml: Added GitHub Actions workflow for Conventional Commits validation.
* .github/workflows/nightly-build.yml: Implemented nightly builds with Docker image push to Docker Hub.
* .commitlintrc.json:
* .env.example: edit with my config
* Dockerfile: change src/main to src __init__.py
* compose.yml: env file, ports, commands
* requirements.txt: add pytest
