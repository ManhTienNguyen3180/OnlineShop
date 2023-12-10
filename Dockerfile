# Sử dụng một base image chứa Tomcat và Java
FROM tomcat:10-jdk8-openjdk-slim

RUN rm -r /usr/local/tomcat/webapps
RUN mv /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps
# Tạo thư mục để chứa ứng dụng
RUN mkdir /usr/local/tomcat/webapps/app

# Sao chép tất cả các tệp từ thư mục dist của NetBeans vào thư mục webapps của Tomcat
COPY ./dist/MyShop.war /usr/local/tomcat/webapps/app/

# Expose cổng mặc định của Tomcat
EXPOSE 8080

# Command khi container khởi động
CMD ["catalina.sh", "run"]
