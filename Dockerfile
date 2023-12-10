# Sử dụng hình ảnh Tomcat 9.0.1 với Java 8 trên Alpine Linux
FROM tomcat:9.0.1-jre8-alpine

# Sao chép file WAR vào thư mục webapps của Tomcat
COPY ./MyShop.war /usr/local/tomcat/webapps/

# Sao chép tệp tomcat-users.xml vào thư mục conf của Tomcat để cung cấp thông tin đăng nhập cho Tomcat Manager
COPY ./tomcat-users.xml /usr/local/tomcat/conf/

# Expose cổng 8080 để có thể truy cập ứng dụng từ bên ngoài container
EXPOSE 8080

# CMD để chạy Tomcat trong chế độ foreground khi container được khởi động
CMD ["catalina.sh", "run"]
