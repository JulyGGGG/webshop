package cn.itbaizhan.po;

/**
 * 传入商品id和url封装
 */

public class ProductVO {

    private int commodityId;
    private String image;

    public int getId() {
        return commodityId;
    }

    public void setId(int commodityId) {this.commodityId = commodityId;}

    public String getImageUrl() {
        return image;
    }

    public void setImageUrl(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "ProductVO{" +
                "id=" + commodityId +
                ", imageUrl='" + image + '\'' +
                '}';
    }
}
