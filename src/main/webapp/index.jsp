<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Movie App</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, Helvetica, sans-serif;
            background-color: #0d0d0d;
            color: white;
        }

        header {
            background-color: #1a1a1a;
            padding: 15px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 8px rgba(0,0,0,0.4);
        }

        header h2 {
            margin: 0;
            color: #ffcc00;
        }

        .search-box input {
            padding: 8px 10px;
            width: 260px;
            border-radius: 5px;
            border: none;
            outline: none;
        }

        .movie-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
            gap: 20px;
            padding: 40px;
        }

        .movie-card {
            background-color: #1a1a1a;
            border-radius: 8px;
            overflow: hidden;
            cursor: pointer;
            transition: 0.3s;
        }

        .movie-card:hover {
            transform: scale(1.05);
        }

        .movie-card img {
            width: 100%;
            height: 260px;
            object-fit: cover;
        }

        .movie-card h4 {
            margin: 10px;
            font-size: 16px;
            text-align: center;
        }

        .movie-card p {
            margin: 0;
            padding: 0 0 10px 0;
            text-align: center;
            color: #cccccc;
        }
    </style>
</head>
<body>

<header>
    <h2>Movie App</h2>

    <form action="movies/search" method="get" class="search-box">
        <input type="text" name="q" placeholder="Search movies..." />
    </form>
</header>

<h2 style="padding-left: 40px; margin-top: 20px;">Popular Movies</h2>

<div class="movie-container">

    <!-- SAMPLE MOVIE CARDS (Replace with dynamic data later) -->
    <div class="movie-card" onclick="location.href='movies?id=1'">
        <img src="https://via.placeholder.com/300x400" alt="Movie">
        <h4>Sample Movie 1</h4>
        <p>Action | 2024</p>
    </div>

    <div class="movie-card" onclick="location.href='movies?id=2'">
        <img src="https://via.placeholder.com/300x400" alt="Movie">
        <h4>Sample Movie 2</h4>
        <p>Drama | 2023</p>
    </div>

    <div class="movie-card" onclick="location.href='movies?id=3'">
        <img src="https://via.placeholder.com/300x400" alt="Movie">
        <h4>Sample Movie 3</h4>
        <p>Thriller | 2022</p>
    </div>

</div>

</body>
</html>
