<?php
/**
 * Template Name: Home
 *
 * The template for displaying pages with sidebar.
 *
 * @package Odin
 * @since 2.2.0
 */

get_header();
?>
	<main id="home" class="home" tabindex="-1" role="main">
		<section class="banner">
			<div class="swiper-container banner-home">
				<div class="swiper-wrapper">
					<?php
						$args = array('post_type' => 'banner','posts_per_page' => -1);
							$var = new WP_Query($args);
							if($var->have_posts()):
								while($var->have_posts()):
									$var->the_post();?>																	
										<div class="swiper-slide">
											<div class="descricoes">
												<h2 data-swiper-parallax="2300"><?php the_title(); ?></h2>
												<h3 data-swiper-parallax="-1800"><?php the_content(); ?></h3>	
												<div data-swiper-parallax="-1000">
													<a href="#" class="botao-padrao">Saiba mais</a>
												</div>
											</div>	
											<div class="foto-banner" data-swiper-parallax="0">
												<?php echo odin_thumbnail(1144, 905, get_the_title(), true, true);?>
											</div>		
										</div>	
									<?php
								endwhile;
							endif;
						wp_reset_postdata(); 
					?>
				</div>
				<div class="navegacao-swiper">
					<span class="branco"></span>
					<div class="swiper-pagination"></div>
					<div class="botoes">
						<div class="swiper-button-prev">
							<svg width="66" height="66" viewBox="0 0 66 66" fill="none" xmlns="http://www.w3.org/2000/svg">
								<rect width="66" height="66" rx="33" transform="matrix(-1 0 0 1 66 0)" fill="#242424"/>
								<path d="M43.781 34.1642L23.9422 33.9201L27.266 37.932C27.3429 38.0251 27.4009 38.1324 27.4366 38.248C27.4722 38.3636 27.4849 38.485 27.4739 38.6055C27.4515 38.8488 27.3339 39.0733 27.1469 39.2295C26.96 39.3856 26.7189 39.4608 26.4768 39.4383C26.2346 39.4159 26.0113 39.2977 25.8559 39.1098L21.2776 33.5889C21.2468 33.545 21.2193 33.4988 21.1952 33.4509C21.1952 33.4049 21.1495 33.3772 21.1311 33.3312C21.0896 33.2257 21.0679 33.1134 21.067 33C21.0679 32.8865 21.0896 32.7742 21.1311 32.6687C21.1311 32.6227 21.1769 32.5951 21.1952 32.5491C21.2193 32.5011 21.2468 32.455 21.2776 32.4111L25.8559 26.8901C25.942 26.7863 26.0498 26.7027 26.1716 26.6455C26.2935 26.5882 26.4264 26.5587 26.5609 26.5589C26.7749 26.5585 26.9822 26.6333 27.1469 26.7705C27.2397 26.8478 27.3163 26.9426 27.3725 27.0497C27.4287 27.1567 27.4633 27.2739 27.4743 27.3944C27.4854 27.5149 27.4727 27.6364 27.4369 27.752C27.4012 27.8676 27.3431 27.9749 27.266 28.0679L23.9422 32.0798L43.781 32.3239C44.0239 32.3239 44.2568 32.4208 44.4285 32.5934C44.6002 32.7659 44.6967 33 44.6967 33.244C44.6967 33.4881 44.6002 33.7221 44.4285 33.8947C44.2568 34.0672 44.0239 34.1642 43.781 34.1642Z" fill="white"/>
							</svg>
						</div>
						<div class="swiper-button-next">
							<svg width="66" height="66" viewBox="0 0 66 66" fill="none" xmlns="http://www.w3.org/2000/svg">
								<rect width="66" height="66" rx="33" fill="#242424"/>
								<path d="M22.219 34.1642L42.0578 33.9201L38.734 37.932C38.6571 38.0251 38.5991 38.1324 38.5634 38.248C38.5278 38.3636 38.5151 38.485 38.5261 38.6055C38.5485 38.8488 38.6661 39.0733 38.8531 39.2295C39.04 39.3856 39.2811 39.4608 39.5232 39.4383C39.7654 39.4159 39.9887 39.2977 40.1441 39.1098L44.7224 33.5889C44.7532 33.545 44.7807 33.4988 44.8048 33.4509C44.8048 33.4049 44.8505 33.3772 44.8689 33.3312C44.9104 33.2257 44.9321 33.1134 44.933 33C44.9321 32.8865 44.9104 32.7742 44.8689 32.6687C44.8689 32.6227 44.8231 32.5951 44.8048 32.5491C44.7807 32.5011 44.7532 32.455 44.7224 32.4111L40.1441 26.8901C40.058 26.7863 39.9502 26.7027 39.8284 26.6455C39.7065 26.5882 39.5736 26.5587 39.4391 26.5589C39.2251 26.5585 39.0178 26.6333 38.8531 26.7705C38.7603 26.8478 38.6837 26.9426 38.6275 27.0497C38.5713 27.1567 38.5367 27.2739 38.5257 27.3944C38.5146 27.5149 38.5273 27.6364 38.5631 27.752C38.5988 27.8676 38.6569 27.9749 38.734 28.0679L42.0578 32.0798L22.219 32.3239C21.9761 32.3239 21.7432 32.4208 21.5715 32.5934C21.3998 32.7659 21.3033 33 21.3033 33.244C21.3033 33.4881 21.3998 33.7221 21.5715 33.8947C21.7432 34.0672 21.9761 34.1642 22.219 34.1642Z" fill="white"/>
							</svg>
						</div>	
					</div>
				</div>
			</div>			
		</section>
		<section class="empresa">
			<div class="titulo">
				<span>quem somos?</span>
				<h2>A empresa</h2>
			</div>
			<section class="container">
				<?php
					$descritivoEmpresa =  get_post_meta( $post->ID,'descritivo-empresa', true );
					$construcao =  get_post_meta( $post->ID,'construcao', true );
					$textoConstrucao =  get_post_meta( $post->ID,'texto-construcao', true );
					$reparos =  get_post_meta( $post->ID,'reparos', true );
					$textoReparos =  get_post_meta( $post->ID,'texto-reparos', true );
					$projetos =  get_post_meta( $post->ID,'projetos', true );
					$textoProjetos =  get_post_meta( $post->ID,'texto-projetos', true );
				?>
				<article class="imagens">
					<div class="img1">
						<?php 
							$galeria = get_post_meta( $post->ID,'imagem-fundo', true );					
							$galeria = explode(",", $galeria);
							foreach ( $galeria as $foto ) { ?>					
								<img src="<?php echo odin_get_image_url( $foto, 600, 500, true,true);?>" alt="<?php echo get_the_title($foto); ?>">
							<?php }
						?>
					</div>
					<div class="img2">
						<?php 
							$galeria = get_post_meta( $post->ID,'imagem-frente', true );					
							$galeria = explode(",", $galeria);
							foreach ( $galeria as $foto ) { ?>					
								<img class="abs" src="<?php echo odin_get_image_url( $foto, 600, 500, true,true);?>" alt="<?php echo get_the_title($foto); ?>">
							<?php }
						?>
					</div>
				</article>
				<article class="textos">
					<p><?php echo $descritivoEmpresa?></p>
					<div class="icones-texto alinhamento">
						<img src="<?php echo get_template_directory_uri(); ?>/assets/images/icnempresa.svg"/>
						<span>
							<h3><?php echo $construcao?></h3>
							<p><?php echo $textoConstrucao?></p>
							<h3><?php echo $reparos?></h3>
							<p><?php echo $textoReparos?></p>
							<h3><?php echo $projetos?></h3>
							<p><?php echo $textoProjetos?></p>
						</span>
					</div>
					<a href="#" class="botao-padrao">Saiba mais</a>
				</article>
			</section>
		</section>
		<section class="servicos">
			<div class="titulo">
				<span>Nossos Serviços</span>
				<h2>Serviços</h2>
			</div>
			<article class="card">
				<?php
					$args = array('post_type' => 'servico','posts_per_page' => 3);
						$var = new WP_Query($args);
						if($var->have_posts()):
							while($var->have_posts()):
								$var->the_post(); ?>
									<div class="box">
										<h3><?php the_title()?></h3>
										<?php the_content()?>
										<a href="#" class="botao-secundario">Saiba mais</a>
									</div>							
									<?php echo odin_thumbnail(640, 400, get_the_title(), true,true);?>	
								<?php
							endwhile;
						endif;
					wp_reset_postdata(); 
				?>
			</article>
		</section>
	</main>
<?php
get_footer();