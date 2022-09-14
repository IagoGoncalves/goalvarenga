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
		<section class="projetos">
			<div class="titulo">
				<span>Nossos Projetos</span>
				<h2>Projetos</h2>
			</div>
			<article class="container">
				<div class="swiper-container projetos-home">
					<div class="swiper-wrapper">
						<?php 
							$args = array('post_type' => 'projeto','posts_per_page' => -1);
							$var = new WP_Query($args);
							if($var->have_posts()):
								while($var->have_posts()):
									$var->the_post();?>                                   
										<div class="swiper-slide">
											<div class="box">
												<?php echo odin_thumbnail(470, 322, get_the_title(), true, true);?>
												<a class="botao-projetos" href="#"><?php the_title()?></a>
											</div>
										</div>
									<?php
								endwhile;
							endif;
						wp_reset_postdata(); ?>
					</div> 
					<div class="swiper-pagination"></div>
				</div>                                     
				<div class="swiper-button-prev4 prev swiper-button">
					<svg width="66" height="66" viewBox="0 0 66 66" fill="none" xmlns="http://www.w3.org/2000/svg">
						<rect width="66" height="66" rx="33" transform="matrix(-1 0 0 1 66 0)" fill="#242424"/>
						<path d="M43.781 34.1642L23.9422 33.9201L27.266 37.932C27.3429 38.0251 27.4009 38.1324 27.4366 38.248C27.4722 38.3636 27.4849 38.485 27.4739 38.6055C27.4515 38.8488 27.3339 39.0733 27.1469 39.2295C26.96 39.3856 26.7189 39.4608 26.4768 39.4383C26.2346 39.4159 26.0113 39.2977 25.8559 39.1098L21.2776 33.5889C21.2468 33.545 21.2193 33.4988 21.1952 33.4509C21.1952 33.4049 21.1495 33.3772 21.1311 33.3312C21.0896 33.2257 21.0679 33.1134 21.067 33C21.0679 32.8865 21.0896 32.7742 21.1311 32.6687C21.1311 32.6227 21.1769 32.5951 21.1952 32.5491C21.2193 32.5011 21.2468 32.455 21.2776 32.4111L25.8559 26.8901C25.942 26.7863 26.0498 26.7027 26.1716 26.6455C26.2935 26.5882 26.4264 26.5587 26.5609 26.5589C26.7749 26.5585 26.9822 26.6333 27.1469 26.7705C27.2397 26.8478 27.3163 26.9426 27.3725 27.0497C27.4287 27.1567 27.4633 27.2739 27.4743 27.3944C27.4854 27.5149 27.4727 27.6364 27.4369 27.752C27.4012 27.8676 27.3431 27.9749 27.266 28.0679L23.9422 32.0798L43.781 32.3239C44.0239 32.3239 44.2568 32.4208 44.4285 32.5934C44.6002 32.7659 44.6967 33 44.6967 33.244C44.6967 33.4881 44.6002 33.7221 44.4285 33.8947C44.2568 34.0672 44.0239 34.1642 43.781 34.1642Z" fill="white"/>
					</svg>
				</div>
				<div class="swiper-button-next4 next swiper-button">
					<svg width="66" height="66" viewBox="0 0 66 66" fill="none" xmlns="http://www.w3.org/2000/svg">
						<rect width="66" height="66" rx="33" fill="#242424"/>
						<path d="M22.219 34.1642L42.0578 33.9201L38.734 37.932C38.6571 38.0251 38.5991 38.1324 38.5634 38.248C38.5278 38.3636 38.5151 38.485 38.5261 38.6055C38.5485 38.8488 38.6661 39.0733 38.8531 39.2295C39.04 39.3856 39.2811 39.4608 39.5232 39.4383C39.7654 39.4159 39.9887 39.2977 40.1441 39.1098L44.7224 33.5889C44.7532 33.545 44.7807 33.4988 44.8048 33.4509C44.8048 33.4049 44.8505 33.3772 44.8689 33.3312C44.9104 33.2257 44.9321 33.1134 44.933 33C44.9321 32.8865 44.9104 32.7742 44.8689 32.6687C44.8689 32.6227 44.8231 32.5951 44.8048 32.5491C44.7807 32.5011 44.7532 32.455 44.7224 32.4111L40.1441 26.8901C40.058 26.7863 39.9502 26.7027 39.8284 26.6455C39.7065 26.5882 39.5736 26.5587 39.4391 26.5589C39.2251 26.5585 39.0178 26.6333 38.8531 26.7705C38.7603 26.8478 38.6837 26.9426 38.6275 27.0497C38.5713 27.1567 38.5367 27.2739 38.5257 27.3944C38.5146 27.5149 38.5273 27.6364 38.5631 27.752C38.5988 27.8676 38.6569 27.9749 38.734 28.0679L42.0578 32.0798L22.219 32.3239C21.9761 32.3239 21.7432 32.4208 21.5715 32.5934C21.3998 32.7659 21.3033 33 21.3033 33.244C21.3033 33.4881 21.3998 33.7221 21.5715 33.8947C21.7432 34.0672 21.9761 34.1642 22.219 34.1642Z" fill="white"/>
					</svg>
				</div>               
			</article>
		</section>
		<section class="obra">
			<h2>Sua obra em boas mãos!</h2>
			<article class="infos alinhamento">
				<a href="#" class="botao-padrao">Faça um orçamento</a>
				<div class="contato alinhamento">
					<?php
						$args = array('post_type' => 'dados','posts_per_page' => 1);
							$var = new WP_Query($args);
							if($var->have_posts()):
								while($var->have_posts()):
									$var->the_post(); ?>
										<?php 
											$telefone =  get_post_meta( $post->ID,'telefone1', true );
											$whatsapp =  get_post_meta( $post->ID,'whatsapp', true );
											$logradouro =  get_post_meta( $post->ID,'logradouro', true );
											$endereco =  get_post_meta( $post->ID,'endereco', true );
											$numero =  get_post_meta( $post->ID,'numero', true );
											$bairro =  get_post_meta( $post->ID,'bairro', true );
											$cidade =  get_post_meta( $post->ID,'cidade', true );
											$estado =  get_post_meta( $post->ID,'estado', true );
											$cep =  get_post_meta( $post->ID,'cep', true );
											$email =  get_post_meta( $post->ID,'email1', true );
											$complemento =  get_post_meta( $post->ID,'complemento', true );
											$facebook =  get_post_meta( $post->ID,'facebook', true );
											$instagram =  get_post_meta( $post->ID,'instagram', true );
										?>
										<img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo-redondo"/>
										<span>
											<p>Fale com nosso<br>setor de vendas:</p>
											<div class="icones">
												<a class="email" href="mailto:<?php echo $email ?>" target="_blank">
													<svg width="34" height="34" viewBox="0 0 34 34" fill="none" xmlns="http://www.w3.org/2000/svg">
														<g clip-path="url(#clip0_42_1520)">
														<path d="M30.5339 5.66669C30.4052 5.65342 30.2754 5.65342 30.1467 5.66669H3.70222C3.53273 5.6693 3.36437 5.69471 3.20166 5.74224L16.8489 19.3328L30.5339 5.66669Z" fill="#181614"/>
														<path d="M31.9316 6.97925L18.1805 20.6737C17.8266 21.0255 17.3479 21.223 16.8489 21.223C16.3498 21.223 15.8711 21.0255 15.5172 20.6737L1.88887 7.08314C1.84697 7.23712 1.82475 7.39579 1.82275 7.55536V26.4442C1.82275 26.9452 2.02176 27.4257 2.376 27.7799C2.73023 28.1341 3.21068 28.3331 3.71164 28.3331H30.1561C30.6571 28.3331 31.1375 28.1341 31.4917 27.7799C31.846 27.4257 32.045 26.9452 32.045 26.4442V7.55536C32.0375 7.35859 31.9992 7.1642 31.9316 6.97925ZM5.00553 26.4442H3.69275V25.0937L10.5589 18.2842L11.8905 19.6159L5.00553 26.4442ZM30.1372 26.4442H28.815L21.93 19.6159L23.2616 18.2842L30.1278 25.0937L30.1372 26.4442Z" fill="#181614"/>
														</g>
														<defs>
														<clipPath id="clip0_42_1520">
														<rect width="34" height="34" fill="white"/>
														</clipPath>
														</defs>
													</svg>
												</a>
												<a class="whatsapp" href="https://api.whatsapp.com/send?phone=55<?php echo $whatsapp ?>&text=Olá, vim pelo site da GO Alvarenga" alt="<?php echo $whatsapp ?>" title="<?php echo $whatsapp ?>1" target="_blank">
													<svg width="26" height="26" viewBox="0 0 26 26" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path d="M23.3631 5.94463C19.5969 0.13848 11.9077 -1.58767 5.94463 2.02156C0.138472 5.63079 -1.7446 13.4769 2.02155 19.2831L2.3354 19.7539L1.08001 24.4616L5.7877 23.2062L6.25847 23.52C8.29847 24.6185 10.4954 25.2462 12.6923 25.2462C15.0462 25.2462 17.4 24.6185 19.44 23.3631C25.2462 19.5969 26.9723 11.9077 23.3631 5.94463V5.94463ZM20.0677 18.0277C19.44 18.9692 18.6554 19.5969 17.5569 19.7539C16.9292 19.7539 16.1446 20.0677 13.0062 18.8123C10.3385 17.5569 8.14155 15.5169 6.57232 13.1631C5.63078 12.0646 5.16001 10.6523 5.00309 9.24002C5.00309 7.98463 5.47386 6.88617 6.25847 6.10156C6.57232 5.78771 6.88617 5.63079 7.20001 5.63079H7.98463C8.29847 5.63079 8.61232 5.63079 8.76924 6.25848C9.08309 7.0431 9.8677 8.92617 9.8677 9.0831C10.0246 9.24002 10.0246 9.55387 9.8677 9.71079C10.0246 10.0246 9.8677 10.3385 9.71078 10.4954C9.55386 10.6523 9.39693 10.9662 9.24001 11.1231C8.92617 11.28 8.76924 11.5939 8.92616 11.9077C9.55386 12.8492 10.3385 13.7908 11.1231 14.5754C12.0646 15.36 13.0062 15.9877 14.1046 16.4585C14.4185 16.6154 14.7323 16.6154 14.8892 16.3016C15.0462 15.9877 15.8308 15.2031 16.1446 14.8892C16.4585 14.5754 16.6154 14.5754 16.9292 14.7323L19.44 15.9877C19.7539 16.1446 20.0677 16.3016 20.2246 16.4585C20.3816 16.9292 20.3815 17.5569 20.0677 18.0277V18.0277Z" fill="#151814"/>
													</svg>
												</a>
											</div>
										</span>
										<?php
								endwhile;
							endif;
						wp_reset_postdata(); 
					?>
				</div>
			</article>
		</section>
	</main>
<?php
get_footer();