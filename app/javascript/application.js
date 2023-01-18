// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

let menuOpen = false;
const menuButton = document.querySelector("#mobile_burger");
const menuBar = document.querySelector("#mobile_menu");

function menuToggle() {
    menuOpen?menuBar.style.display("none"):menuBar.style.display ="flex";
    
}

menuButton.addEventListener("touchStart", menuToggle());




