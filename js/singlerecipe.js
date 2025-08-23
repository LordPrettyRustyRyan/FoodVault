const slides = document.querySelectorAll(".hero-slider .slide");
const prevBtn = document.getElementById("prevBtn");
const nextBtn = document.getElementById("nextBtn");
const slider = document.getElementById("heroSlider");

let currentIndex = 0;
let slideInterval = setInterval(nextSlide, 5000); // auto slide every 5s

function showSlide(index) {
  slides.forEach((slide, i) => {
    slide.classList.remove("active");
    if (i === index) slide.classList.add("active");
  });
}

function nextSlide() {
  currentIndex = (currentIndex + 1) % slides.length;
  showSlide(currentIndex);
}

function prevSlide() {
  currentIndex = (currentIndex - 1 + slides.length) % slides.length;
  showSlide(currentIndex);
}

nextBtn.addEventListener("click", () => {
  nextSlide();
  resetTimer();
});

prevBtn.addEventListener("click", () => {
  prevSlide();
  resetTimer();
});

// Pause on hover
slider.addEventListener("mouseenter", () => clearInterval(slideInterval));
slider.addEventListener("mouseleave", () => slideInterval = setInterval(nextSlide, 5000));

function resetTimer() {
  clearInterval(slideInterval);
  slideInterval = setInterval(nextSlide, 5000);
}


  // Default servings stored in DB
  const defaultServings = 7;

  function updateIngredients() {
    const currentServings = parseInt(document.getElementById("servings").value);
    const ratio = currentServings / defaultServings;

    document.querySelectorAll("#ingredients-list li").forEach(item => {
      const baseQty = parseFloat(item.getAttribute("data-quantity"));
      const unit = item.getAttribute("data-unit");
      const newQty = (baseQty * ratio).toFixed(2).replace(/\.00$/, ""); // clean numbers

      item.querySelector(".qty").textContent = newQty;
    });
  }

  function changeServings(change) {
    let servingsInput = document.getElementById("servings");
    let newValue = parseInt(servingsInput.value) + change;
    if (newValue < 1) newValue = 1; // prevent 0
    servingsInput.value = newValue;
    updateIngredients();
  }

  // Live update on manual input
  document.getElementById("servings").addEventListener("input", updateIngredients);

  // Cook mode: prevent screen lock
  document.getElementById("cook-mode").addEventListener("change", (e) => {
    if (e.target.checked) {
      if ("wakeLock" in navigator) {
        navigator.wakeLock.request("screen").catch(err => console.log(err));
      }
    }
  });

  // Example functions for buttons
  function saveRecipe() { alert("Recipe saved!"); }
  function toggleFavourite() { alert("Added to favourites!"); }
  function printRecipe() { window.print(); }
  function scrollToReviews() { window.location.hash = "#reviews"; }

  // Run once at start
  updateIngredients();
