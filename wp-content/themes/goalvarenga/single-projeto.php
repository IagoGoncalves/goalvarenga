<?php
/**
 * The Template for displaying all single posts.
 *
 * @package Odin
 * @since 2.2.0
 */

get_header();?>
	<main id="single-projeto" class="single-projeto" tabindex="-1" role="main">
		<section class="navegacao">
			<h1><?php the_title()?></h1>
			<article class="breadcrumb">
				<div class="container">
					<ul>
						<li><a href="<?php echo esc_url( home_url( 'home' ) ); ?>">Home </a></li>
						<li><a href="<?php echo esc_url( home_url( 'projetos' ) ); ?>">> Projetos </a></li>
						<li class="atual"><h1>> <?php the_title()?></h1></li>
					</ul>
				</div>
			</article>
		</section>
		<article class="container">
			<aside class="agrupador">
				<div class="swiper-button-prev4 prev swiper-button">
					<svg width="66" height="66" viewBox="0 0 66 66" fill="none" xmlns="http://www.w3.org/2000/svg">
						<rect width="66" height="66" rx="33" transform="matrix(-1 0 0 1 66 0)" fill="#242424"/>
						<path d="M43.781 34.1642L23.9422 33.9201L27.266 37.932C27.3429 38.0251 27.4009 38.1324 27.4366 38.248C27.4722 38.3636 27.4849 38.485 27.4739 38.6055C27.4515 38.8488 27.3339 39.0733 27.1469 39.2295C26.96 39.3856 26.7189 39.4608 26.4768 39.4383C26.2346 39.4159 26.0113 39.2977 25.8559 39.1098L21.2776 33.5889C21.2468 33.545 21.2193 33.4988 21.1952 33.4509C21.1952 33.4049 21.1495 33.3772 21.1311 33.3312C21.0896 33.2257 21.0679 33.1134 21.067 33C21.0679 32.8865 21.0896 32.7742 21.1311 32.6687C21.1311 32.6227 21.1769 32.5951 21.1952 32.5491C21.2193 32.5011 21.2468 32.455 21.2776 32.4111L25.8559 26.8901C25.942 26.7863 26.0498 26.7027 26.1716 26.6455C26.2935 26.5882 26.4264 26.5587 26.5609 26.5589C26.7749 26.5585 26.9822 26.6333 27.1469 26.7705C27.2397 26.8478 27.3163 26.9426 27.3725 27.0497C27.4287 27.1567 27.4633 27.2739 27.4743 27.3944C27.4854 27.5149 27.4727 27.6364 27.4369 27.752C27.4012 27.8676 27.3431 27.9749 27.266 28.0679L23.9422 32.0798L43.781 32.3239C44.0239 32.3239 44.2568 32.4208 44.4285 32.5934C44.6002 32.7659 44.6967 33 44.6967 33.244C44.6967 33.4881 44.6002 33.7221 44.4285 33.8947C44.2568 34.0672 44.0239 34.1642 43.781 34.1642Z" fill="white"/>
					</svg>
				</div>
				<div class="swiper-container single-projeto-swip">
					<div class="swiper-wrapper">
						<?php 
							$galeria = get_post_meta( $post->ID,'img-single-projeto', true );					
							$galeria = explode(",", $galeria);
							foreach ( $galeria as $foto ) { ?>	
								<div class="swiper-slide">	
									<div class="foto">
										<img src="<?php echo odin_get_image_url( $foto, 931, 496, true, true);?>" alt="<?php echo get_the_title($foto); ?>">
									</div>
								</div>
							<?php }
						?>
					</div> 
				</div>                                     
				<div class="swiper-button-next4 next swiper-button">
					<svg width="66" height="66" viewBox="0 0 66 66" fill="none" xmlns="http://www.w3.org/2000/svg">
						<rect width="66" height="66" rx="33" fill="#242424"/>
						<path d="M22.219 34.1642L42.0578 33.9201L38.734 37.932C38.6571 38.0251 38.5991 38.1324 38.5634 38.248C38.5278 38.3636 38.5151 38.485 38.5261 38.6055C38.5485 38.8488 38.6661 39.0733 38.8531 39.2295C39.04 39.3856 39.2811 39.4608 39.5232 39.4383C39.7654 39.4159 39.9887 39.2977 40.1441 39.1098L44.7224 33.5889C44.7532 33.545 44.7807 33.4988 44.8048 33.4509C44.8048 33.4049 44.8505 33.3772 44.8689 33.3312C44.9104 33.2257 44.9321 33.1134 44.933 33C44.9321 32.8865 44.9104 32.7742 44.8689 32.6687C44.8689 32.6227 44.8231 32.5951 44.8048 32.5491C44.7807 32.5011 44.7532 32.455 44.7224 32.4111L40.1441 26.8901C40.058 26.7863 39.9502 26.7027 39.8284 26.6455C39.7065 26.5882 39.5736 26.5587 39.4391 26.5589C39.2251 26.5585 39.0178 26.6333 38.8531 26.7705C38.7603 26.8478 38.6837 26.9426 38.6275 27.0497C38.5713 27.1567 38.5367 27.2739 38.5257 27.3944C38.5146 27.5149 38.5273 27.6364 38.5631 27.752C38.5988 27.8676 38.6569 27.9749 38.734 28.0679L42.0578 32.0798L22.219 32.3239C21.9761 32.3239 21.7432 32.4208 21.5715 32.5934C21.3998 32.7659 21.3033 33 21.3033 33.244C21.3033 33.4881 21.3998 33.7221 21.5715 33.8947C21.7432 34.0672 21.9761 34.1642 22.219 34.1642Z" fill="white"/>
					</svg>
				</div>  
			</aside>
			<aside class="descritivo alinhamento">
				<?php
					$cliente =  get_post_meta( $post->ID,'cliente', true );
					$data =  get_post_meta( $post->ID,'data', true );
					$localizacao =  get_post_meta( $post->ID,'localizacao', true );
				?>
				<div class="box box1">
					<div class="linha">
						<h3>Categoria</h3>
						<p><?php echo wp_get_post_terms( $post->ID, 'categoria-projetos')[0]->name;?></p>
					</div>
				</div>
				<div class="box box2">
					<div class="linha">
						<h3>Cliente</h3>
						<p><?php echo $cliente?></p>
					</div>
				</div>
				<div class="box box3">
					<div class="linha">
						<h3>Data Conclusão</h3>
						<p><?php echo $data?></p>
					</div>
				</div>
				<div class="box box4">
					<div class="linha">
						<h3>Localização</h3>
						<p><?php echo $localizacao?></p>
					</div>
				</div>
			</aside>       
			<div class="voltar">
				<a href="#" onclick='history.go(-1)' class="botao-quaternario">Voltar</a>
			</div>      
		</article>
	</main>
<?php
get_footer();