package com.sun.struts.example.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

public class ImageAction extends ActionSupport {
    private String imagePath = "C:\\Users\\hieut\\OneDrive\\Desktop\\hieuxuog\\anh\\goten.jpg";

    public String execute() {
        try {
            HttpServletResponse response = ServletActionContext.getResponse();
            File file = new File(imagePath);
            InputStream in = new FileInputStream(file);
            response.setContentType("image/jpeg");
            byte[] buffer = new byte[4096];
            while (in.read(buffer, 0, buffer.length) != -1) {
                response.getOutputStream().write(buffer);
            }
            in.close();
            response.getOutputStream().flush();
            response.getOutputStream().close();
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        }
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }
}
