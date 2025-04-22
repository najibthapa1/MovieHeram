  if ('ontouchstart' in window) {
    document.body.classList.add('touch-device');
  }
  // Home page mp4 (Only mute/unmute toggle button)
  document.addEventListener('DOMContentLoaded', () => {
      const muteButton = document.getElementById('mute-btn');
      const video = document.getElementById('hero-video');
  
      // Set initial muted state to true (muted initially)
      video.muted = true;
      muteButton.textContent = '🔇'; // Set icon on load
  
      // Handle mute/unmute button click
      muteButton.addEventListener('click', () => {
          if (video.muted) {
              video.muted = false;  // Unmute the video
              muteButton.textContent = '🔊';  // Change button to unmute icon
          } else {
              video.muted = true;  // Mute the video
              muteButton.textContent = '🔇';  // Change button to mute icon
          }
      });
  });
  

 // Back to Top Button(->)
 const backToTop = document.getElementById('back-to-top');

 window.addEventListener('scroll', () => {
     if (window.scrollY > 500) {
         backToTop.classList.add('visible');
     } else {
         backToTop.classList.remove('visible');
     }
 });
 
 backToTop.addEventListener('click', () => {
     window.scrollTo({
         top: 0,
         behavior: 'smooth'
     });
 });
 
//Loader

 window.onload = function () {
     // Delay before fading out the loader
     setTimeout(function () {
         document.getElementById("loader").style.opacity = "0"; // Fade out loader
         setTimeout(function () {
             document.getElementById("loader").style.display = "none"; // Hide loader
             document.body.style.opacity = "1"; // Fade in the content
         }, 500); // 500ms for smooth fade transition
     }, 1000); // Show loader for 2 seconds
 };
         function scrollToTop() {
         window.scrollTo({ top: 0, behavior: 'smooth' });
     }
 
//Toggle Fav Btn
function toggleFavorite(btn) {
       btn.classList.toggle("active");
       const icon = btn.querySelector("i");
       if (btn.classList.contains("active")) {
         icon.classList.remove("fa-regular");
         icon.classList.add("fa-solid");
       } else {
         icon.classList.remove("fa-solid");
         icon.classList.add("fa-regular");
       }
    }
 
    //MP4 player

    function playVideo(videoSrc) {
       const video = document.querySelector("#playerModal video");
       video.src = videoSrc;
       video.load();
       video.play();
     }

     //Close btn
     document.querySelector(".close-btn").addEventListener("click", () => {
       const video = document.querySelector("#playerModal video");
       video.pause();
       video.currentTime = 0;
     });

     //Mouse scroll down(<-)

   const scrollBtn = document.getElementById("scroll-down-btn");
 
   scrollBtn.addEventListener("click", () => {
     window.scrollBy({
       top: window.innerHeight / 1.14, // scrolls half a page
       behavior: 'smooth'
     });
   });
