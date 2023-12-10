# Sử dụng một base image chứa Tomcat và Java 8
FROM tomcat:10-jre8

# Tạo thư mục để chứa ứng dụng
RUN mkdir /usr/local/tomcat/webapps/myapp

# Sao chép file WAR đã build vào thư mục webapps
COPY dist/MyShop.war /usr/local/tomcat/webapps/myapp

# Expose cổng mặc định của Tomcat
EXPOSE 8080

# Command khi container khởi động
CMD ["catalina.sh", "run"]
