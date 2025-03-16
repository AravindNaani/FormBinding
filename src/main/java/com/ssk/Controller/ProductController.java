package com.ssk.Controller;

import com.ssk.binding.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ProductController {
    @GetMapping("/")
    public  String getProductForm(Model model){

        Product productObj = new Product();

        model.addAttribute("product",productObj);

        return "form";
    }
    @PostMapping("/product")
    public  String handleFormData(Product product, Model model){
        System.out.println(product);
        model.addAttribute("msg","Product Saved sucessfully....");
        return "sucess";
    }
}
