package cn.itbaizhan.action;

import org.springframework.web.multipart.MultipartFile;

/**
 * 文件上传工具类
 */

public class UploadUtil {
    public MultipartFile getImage() {
        return image;
    }

    public void setImage(MultipartFile image) {
        this.image = image;
    }

    /*
            这里的字段image必须和上传页面upload.jsp中的image
            <input type="file" name="image" accept="image/*" />一样的名字
        */
    private MultipartFile image;

}
