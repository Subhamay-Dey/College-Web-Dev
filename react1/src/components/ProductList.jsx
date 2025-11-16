import React from 'react'
import ProductCard from './ProductCard'

function ProductList() {

    const productData = [
    { id: 1, name: 'Laptop Pro', price: 1200.00, stock: 5 },
    { id: 2, name: 'Wireless Mouse', price: 25.50, stock: 12 },
    { id: 3, name: 'Mechanical Keyboard', price: 89.99, stock: 0 },
    { id: 4, name: '4K Monitor', price: 350.00, stock: 8 },
];

    return (
        <div style={{ display: 'flex', flexWrap: 'wrap' }}>
            <h2>Available Products</h2>
            
            {productData.map((product) => (
                
                <ProductCard 
                    key={product.id}
                    product={product}
                />
            ))}
        </div>
    );
};

export default ProductList;