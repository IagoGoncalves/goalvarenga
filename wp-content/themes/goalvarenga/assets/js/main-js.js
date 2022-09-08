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
                type: "fraction",
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
    // Projetos
        var swiper = new Swiper('.projetos', {
            slidesPerView: 3,
            spaceBetween: 30,		
            speed: 2000,
            loop: true,		
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next4',
                prevEl: '.swiper-button-prev4',
            },		
            breakpoints: {
                1200: {
                    slidesPerView: 3,
                    spaceBetween: 10,
                },
                768: {
                    slidesPerView: 2,
                    spaceBetween: 20,
                },
                640: {
                    slidesPerView: 1,
                    spaceBetween: 10,
                },
                425: {
                    slidesPerView: 1,
                    spaceBetween: 10,
                }
            },
            autoplay: {
                delay: 3000,
            },
        });
});

function alternadorMissao(){
    document.getElementById('missao').style.display = 'block';
    document.getElementById('visao').style.display = 'none';
    document.getElementById('valores').style.display = 'none';
}
function alternadorVisao(){
    document.getElementById('missao').style.display = 'none';
    document.getElementById('visao').style.display = 'block';
    document.getElementById('valores').style.display = 'none';
}
function alternadorValores(){
    document.getElementById('missao').style.display = 'none';
    document.getElementById('visao').style.display = 'none';
    document.getElementById('valores').style.display = 'block';
}