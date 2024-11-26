<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add/Edit Product</title>
    <style>
        /* General page styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        
        /* Container for the form */
        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            box-sizing: border-box;
        }

        /* Form title */
        .form-container h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        /* Label and input styles */
        label {
            font-size: 14px;
            color: #555;
            display: block;
            margin-bottom: 5px;
        }
        
        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }
        
        input[type="text"]:focus,
        input[type="number"]:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 3px rgba(0, 123, 255, 0.3);
        }

        /* Button styling */
        button {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            color: #fff;
            cursor: pointer;
            margin-top: 10px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }

        /* Link styling */
        a {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #007bff;
            text-decoration: none;
            font-size: 14px;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>${product.id == null ? 'Add Product' : 'Edit Product'}</h2>
    <form action="${product.id != null ? '/products/edit/' + product.id : '/products/add'}" method="post">

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${product.name}" required>

        <label for="description">Description:</label>
        <input type="text" id="description" name="description" value="${product.description}" required>

        <label for="price">Price:</label>
        <input type="number" id="price" name="price" value="${product.price}" required>

        <label for="quantity">Quantity:</label>
        <input type="number" id="quantity" name="quantity" value="${product.quantity}" required>

        <button type="submit">Save</button>
    </form>
    <a href="/products">Back to List</a>
</div>
</body>
</html>
