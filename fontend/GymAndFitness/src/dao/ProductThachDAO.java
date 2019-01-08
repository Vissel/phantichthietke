package dao;

import java.util.List;

import model.ProductThach;

public interface ProductThachDAO {
List<ProductThach> listProduct();
void addProduct(ProductThach product);
ProductThach getOneProduct(int productID);
void editProduct(ProductThach product, int productID);
void deleteProduct(int productID);
}
