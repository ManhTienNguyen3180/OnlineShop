# Sử dụng một base image chứa Tomcat và Java
FROM tomcat:10-jdk8-openjdk-slim


# Tạo thư mục để chứa ứng dụng
RUN mkdir /usr/local/tomcat/webapps/MyShop

# Sao chép tất cả các tệp từ thư mục dist của NetBeans vào thư mục webapps của Tomcat
COPY ./dist/MyShop.war /usr/local/tomcat/webapps/MyShop/

# Expose cổng mặc định của Tomcat
EXPOSE 9999

# Command khi container khởi động
CMD ["catalina.sh", "run"]
