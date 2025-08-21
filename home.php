

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:300,400,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Unna:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">

    <title>Foodie Home</title>
    <link rel="stylesheet" href="css/home.css">
    <script defer src="js/home.js"></script>
</head>
<body>

<!--  Welcome to FoodieFoodie -->

<header class="header_section">
    <nav class="customnavcontainer">
        <a class="navbar-brand" href="home.html">
            <span>Foodie Foodie</span>
        </a>

        <div class="nav-right"> <!-- New wrapper for alignment -->
            <div class="User_option">
                <a href="auth.php">Login</a>
                <a href="au.html">Contact</a>
            </div>

            <div class="custom_menu-btn">
    <button id="menu-toggle">☰</button>
            </div>
        </div>
    </nav>

</header>

<!-- Sidebar -->
<div id="sidebar" class="sidebar">

    <h2>Menu</h2>
    <ul class="menu-links">
        <li><a href="home.html">Home</a></li>
        <li><a href="recipe.php">Recipes</a></li>
        <li><a href="s.php">Search</a></li>
        <li><a href="bt.php">Blog</a></li>
        <li><a href="auth.php">Login</a></li>
        <li><a href="au.html">Contact</a></li>
        <li><a href="au.html">About Us</a></li>
    </ul>
  <div class="social-media">
    <p>Connect with us :</p>
    <div class="social-icons">
      <a href="#"><i class="fab fa-facebook-f"></i></a>
      <a href="#"><i class="fab fa-twitter"></i></a>
      <a href="#"><i class="fab fa-instagram"></i></a>
      <a href="#"><i class="fab fa-linkedin-in"></i></a>
    </div>
  </div>
</div>

<!-- Blurred Overlay -->
<div id="overlay" class="overlay"></div>


<!-- Dummy Content for Scrolling -->
<div class="hero_area">
    <div class="herog">
        <img src="images/logo2.png" alt="Logo" class="logo">
        <a href="../website/layout.php?value=1" class="circle1"><img src="images/circle1.png" alt="Circle 1"></a>
        <a href="/website/layout.php?value=15" class="circle"><img src="images/circle2.png" alt="Circle 2"></a>
        <a href="/website/layout.php?value=5" class="circle"><img src="images/circle3.png" alt="Circle 3"></a>
        <a href="/website/layout.php?value=7" class="circle3"><img src="images/circle4.png" alt="Circle 4"></a>
        <a href="/website/layout.php?value=14" class="circle2"><img src="images/circle5.png" alt="Circle 5"></a>
	<button id="diginbtn" class="diginbtn">頂きます</button>
	<a href="#recent-posts" class="scroll-down" id="scrollTrigger">
	  <i class="fas fa-chevron-down"></i>
	</a>
</a>
    </div>
</div>

<div class="bg">

<!--  Hero Area Ends - Content 1 -->

   <section  class ="food-section">
      <div  class ="food-image">
       <img id="food-image" src="images/SignatureDish.jpg" alt="Signature Dish">
      </div>

      <div class ="food-content">
	 <h2 id="text-heading">Welcome<br>to <span class="highlight">Foodie Foodie</span></h2>

	<p id="text-description"> YOO!! we have been picky eaters, and so we thought, why not find foods that we'll like, find delicious, which ALSO will provide us 'em good nutrients we humans need to strive... and so the idea of <i>Foodie Foodie</i> was born, finding alternatives of eating ghar ke aalo-matar whole day, and making it fun every single time, finding alternative of taste, representation, and whole recipes. We are food recipe artists now, but dont take us lightly we aint just some simple recipe blog website. Check us Out.<p>

	<a href="#" id ="btn"> About Us </a>
       </div>
     </section>

<!--  Slider -->
<div class="headingOriginals">
    <div class="recentheader">
      <h2>Our <span class="highlight">Originals</span></h2>
      <p>Check out some of our Original Recipes - truly creative and brand new versions than Traditional Ones.</p>
    </div>
</div>
<div class="slider-container">
    <button class="nav-button left" id="prevBtn">&lt;</button>
    <div class="recipe-grid" id="recipeGrid">
        <div class="recipe-item">
            <img src="images/blog1.jpg" alt="Protein Pancakes">
            <div class="overlayed">
                <h3>Protein Pancakes</h3>
                <p>Breakfast | High Protein</p>
                <a href="recipe1.html" class="read-more">Read More</a>
            </div>
        </div>
        <div class="recipe-item">
            <img src="images/blog2.jpg" alt="Milkshake">
            <div class="overlayed">
                <h3>How to Make a Milkshake</h3>
                <p>Beverages | Strawberry</p>
                <a href="recipe2.html" class="read-more">Read More</a>
            </div>
        </div>
        <div class="recipe-item">
            <img src="images/blog3.jpg" alt="English Breakfast">
            <div class="overlayed">
                <h3>A Breakdown of the Full English Breakfast</h3>
                <p>Breakfast | Weekend Brunch</p>
                <a href="recipe2.html" class="read-more">Read More</a>
            </div>
        </div>
        <div class="recipe-item">
            <img src="images/blog4.jpg" alt="Air Fryer Salmon">
            <div class="overlayed">
                <h3>Air Fryer Salmon</h3>
                <p>Meal | Air Fryer Recipes</p>
                <a href="recipe2.html" class="read-more">Read More</a>
            </div>
        </div>
        <div class="recipe-item">
            <img src="images/blog5.jpg" alt="Milkshake">
            <div class="overlayed">
                <h3>How to Make a Milkshake</h3>
                <p>Beverages | Strawberry</p>
                <a href="recipe2.html" class="read-more">Read More</a>
            </div>
        </div>
        <div class="recipe-item">
            <img src="images/blog6.jpg" alt="Tea and Biscuits">
            <div class="overlayed">
                <h3>Vintage Copper Preserve Pan</h3>
                <p>Desserts | Vegan</p>
                <a href="recipe3.html" class="read-more">Read More</a>
            </div>
        </div>
        <div class="recipe-item">
            <img src="images/blog7.jpg" alt="Lentil Salad">
            <div class="overlayed">
                <h3>Marinated Lentil Salad</h3>
                <p>Desserts | Vegan</p>
                <a href="recipe4.html" class="read-more">Read More</a>
            </div>
        </div>
    </div>
    <button class="nav-button right" id="nextBtn">&gt;</button>
</div>

<!--  Features -->

<section id="features" class="features-section">
  <div class="containered text-center">
    <div class="section-header">
      <h2>Our Features</h2>
      <div class="underline"></div>
      <p>Check out some features we provide that makes our website functional, user-friendly, and valuable.</p>
    </div>

    <div class="features-grid">
      <!-- Box 1 -->
      <div class="bouxes">
        <img src="images/icons/fea1.png" alt="Quick Recipes" class="feature-icon">
        <h4>Quick Recipes</h4>
        <p>We provide y'all quick recipes that y'all we love and they'd be healthy for you. Hungry? alright, we got 5-20 minutes, let's make something worth cooking.</p>
        <a href="recipe.php" class="btn-feature">Check out Recipes</a>
      </div>

      <!-- Box 2 -->
      <div class="bouxes">
        <img src="images/icons/fea2.png" alt="Blogs For Readers" class="feature-icon">
        <h4>Blogs For Readers</h4>
        <p>We provide knowledgable and tasty Blogs for our Readers, and our Readers can involve and share their articles on our website too.</p>
        <a href="bt.php" class="btn-feature">Check out Blogs</a>
      </div>

      <!-- Box 3 -->
      <div class="bouxes">
        <img src="images/icons/fea3.png" alt="Creative Food" class="feature-icon">
        <h4>Creative Food</h4>
        <p>It's never the same old just sabzi and roti at our place (this website), we find we can turn mix-veg into 'the amazing Sandwich', 'the chef's kiss chapati roll', and much more.</p>
        <a href="search.php" class="btn-feature">Search some Recipes</a>
      </div>
    </div>
  </div>
</section>


<!--  Categories -->

<section class="categories spad">
<div class="dk">
    <div class="cateheader">
      <h2><span class="highlight">Food</span> Categories</h2>
      <p>Check out some exquisite Categories of most delicious finger licking good recipes we provide.</p>
    </div>
  <div class="category-carousel-wrapper">
    <div class="category-carousel" id="categoryCarousel">
      <!-- Category Cards (same content you already have) -->
      <div class="image-container"><img src="images/cat/1.jpg" alt="Image 1"><div class="hover-text">Breakfast</div></div>
      <div class="image-container"><img src="images/cat/2.jpg" alt="Image 2"><div class="hover-text">Lunch</div></div>
      <div class="image-container"><img src="images/cat/3.jpg" alt="Image 3"><div class="hover-text">Snacks</div></div>
      <div class="image-container"><img src="images/cat/4.jpg" alt="Image 4"><div class="hover-text">Dinner</div></div>
      <div class="image-container"><img src="images/cat/5.jpg" alt="Image 5"><div class="hover-text">Fitness</div></div>
      <div class="image-container"><img src="images/cat/6.jpg" alt="Image 6"><div class="hover-text">Beverages</div></div>
      <!-- You can repeat same images if looping manually -->
    </div>
  </div>
</div>
</section>

<div id="recent-posts">
</div>
<!-- Recent Recipes -->
<section class="recent-posts" name="recentrecipes">
<div class="container-mt-4">
    <div class="recentheader">
<div class="underline"></div>
      <h2>Recent <span class="highlight">Recipes</span></h2>
      <p>Check out some features we provide that makes our website functional, user-friendly, and valuable.</p>
    </div>
    <div class="row g-4">
        <div class="col-md-3">
            <a href="/website/layout.php?value=14" class="upload">
                <img src="images/recipes/1.jpg" alt="Upload Image">
                <div class="content">
                    <h5>Sephardic Charoset</h5>
                    <p>A perfect Passover recipe to have on hand throughout the week.</p>
                </div>
            </a>
        </div>
        <div class="col-md-3">
            <a href="/website/layout.php?value=15" class="upload">
                <img src="images/recipes/2.jpg" alt="Upload Image">
                <div class="content">
                    <h5>Let’s Do Lunch</h5>
                    <p>Show off your favorite lunch recipes for a chance to win.</p>
                </div>
            </a>
        </div>
        <div class="col-md-3">
            <a href="/website/layout.php?value=17" class="upload">
                <img src="images/recipes/3.jpg" alt="Upload Image">
                <div class="content">
                    <h5>Sheet Pan Pancakes</h5>
                    <p>Make breakfast easy with this delicious recipe.</p>
                </div>
            </a>
        </div>
        <div class="col-md-3">
            <a href="/website/layout.php?value=16" class="upload">
                <img src="images/recipes/4.jpg" alt="Upload Image">
                <div class="content">
                    <h5>Homemade Peeps</h5>
                    <p>Colorful, fun, and irresistible Easter treats!</p>
                </div>
            </a>
        </div>
        <div class="col-md-3">
            <a href="/website/layout.php?value=4" class="upload">
                <img src="images/recipes/5.jpg" alt="Upload Image">
                <div class="content">
                    <h5>Homemade Peeps</h5>
                    <p>Colorful, fun, and irresistible Easter treats!</p>
                </div>
            </a>
        </div>
        <div class="col-md-3">
            <a href="/website/layout.php?value=19" class="upload">
                <img src="images/recipes/6.jpg" alt="Upload Image">
                <div class="content">
                    <h5>Homemade Peeps</h5>
                    <p>Colorful, fun, and irresistible Easter treats!</p>
                </div>
            </a>
        </div>
        <div class="col-md-3">
            <a href="/website/layout.php?value=18" class="upload">
                <img src="images/recipes/7.jpg" alt="Upload Image">
                <div class="content">
                    <h5>Homemade Peeps</h5>
                    <p>Colorful, fun, and irresistible Easter treats!</p>
                </div>
            </a>
        </div>
        <div class="col-md-3">
            <a href="/website/layout.php?value=7" class="upload">
                <img src="images/recipes/8.jpg" alt="Upload Image">
                <div class="content">
                    <h5>Homemade Peeps</h5>
                    <p>Colorful, fun, and irresistible Easter treats!</p>
                </div>
            </a>
        </div>
    </div>
</div>
</section>

        <!-- Page content-->
<main class="Browse">
  <section class="main-hero">
    <!-- Text Column -->
    <div class="hero-text">
      <h1>Your Gateway to <span class="highlight">Gourmet</span></h1>
      <p>
        Discover chef-curated recipes crafted with elegance and flavor. Whether you’re a kitchen rookie or culinary artist, your next masterpiece starts here.
      </p>
      <div class="hero-buttons">
        <a href="recipe.php" class="btn primary">Browse Recipes</a>
        <a href="recipe.php" class="btn secondary">Learn More</a>
      </div>
    </div>

    <!-- Image Column -->
    <div class="hero-image">
      <div class="image-wrapper">
        <img src="https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&w=1600&q=80" alt="Elegant Dish">
        <div class="gradient-overlay"></div>
      </div>
    </div>
  </section>
</main>

<!-- Customers -->
  <section class="testimonials">
    <div class="container">
        <h2>What Our <span class="highlight">Customers</span> Say</h2>
        <marquee behavior="scroll" direction="left" scrollamount="10">
            <div style="display: flex; gap: 20px;">
                <div class="testimonial" style="min-width: 300px; background: white; padding: 15px; border-radius: 10px;">
                    <div class="quote">
                        <i class="fas fa-quote-left"></i>
                        <p>I barely have 20 minutes to myself — <br> 
                           but this site? Lifesaver. The 15-minute<br> 
                           pasta bake was a hit with my picky <br>
                           kids. Thank you for making weeknights <br> stress-free!.</p>
                    </div>
                    <div class="customer">
                        <h4>Busy Parent</h4>
                        <div class="rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                    </div>
                </div>

                <div class="testimonial" style="min-width: 300px; background: white; padding: 15px; border-radius: 10px;">
                    <div class="quote">
                        <i class="fas fa-quote-left"></i>
                        <p>Finally, recipes that don’t feel <br>
                           like the same old stuff. I made the <br>
                           mango chili tacos last night —<br>
                           quick, funky, and absolutely delicious.<br>
                           Bookmarking this site forever.</p>
                    </div>
                    <div class="customer">
                        <h4>Religiously Foodie</h4>
                        <div class="rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>

                <div class="testimonial" style="min-width: 300px; background: white; padding: 15px; border-radius: 10px;">
                    <div class="quote">
                        <i class="fas fa-quote-left"></i>
                        <p>High-protein, low-fuss, and tastes <br>
                           amazing? I found my new go-to post-<br>
                           workout meals here. The avocado <br>
                           chicken wrap was pure gold. Keep <br>‘em coming!</p>
                    </div>
                    <div class="customer">
                        <h4>Fitness Junkie</h4>
                        <div class="rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                    </div>
                </div>
<div class="testimonial" style="min-width: 300px; background: white; padding: 15px; border-radius: 10px;">
                    <div class="quote">
                        <i class="fas fa-quote-left"></i>
                        <p>I barely have 20 minutes to myself — <br> 
                           but this site? Lifesaver. The 15-minute<br> 
                           pasta bake was a hit with my picky <br>
                           kids. Thank you for making weeknights <br> stress-free!.</p>
                    </div>
                    <div class="customer">
                        <h4>Busy Parent</h4>
                        <div class="rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                    </div>
                </div>

                <div class="testimonial" style="min-width: 300px; background: white; padding: 15px; border-radius: 10px;">
                    <div class="quote">
                        <i class="fas fa-quote-left"></i>
                        <p>Finally, recipes that don’t feel <br>
                           like the same old stuff. I made the <br>
                           mango chili tacos last night —<br>
                           quick, funky, and absolutely delicious.<br>
                           Bookmarking this site forever.</p>
                    </div>
                    <div class="customer">
                        <h4>Religiously Foodie</h4>
                        <div class="rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>

                <div class="testimonial" style="min-width: 300px; background: white; padding: 15px; border-radius: 10px;">
                    <div class="quote">
                        <i class="fas fa-quote-left"></i>
                        <p>High-protein, low-fuss, and tastes <br>
                           amazing? I found my new go-to post-<br>
                           workout meals here. The avocado <br>
                           chicken wrap was pure gold. Keep <br>‘em coming!</p>
                    </div>
                    <div class="customer">
                        <h4>Fitness Junkie</h4>
                        <div class="rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                    </div>
                </div>

            </div>
        </marquee>
    </div>
</section>

<!-- Originals -->
<section class="joiny">
  <div class="joinus">
    <h1>Join our Team of Creative and Vanguard Food Recipe Artists</h1>
    <p>Upload Recipes and Blogs & share your thoughts on them</p>
    <a class="bttn" href="auth.php">Sign Up</a>
  </div>
</section>



</div>

<footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-section contact-info">
<br><br>
                    <p><i class="fas fa-envelope"></i> info@FoodieFoodie.com</p>
                    <p><i class="fas fa-phone-alt"></i> (690)-690-6969</p>
                    <p><i class="fas fa-map-marker-alt"></i> Go Left, Go Right.</p>
                </div>

                <div class="footer-section links">
                    <h3>. Pages</h3>
                    <ul>
                        <li><a href="home.html">Home</a></li>
                            <li><a href="recipe.php">Recipes</a></li>
                            <li><a href="s.php">Search</a></li>
                            <li><a href="bt.php">Blog</a></li>
                            <li><a href="auth.php">Patrons</a></li>
                            <li><a href="au.html">Contact</a></li>
                    </ul>
                </div>

                <div class="footer-section links">
                    <h3>. Recipes</h3>
                    <ul>
                        <li><a href="#">Breakfast</a></li>
                        <li><a href="#">Lunch</a></li>
                        <li><a href="#">Dinner</a></li>
                        <li><a href="#">Snacks</a></li>
                        <li><a href="#">Beverages</a></li>
                        <li><a href="#">Sauces</a></li>
                        <li><a href="#">Desserts</a></li>
                    </ul>
                </div>

                <div class="footer-section hours">
                    <h3>.  Contact Us</h3>
                    <ul>
                        <li>Week Days : we busy</li>
                        <li>Weekends : we chill</li>
                        <li>so, don't contact</li>
                    </ul>
                </div>
            </div>

            <div class="footer-bottom">
                <p>Copyright © FoodieFoodie. | Designed for Finding Food Alterantives - Powered By THE IMPERIUM</p>
            </div>
        </div>
    </footer>

</body>
</html>