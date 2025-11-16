import React from 'react'

function ProductCard(props) {

    const { name, price, stock } = props.product

    const stockStyle = {
        color: stock > 0 ? 'green' : 'red',
        fontWeight: 'bold'
    };

    return (
        <>
            <div style={{ border: '1px solid #ccc', padding: '15px', margin: '10px', width: '300px' }}>
                <h3>{name}</h3>
                <p>Price: ${price.toFixed(2)}</p>
                <p style={stockStyle}>
                    {stock > 0 ? `In Stock: ${stock}` : 'Out of Stock'}
                </p>
                <button disabled={stock === 0}>Add to Cart</button>
            </div>
        </>
    )
}

export default ProductCard