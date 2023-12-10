# Sử dụng một base image chứa Tomcat và Java
FROM tomcat


# Sao chép tất cả các tệp từ thư mục dist của NetBeans vào thư mục webapps của Tomcat
COPY ./dist/MyShop.war /usr/local/tomcat/webapps/MyShop.war/

# Expose cổng mặc định của Tomcat
EXPOSE 8080


