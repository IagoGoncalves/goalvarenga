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
    // Serviços
        var swiper = new Swiper('.galeria-servico', {
            speed: 2000,
            parallax: true,
            loop: true,
            spaceBetween: 30,
            effect: 'fade',
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            autoplay: {
                delay: 5000,
            },    
        });
    // Projetos
        var swiper = new Swiper('.projetos-home', {
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
                    slidesPerView: 1,
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
    // Single Projetos
        var swiper = new Swiper('.single-projeto-swip', {
            speed: 2000,
            loop: true,
            spaceBetween: 30,
            navigation: {
                nextEl: '.swiper-button-next4',
                prevEl: '.swiper-button-prev4',
            },
            autoplay: {
                delay: 4000,
            },    
        });

    // Efeito de animação formulário
        $('.input2').each(function(){
            $(this).on('blur', function(){
                if($(this).val().trim() != "") {
                    $(this).addClass('has-val');
                }
                else {
                    $(this).removeClass('has-val');
                }
            })    
        })
});

function alternadorMissao(){
    document.getElementById('btnmissao').style.backgroundColor = "#EEA91D";
    document.getElementById('btnmissao').style.color = "#fff";
    document.getElementById('btnvisao').style.backgroundColor = "#f5f5f5";
    document.getElementById('btnvisao').style.color = "#EEA91D";
    document.getElementById('btnvalores').style.backgroundColor = "#f5f5f5";
    document.getElementById('btnvalores').style.color = "#EEA91D";

    document.getElementById('missao').style.display = 'flex';
    document.getElementById('visao').style.display = 'none';
    document.getElementById('valores').style.display = 'none';
}
function alternadorVisao(){
    document.getElementById('btnmissao').style.backgroundColor = "#f5f5f5";
    document.getElementById('btnmissao').style.color = "#EEA91D";
    document.getElementById('btnvisao').style.backgroundColor = "#EEA91D";
    document.getElementById('btnvisao').style.color = "#fff";
    document.getElementById('btnvalores').style.backgroundColor = "#f5f5f5";
    document.getElementById('btnvalores').style.color = "#EEA91D";

    document.getElementById('missao').style.display = 'none';
    document.getElementById('visao').style.display = 'flex';
    document.getElementById('valores').style.display = 'none';
}
function alternadorValores(){
    document.getElementById('btnmissao').style.backgroundColor = "#f5f5f5";
    document.getElementById('btnmissao').style.color = "#EEA91D";
    document.getElementById('btnvisao').style.backgroundColor = "#f5f5f5";
    document.getElementById('btnvisao').style.color = "#EEA91D";
    document.getElementById('btnvalores').style.backgroundColor = "#EEA91D";
    document.getElementById('btnvalores').style.color = "#fff";

    document.getElementById('missao').style.display = 'none';
    document.getElementById('visao').style.display = 'none';
    document.getElementById('valores').style.display = 'flex';
}