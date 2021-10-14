package Beans;

public class ProductosBeans {
    
    int cod;
    String nom;
    String descrp;
    String marca;
    int stock;
    double precio;
    String categoria;
    double desc;

    public ProductosBeans(int cod, String nom, String descrp, String marca, int stock, double precio, String categoria, double desc) {
        this.cod = cod;
        this.nom = nom;
        this.descrp = descrp;
        this.marca = marca;
        this.stock = stock;
        this.precio = precio;
        this.categoria = categoria;
        this.desc = desc;
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDescrp() {
        return descrp;
    }

    public void setDescrp(String descrp) {
        this.descrp = descrp;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public double getDesc() {
        return desc;
    }

    public void setDesc(double desc) {
        this.desc = desc;
    }

    

    
}
