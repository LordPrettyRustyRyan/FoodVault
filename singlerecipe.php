<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>A Recipe</title>

  <link rel="stylesheet" href="css/singlerecipe.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <link href="https://fonts.googleapis.com/css2?family=Sedgwick+Ave+Display&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Honk&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Staatliches&display=swap" rel="stylesheet">

  <script defer src="js/singlerecipe.js"></script>

</head>

<body>

  <header id="site-header">
    <nav>
      <div class="logo">Food Vault</div>

      <input type="checkbox" id="click">
      <label for="click" class="menu-btn">
        <i class="fas fa-bars"></i>
      </label>

      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Recipes</a></li>
        <li><a href="#">Articles</a></li>
        <li><a href="#">Log In</a></li>
      </ul>
    </nav>
  </header>

  <main id="page">

    <!-- Hero Section -->
    <section class="areaarea">

      <div class="hero-slider" id="heroSlider">
        <div class="slide active">
          <img src="images/img1.jpg" alt="Classic Meatloaf">
        </div>
        <div class="slide">
          <img src="images/img2.jpg" alt="Classic Meatloaf">
        </div>
        <div class="slide">
          <img src="images/img3.jpg" alt="Classic Meatloaf">
        </div>
      </div>

      <h2 class="recipe-title">CLASSIC MEATLOAF</h2>
      <!-- Prev/Next -->
      <button class="nav prev" id="prevBtn">&#10094;</button>
      <button class="nav next" id="nextBtn">&#10095;</button>

    </section>

    <section class="recipe-info">
      <div class="recipe-page">
        <!-- Left Side -->
        <div class="recipe-left">
          <!-- Rating -->
          <div class="rating">
            ⭐⭐⭐⭐⭐ <span id="avg-rating">4.8</span> from <span id="total-votes">215</span> votes
          </div>

          <!-- Description -->
          <p class="description">
            This easy meatloaf recipe is just like the traditional meatloaf grandma used to make.
            This easy meatloaf recipe is just like the traditional meatloaf grandma used to make.
            This easy meatloaf recipe is just like the traditional meatloaf grandma used to make.
          </p>

          <!-- Author -->
          <p class="author">AUTHOR: <i><u><span id="author-name">John Doe</span></p></i></u>

          <!-- Times -->
          <div class="times">
            <div> <b>PREP</b> <br> <span id="prep-time">15 mins</span> </div>
            <div> <b>COOK</b> <br> <span id="cook-time">50 mins</span> </div>
            <div> <b>TOTAL</b> <br> <span id="total-time">1 hr 5 mins</span> </div>
          </div>

          <!-- Servings -->
          <div class="servings">
            <label>SERVINGS:</label>
            <button onclick="changeServings(-1)">-</button>
            <input type="number" id="servings" value="7" min="1">
            <button onclick="changeServings(1)">+</button>
            <span id="serving-type">slices</span>
          </div>

          <!-- Buttons -->
          <div class="recipe-buttons">
            <button onclick="saveRecipe()">SAVE RECIPE</button>
            <button onclick="printRecipe()">PRINT RECIPE</button>
            <button onclick="scrollToReviews()">READ REVIEWS</button>
            <button class="fav" onclick="toggleFavourite()">ADD TO FAVOURITES</button>
          </div>

          <!-- Cook Mode 
          <div class="cook-mode">
            <label>
              <input type="checkbox" id="cook-mode"> Cook Mode
            </label>
          </div>
          -->


          <!-- Share -->
          <div class="justforlabel">
            <label><b>SHARE THIS RECIPE</b></label>
            <div class="share">
              <button>FB</button>
              <button>WA</button>
              <button>IG</button>
              <button>M</button>
              <button>P</button>
            </div>
          </div>
        </div>

        <!-- Right Side -->
        <div class="recipe-right">
          <h3>Ingredients</h3>
          <ul id="ingredients-list">
            <!-- Example, will scale automatically -->
            <li data-quantity="1" data-unit="large egg">
              <input type="checkbox"> <span class="qty">1</span> large egg
            </li>
            <li data-quantity="0.33" data-unit="cup milk">
              <input type="checkbox"> <span class="qty">0.33</span> cup milk
            </li>
            <li data-quantity="1.5" data-unit="lbs ground beef">
              <input type="checkbox"> <span class="qty">1.5</span> lbs ground beef
            </li>
          </ul>

          <h3>Equipment</h3>
          <ul id="equipment-list">
            <li>Mixing Bowl</li>
            <li>Oven</li>
          </ul>
        </div>
      </div>
    </section>

    <div class="recipe-section">

      <!-- Horizontal Line -->
      <hr class="section-divider">

      <!-- Instructions -->
      <h2 class="section-title">INSTRUCTIONS</h2>
      <ol class="recipe-instructions">
        <li>Preheat the oven to 350°F. In a small bowl whisk together the egg, milk, and Worcestershire sauce. In a
          separate small bowl, stir together the breadcrumbs, Italian seasoning, garlic powder, salt, and pepper. Mince
          the onion.</li>
        <li>Add the ground beef, egg mixture, breadcrumb mixture, and minced onion to a large bowl. Use your hands to
          mix the ingredients together until evenly combined. Avoid over mixing.</li>
        <li>Place the meatloaf mixture on a rimmed baking dish and shape it into a loaf that is approximately 4-inches
          wide, 8-inches long, and 2-inches tall.</li>
        <li>In a separate small bowl, stir together the glaze ingredients (ketchup, brown sugar, Worcestershire sauce,
          and mustard). Spread the glaze evenly over the top and sides of the meatloaf.</li>
        <li>Bake the meatloaf for 50-55 minutes, or until the internal temperature reaches 165°F. Allow the meatloaf to
          rest for 5-10 minutes after baking, then slice and serve.</li>
      </ol>

      <!-- Horizontal Line -->
      <hr class="section-divider">

      <!-- Categories -->
      <div class="recipe-categories">
        <span class="cat-label">Posted in:</span>
        <span class="category">Beef Recipes</span>
        <span class="category">Comfort Food Recipes</span>
        <span class="category">Fall Recipes</span>
        <span class="category">Main Dish Recipes</span>
        <span class="category">Under $10</span>
        <span class="category">Beef Recipes</span>
        <span class="category">Comfort Food Recipes</span>
        <span class="category">Fall Recipes</span>
        <span class="category">Main Dish Recipes</span>
        <span class="category">Under $10</span>
      </div>

      <!-- Author / Uploader -->
      <div class="recipe-author">
        <img src="images/auth.jpg" alt="Author" class="author-img">
        <div class="author-info">
          <h3 class="author-name">BETH MONCEL</h3>
          <p class="author-bio">
            I'm a food lover, number cruncher, and meticulous budgeter. I love science and art, and the way they come
            together when I cook. I love to create, problem solve, and learn new things. Making great food is my
            passion, my purpose, and my favorite thing to share with others.
          </p>
          <a href="#" class="author-btn">MORE ABOUT BETH</a>
        </div>
      </div>

    </div>

    <!-- FOOTER -->
    <footer>
      <div class="footer-container">
        <!-- Left Section -->
        <div class="footer-about">
          <img src="images/logo.png" alt="Logo" class="footer-logo">
          <div>
            <h4>FOOD VAULT</h4>
            <p>Just better food, made easy, smarter, tastier, better choices.</p>
          </div>
        </div>

        <!-- Links Section -->
        <div class="footer-links">
          <div>
            <h4>RECIPES</h4>
            <ul>
              <li><a href="#">Breakfast</a></li>
              <li><a href="#">Lunch</a></li>
              <li><a href="#">Dinner</a></li>
              <li><a href="#">Snacks</a></li>
              <li><a href="#">Beverages</a></li>
            </ul>
          </div>
          <div>
            <h4>ARTICLES</h4>
            <ul>
              <li><a href="#">Protein Rich</a></li>
              <li><a href="#">Vegetarian</a></li>
              <li><a href="#">Low Carbs</a></li>
              <li><a href="#">Kids Friendly</a></li>
            </ul>
          </div>
          <div>
            <h4>MORE FROM ME</h4>
            <ul class="socials">
              <li><a href="#"><i class="fab fa-facebook-f"></i> Facebook</a></li>
              <li><a href="#"><i class="fab fa-pinterest-p"></i> Pinterest</a></li>
              <li><a href="#"><i class="fab fa-instagram"></i> Instagram</a></li>
              <li><a href="#"><i class="fab fa-twitter"></i> Twitter</a></li>
              <li><a href="#"><i class="fab fa-youtube"></i> Youtube</a></li>
            </ul>
          </div>
        </div>
      </div>

      <!-- Bottom Bar -->
      <div class="footer-bottom">
        <p>© 2025 Food Vault. All rights reserved.</p>
        <div class="footer-legal">
          <a href="#">Privacy Policy</a>
          <a href="#">Terms of Service</a>
          <a href="#">Accessibility Statement</a>
          <a href="#">Accessibility Options</a>
        </div>
      </div>
    </footer>



  </main>
