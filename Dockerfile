# 베이스 이미지를 설정합니다. 여기서는 Python 3.9 슬림 이미지를 사용합니다.
FROM python:3.9-slim

# 작업 디렉토리를 설정합니다.
WORKDIR /app

# 필요한 패키지를 설치합니다.
COPY setting.txt .
RUN pip install --no-cache-dir -r setting.txt

# 애플리케이션 소스를 복사합니다.
COPY . .

# resumekeyword.py를 실행합니다.
CMD ["python", "resumekeyword.py"]
