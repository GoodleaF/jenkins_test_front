# Nginx를 베이스 이미지로 사용
FROM nginx:alpine

# 기존 기본 사이트 콘텐츠 삭제
RUN rm -rf /usr/share/nginx/html/*

# 빌드된 dist 폴더의 내용을 Nginx의 기본 웹 디렉터리로 복사
COPY dist /usr/share/nginx/html

# 컨테이너에서 80 포트 개방
EXPOSE 80

# Nginx를 포그라운드에서 실행
CMD ["nginx", "-g", "daemon off;"]
