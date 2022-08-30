jQuery(document).ready(function($) {
    // Banner da pagina home
    var swiper = new Swiper('.banner-home', {
        speed: 2000,
        parallax: true,
        loop: true,
        spaceBetween: 30,
        effect: 'fade',
        pagination: {
        el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        autoplay: {
            delay: 5000,
        },    
  });
});