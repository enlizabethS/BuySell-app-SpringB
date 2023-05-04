package com.example.buysell.services;

import com.example.buysell.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;
    {
        products.add(new Product(++ID,"PlayStation 5 ","Simple description",55000,"Moscow","Nikolay"));
        products.add(new Product(++ID,"Nintendo ","Simple description",35000,"Moscow","Anton"));
    }
    public List<Product> listProducts(){ return products; }

    public void saveProduct(Product product){
        product.setId(++ID);
        products.add(product);
    }
    public void deleteProduct(Long id){
        products.removeIf(product -> product.getId().equals(id));
    }

    public Product getProductById(Long id) {
        for(Product product :products){
            if(product.getId().equals(id)) return product;
        }
        return null;
    }
}
