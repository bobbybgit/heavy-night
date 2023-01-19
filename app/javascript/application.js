// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"


document.addEventListener("turbo:load", function() {
    console.log("turbo loaded")
let menuOpen = false;
const menuButton = document.querySelector("#header_links");
const menuBar = document.querySelector("#mobile_menu");
menuBar.style.display = "none";

function menuToggle() {
    if (menuOpen) {
        menuBar.style.display = "none";
        menuOpen = false;
        console.log("menuOpen")
    }else{
        menuBar.style.display ="flex";
        menuOpen = true;
        console.log(menuOpen)
    }
}

menuButton.ontouchstart = menuToggle;

})


