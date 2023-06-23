let menu = document.querySelector('#menu-icon');
let navlist = document.querySelector('.navlist');
var swiper = new Swiper(".slide-content", {
    slidesPerView: 3,
    spaceBetween: 25,
    loop: true,
    centerSlide: 'true',
    fade: 'true',
    grabCursor: 'true',
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
      dynamicBullets: true,
    },
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },

    breakpoints:{
        0: {
            slidesPerView: 1,
        },
        520: {
            slidesPerView: 2,
        },
        950: {
            slidesPerView: 3,
        },
    },
  });

menu.onclick = () => {
    menu.classList.toggle('bx-x');
    navlist.classList.toggle('open');
};

const sr = ScrollReveal ({
    distance: '65px' ,
    duration: 2600,
    delay: 450,
    reset: true
});

sr.reveal('.animal-text' , {delay:200, origin: 'top'});
sr.reveal('.form-container' , {delay:450, origin: 'top'});
sr.reveal('.icons' , {delay:500, origin: 'left'});
sr.reveal('.scroll-down' , {delay:500, origin: 'right'});