<taglib xmlns="http://java.sun.com/xml/ns/javaee" 
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
        xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-app_3_0.xsd"
        version="2.0">
    <tlib-version>1.0</tlib-version>
    <short-name>customTags</short-name>
    <uri>http://yourdomain.com/custom-tags</uri>
    
    <tag>
        <name>copyright</name>
        <tag-class>your.package.name.CopyrightTag</tag-class>
        <body-content>empty</body-content>
    </tag>
</taglib>
