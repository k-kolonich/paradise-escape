// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

document.addEventListener('DOMContentLoaded', function() {

  const itemWidth = 150;
  const padding = 10;

  // Carousel for My Islands
  const prevBtnIslands = document.getElementById('prev-btn-islands');
  const nextBtnIslands = document.getElementById('next-btn-islands');
  const itemListIslands = document.getElementById('item-list-islands');

  prevBtnIslands.addEventListener('click', () => {
    itemListIslands.scrollLeft -= (itemWidth + padding);
  });

  nextBtnIslands.addEventListener('click', () => {
    itemListIslands.scrollLeft += (itemWidth + padding);
  });

  // Carousel for My Bookings
  const prevBookings = document.getElementById('prev-btn-bookings');
  const nextBookings = document.getElementById('next-btn-bookings');
  const listBookings = document.getElementById('item-list-bookings');

  prevBookings.addEventListener('click', () => {
    listBookings.scrollLeft -= (itemWidth + padding);
  });

  nextBookings.addEventListener('click', () => {
    listBookings.scrollLeft += (itemWidth + padding);
  });

  // Carousel for Bookings for My Islands
  const prevIslandBookings = document.getElementById('prev-btn-island-bookings');
  const nextIslandBookings = document.getElementById('next-btn-island-bookings');
  const listIslandBookings = document.getElementById('item-list-island-bookings');

  prevIslandBookings.addEventListener('click', () => {
    listIslandBookings.scrollLeft -= (itemWidth + padding);
  });

  nextIslandBookings.addEventListener('click', () => {
    listIslandBookings.scrollLeft += (itemWidth + padding);
  });
});
