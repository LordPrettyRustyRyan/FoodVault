// Sidebar Functions
  const toggleBtn = document.getElementById('menu-toggle');
  const sidebar = document.getElementById('sidebar');
  const overlay = document.getElementById('overlay');

  toggleBtn.addEventListener('click', () => {
    sidebar.classList.toggle('open');
    overlay.classList.toggle('show');

    // Optional: Change icon from ☰ to ✖
    toggleBtn.textContent = sidebar.classList.contains('open') ? '✖' : '☰';
  });

  overlay.addEventListener('click', () => {
    sidebar.classList.remove('open');
    overlay.classList.remove('show');
    toggleBtn.textContent = '☰';
  });

// Navbar Background Change on Scroll
window.addEventListener("scroll", function () {
    const header = document.querySelector(".header_section");
    if (window.scrollY > window.innerHeight * 0.8) {
        header.classList.add("scrolled");
    } else {
        header.classList.remove("scrolled");
    }
});

document.getElementById('diginbtn').addEventListener('click', function (e) {
  e.preventDefault(); // Prevent default behavior

  const target = document.getElementById('recent-posts');
  const start = window.pageYOffset; // Get current scroll position
  const end = target.getBoundingClientRect().top + window.pageYOffset; // Get target position
  const distance = end - start; // Calculate the distance
  const duration = 0000; // Set the duration for the scroll (0 seconds)
  let startTime = null;

  // Cubic ease-in function
  function easeIn(t) {
    return t * t * t; // Cubic ease-in easing function
  }

  // Function to animate the scroll
  function animateScroll() {
    const currentTime = Date.now();
    const timeElapsed = currentTime - startTime;
    const progress = Math.min(timeElapsed / duration, 1); // Ensure progress doesn't exceed 1

    // Scroll the page to the current position
    window.scrollTo(0, start + distance * easeIn(progress));

    if (timeElapsed < duration) {
      requestAnimationFrame(animateScroll); // Continue animation until the duration ends
    }
  }

  startTime = Date.now();
  requestAnimationFrame(animateScroll); // Start the animation
});

// aniamtion Scroll Down
  const trigger = document.getElementById('scrollTrigger');
  const target = document.getElementById('recent-posts');

  trigger.addEventListener('click', function (e) {
    e.preventDefault();

    const start = window.pageYOffset;
    const end = target.getBoundingClientRect().top + window.pageYOffset;
    const distance = end - start;
    const duration = 0000; // 0 seconds
    let startTime = null;

    function easeIn(t) {
      return t * t * t; // cubic ease-in
    }

    function animateScroll(currentTime) {
      if (!startTime) startTime = currentTime;
      const timeElapsed = currentTime - startTime;
      const progress = Math.min(timeElapsed / duration, 1);
      const ease = easeIn(progress);

      window.scrollTo(0, start + distance * ease);

      if (timeElapsed < duration) {
        requestAnimationFrame(animateScroll);
      }
    }

    requestAnimationFrame(animateScroll);
  });

// Hero Area Ends - Content 1
window.addEventListener("scroll", () => {
  const section = document.querySelector(".food-section");
  const rect = section.getBoundingClientRect();
  if (rect.top < window.innerHeight - 100) {
    section.classList.add("visible");
  }
});

//Categories
document.addEventListener("DOMContentLoaded", function () {
    const carousel = document.getElementById("categoryCarousel");
    let scrollAmount = 1;

    function autoScroll() {
        carousel.scrollLeft += scrollAmount;

        // When scroll reaches end, reset to start
        if (carousel.scrollLeft + carousel.offsetWidth >= carousel.scrollWidth) {
            carousel.scrollLeft = 0;
        }
    }

    let autoScrollInterval = setInterval(autoScroll, 10); // lower = faster scroll

    // Optional: Pause on hover
    carousel.addEventListener("mouseenter", () => clearInterval(autoScrollInterval));
    carousel.addEventListener("mouseleave", () => {
        autoScrollInterval = setInterval(autoScroll, 20);
    });
});

//Slider Manon One
document.addEventListener("DOMContentLoaded", function () {
    const recipeGrid = document.querySelector(".recipe-grid");
    const prevBtn = document.getElementById("prevBtn");
    const nextBtn = document.getElementById("nextBtn");

    const scrollAmount = 300; // Adjust how much it scrolls per click

    nextBtn.addEventListener("click", function () {
        recipeGrid.scrollLeft += scrollAmount; // Scroll to the right
    });

    prevBtn.addEventListener("click", function () {
        recipeGrid.scrollLeft -= scrollAmount; // Scroll to the left
    });
});