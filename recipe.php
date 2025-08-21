<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Food Vault Article</title>

  <link rel="stylesheet" href="css/recipe.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <link href="https://fonts.googleapis.com/css2?family=Sedgwick+Ave+Display&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Honk&display=swap" rel="stylesheet">
</head>

<body>
  <nav>
    <div class="logo">Food Vault</div>

    <input type="checkbox" id="click">
    <label for="click" class="menu-btn">
      <i class="fas fa-bars"></i>
    </label>

    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Recipes</a></li>
      <li><a href="#" class="active">Articles</a></li>
      <li><a href="#">Log In</a></li>
    </ul>
  </nav>

  <section class="articles-hero" id="main">
    <div class="articles-content">
      <p>"</p>
      <h2>Food for Thought</h2>
      <p>
        Discover new perspectives on everyday eating — from healthy alternatives
        to surprising facts about the meals we often overlook.
      </p>
    </div>
  </section>

  <section class="popular-categories" aria-labelledby="pc-heading">
    <div class="pc-title-row">
      <h2 id="pc-heading">POPULAR CATEGORIES</h2>
      <span class="pc-title-line" aria-hidden="true"></span>
    </div>
    <div class="grid5">
      <div class="big5">
        <img src="images/1.jpg" alt="Recipe">
        <h3 class="recipe-title">Street Corn Pasta Salad</h3>
        <p class="recipe-meta">$5.53 Recipe / $0.69 Serving</p>
      </div>
      <div class="small5">
        <img src="images/2.jpg" alt="Recipe">
        <h3 class="recipe-title">Street Corn Pasta Salad</h3>
        <p class="recipe-meta">$5.53 Recipe / $0.69 Serving</p>
      </div>
      <div class="small5">
        <img src="images/3.jpg" alt="Recipe">
        <h3 class="recipe-title">Street Corn Pasta Salad</h3>
        <p class="recipe-meta">$5.53 Recipe / $0.69 Serving</p>
      </div>
      <div class="small5">
        <img src="images/4.jpg" alt="Recipe">
        <h3 class="recipe-title">Street Corn Pasta Salad</h3>
        <p class="recipe-meta">$5.53 Recipe / $0.69 Serving</p>
      </div>
      <div class="small5">
        <img src="images/5.jpg" alt="Recipe">
        <h3 class="recipe-title">Street Corn Pasta Salad</h3>
        <p class="recipe-meta">$5.53 Recipe / $0.69 Serving</p>
      </div>
    </div>
  </section>

  <section class="popular-categories" aria-labelledby="pc-heading">
    <div class="pc-title-row">
      <h2 id="pc-heading">POPULAR CATEGORIES</h2>
      <span class="pc-title-line" aria-hidden="true"></span>
    </div>

    <div class="pc-grid">
      <a href="category.php?c=under-10" class="pc-item">
        <div class="pc-thumb"><img src="images/circle1.png" alt="Under $10"></div>
        <div class="pc-label">UNDER $10</div>
      </a>

      <a href="category.php?c=pasta" class="pc-item">
        <div class="pc-thumb"><img src="images/circle2.png" alt="Pasta"></div>
        <div class="pc-label">PASTA</div>
      </a>

      <a href="category.php?c=one-pot" class="pc-item">
        <div class="pc-thumb"><img src="images/circle3.png" alt="One Pot Meals"></div>
        <div class="pc-label">ONE POT MEALS</div>
      </a>

      <a href="category.php?c=vegetarian" class="pc-item">
        <div class="pc-thumb"><img src="images/circle4.png" alt="Vegetarian"></div>
        <div class="pc-label">VEGETARIAN</div>
      </a>

      <a href="category.php?c=chicken" class="pc-item">
        <div class="pc-thumb"><img src="images/circle5.png" alt="Chicken"></div>
        <div class="pc-label">CHICKEN</div>
      </a>

      <a href="category.php?c=slow-cooker" class="pc-item">
        <div class="pc-thumb"><img src="images/circle4.png" alt="Slow Cooker"></div>
        <div class="pc-label">SLOW COOKER</div>
      </a>
    </div>
  </section>

  <section class="popular-categories" aria-labelledby="pc-heading">
    <div class="pc-title-row">
      <h2 id="pc-heading">POPULAR CATEGORIES</h2>
      <span class="pc-title-line" aria-hidden="true"></span>
    </div>

    <div class="pcd-grid">
      <a href="category.php?c=under-10" class="pcd-item">
        <div class="pcd-thumb"><img src="images/circle1.png" alt="Under $10"></div>
        <div class="pcd-label">UNDER $10</div>
      </a>

      <a href="category.php?c=pasta" class="pcd-item">
        <div class="pcd-thumb"><img src="images/circle2.png" alt="Pasta"></div>
        <div class="pcd-label">PASTA</div>
      </a>

      <a href="category.php?c=one-pot" class="pcd-item">
        <div class="pcd-thumb"><img src="images/circle3.png" alt="One Pot Meals"></div>
        <div class="pcd-label">ONE POT MEALS</div>
      </a>

    </div>
  </section>

  <section class="popular-categories" aria-labelledby="pc-heading">

    <div class="pc-title-row">
      <h2 id="pc-heading">POPULAR CATEGORIES</h2>
      <span class="pc-title-line" aria-hidden="true"></span>
    </div>
    <!-- FILTERS + SEARCH -->
    <div class="filters-container">

      <input type="text" placeholder="Search recipes..." class="search-bar">

      <select class="filter">
        <option value="">By Course</option>
        <option value="breakfast">Breakfast</option>
        <option value="lunch">Lunch</option>
        <option value="dinner">Dinner</option>
        <option value="snacks">Snacks</option>
        <option value="dessert">Dessert</option>
      </select>

      <select class="filter">
        <option value="">By Protein</option>
        <option value="chicken">Chicken</option>
        <option value="fish">Fish</option>
        <option value="beef">Beef</option>
        <option value="vegetarian">Vegetarian</option>
      </select>

      <select class="filter">
        <option value="">By Season</option>
        <option value="summer">Summer</option>
        <option value="winter">Winter</option>
        <option value="spring">Spring</option>
        <option value="fall">Fall</option>
      </select>

      <select class="filter">
        <option value="">By Dietary Need</option>
        <option value="vegan">Vegan</option>
        <option value="gluten-free">Gluten-Free</option>
        <option value="low-carb">Low Carb</option>
      </select>

      <select class="filter">
        <option value="">By Cost</option>
        <option value="low">Budget Friendly</option>
        <option value="medium">Moderate</option>
        <option value="high">Premium</option>
      </select>
    </div>

    <!-- RECIPES GRID -->
    <div class="recipes-grid">
      <div class="recipe-card">
        <div class="recipe-image"><img src="img1.jpg" alt="Recipe"></div>
        <h3 class="recipe-title">Braised Chicken and Peaches</h3>
        <p class="recipe-meta">$13.60 Recipe / $2.72 Serving</p>
      </div>

      <div class="recipe-card">
        <div class="recipe-image"><img src="img2.jpg" alt="Recipe"></div>
        <h3 class="recipe-title">Classic Tuna Salad</h3>
        <p class="recipe-meta">$6.33 Recipe / $1.58 Serving</p>
      </div>

      <div class="recipe-card">
        <div class="recipe-image"><img src="img3.jpg" alt="Recipe"></div>
        <h3 class="recipe-title">Street Corn Pasta Salad</h3>
        <p class="recipe-meta">$5.53 Recipe / $0.69 Serving</p>
      </div>

      <div class="recipe-card">
        <div class="recipe-image"><img src="img4.jpg" alt="Recipe"></div>
        <h3 class="recipe-title">Easy Guacamole</h3>
        <p class="recipe-meta">$4.61 Recipe / $0.46 Serving</p>
      </div>
      <div class="recipe-card">
        <div class="recipe-image"><img src="img1.jpg" alt="Recipe"></div>
        <h3 class="recipe-title">Braised Chicken and Peaches</h3>
        <p class="recipe-meta">$13.60 Recipe / $2.72 Serving</p>
      </div>

      <div class="recipe-card">
        <div class="recipe-image"><img src="img2.jpg" alt="Recipe"></div>
        <h3 class="recipe-title">Classic Tuna Salad</h3>
        <p class="recipe-meta">$6.33 Recipe / $1.58 Serving</p>
      </div>

      <div class="recipe-card">
        <div class="recipe-image"><img src="img3.jpg" alt="Recipe"></div>
        <h3 class="recipe-title">Street Corn Pasta Salad</h3>
        <p class="recipe-meta">$5.53 Recipe / $0.69 Serving</p>
      </div>

      <div class="recipe-card">
        <div class="recipe-image"><img src="img4.jpg" alt="Recipe"></div>
        <h3 class="recipe-title">Easy Guacamole</h3>
        <p class="recipe-meta">$4.61 Recipe / $0.46 Serving</p>
      </div>
    </div>
  </section>