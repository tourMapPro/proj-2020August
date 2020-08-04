const toggleBtn = document.querySelector(".nav_toggleBtn");
const menu = document.querySelector(".menubar_list");
const icon = document.querySelector(".menubar_icons");

toggleBtn.addEventListener("click", () => {
  menu.classList.toggle("active");
  icon.classList.toggle("active");
});
