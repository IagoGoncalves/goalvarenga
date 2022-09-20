<?php
/**
 * Template Name: contato
 *
 * The template for displaying pages with sidebar.
 *
 * @package Odin
 * @since 2.2.0
 */

get_header();
?>
	<main id="contato" class="contato" tabindex="-1" role="main">
		<section class="navegacao">
			<h1>Contato</h1>
			<article class="breadcrumb">
				<div class="container">
					<ul>
						<li><a href="<?php echo esc_url( home_url( 'home' ) ); ?>">Home </a></li>
						<li class="atual"><h1>> Contato</h1></li>
					</ul>
				</div>
			</article>
		</section>
		<section class="container separador">
			<article class="info">
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
										$horarioFuncionamento =  get_post_meta( $post->ID,'horario-funcionamento', true );
									?>
									<a class="localizacao alinhamento" href="https://goo.gl/maps/jKnNByFr4hV1MPft9" target="_blank">
										<img src="<?php echo get_template_directory_uri(); ?>/assets/images/loc-yellow.svg"/>
										<span>
											<h3>Localização:</h3>
											<p><?php echo $logradouro ?> <?php echo $endereco ?> - <br> <?php echo $cidade ?>, <?php echo $estado ?>, <?php echo $cep ?></p>
										</span>
									</a>
									<div class="horario alinhamento">
										<img src="<?php echo get_template_directory_uri(); ?>/assets/images/clock-yellow.svg"/>
										<span>
											<h3>Horário de funcionamento:</h3>
											<p><?php echo $horarioFuncionamento?></p>
										</span>
									</div>
									<a class="email alinhamento" href="mailto:<?php echo $email ?>" target="_blank">
										<img src="<?php echo get_template_directory_uri(); ?>/assets/images/email-yellow.svg"/>
										<span>
											<h3>E-mail:</h3>
											<p><?php echo $email?></p>
										</span>
									</div>
									<a class="telefone alinhamento" href="tel:<?php echo $telefone ?>" alt="tel: <?php echo $telefone ?>" title="tel: <?php echo $telefone ?>" target="_blank">    
										<img src="<?php echo get_template_directory_uri(); ?>/assets/images/tel-yellow.svg"/>
										<span>
											<h3>Telefone:</h3>
											<p><?php echo $telefone?></p>
										</span>
									</a>
									<a class="whatsapp alinhamento" href="https://api.whatsapp.com/send?phone=55<?php echo $whatsapp ?>&text=Olá, vim pelo site da GO Alvarenga" alt="<?php echo $whatsapp ?>" title="<?php echo $whatsapp ?>1" target="_blank">
										<img src="<?php echo get_template_directory_uri(); ?>/assets/images/whats-yellow.svg"/>
										<span>
											<h3>Whatsapp:</h3>
											<p><?php echo $whatsapp?></p>
										</span>
									</a>
								<?php
							endwhile;
						endif;
					wp_reset_postdata(); 
				?>
			</article>
			<article class="formulario">
				<form class="contact2-form" id="contato" name="enviar-email" method="post">
					<input class="tipo-email" type="hidden" name="tipo-email" value="contato">
					<div class="campos campo1">
						<input class="input2" type="text" name="name" required>
						<span class="focus-input2" data-placeholder="Seu nome"></span>
					</div>

					<div class="campos campo2">
						<input class="input2" type="email" name="email" required>
						<span class="focus-input2" data-placeholder="Seu e-mail"></span>					
					</div>

					<div class="campos campo3">
						<input class="input2" type="text" name="telefone" required>
						<span class="focus-input2" data-placeholder="Seu telefone"></span>
					</div>
					<div class="campos campo2">
						<input class="input2" type="text" name="assunto" required>
						<span class="focus-input2" data-placeholder="Assunto"></span>
					</div>

					<div class="campos campo1">
						<textarea class="input2 area" name="message" required></textarea>
						<span class="focus-input2" data-placeholder="Mensagem"></span>
					</div>
					
					<!-- Recaptcha -->
					<div class="g-recaptcha_align campo4">
						<div class="g-recaptcha" data-sitekey="6LdtdSohAAAAAMB3L0zW-l7Jx6eU9uCypi_-cn-H"></div>
					</div>	
					<script>
						window.onload = function() {
						var recaptcha = document.forms["contato"]["g-recaptcha-response"];
						recaptcha.required = true;
						recaptcha.oninvalid = function(e) {
							// fazer algo, no caso to dando um alert
							alert("Por favor Click no reCaptcha para validar o Formulario.");
							}
						}
					</script>		
					
					<div class="valida-envio"></div>
					<svg width='50px' height='50px' xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" preserveAspectRatio="xMidYMid" class="uil-default load"><rect x="0" y="0" width="100" height="100" fill="none" class="bk"></rect><rect  x='46.5' y='40' width='7' height='20' rx='5' ry='5' fill='#082559' transform='rotate(0 50 50) translate(0 -30)'>  <animate attributeName='opacity' from='1' to='0' dur='1s' begin='0s' repeatCount='indefinite'/></rect><rect  x='46.5' y='40' width='7' height='20' rx='5' ry='5' fill='#082559' transform='rotate(30 50 50) translate(0 -30)'>  <animate attributeName='opacity' from='1' to='0' dur='1s' begin='0.08333333333333333s' repeatCount='indefinite'/></rect><rect  x='46.5' y='40' width='7' height='20' rx='5' ry='5' fill='#082559' transform='rotate(60 50 50) translate(0 -30)'>  <animate attributeName='opacity' from='1' to='0' dur='1s' begin='0.16666666666666666s' repeatCount='indefinite'/></rect><rect  x='46.5' y='40' width='7' height='20' rx='5' ry='5' fill='#082559' transform='rotate(90 50 50) translate(0 -30)'>  <animate attributeName='opacity' from='1' to='0' dur='1s' begin='0.25s' repeatCount='indefinite'/></rect><rect  x='46.5' y='40' width='7' height='20' rx='5' ry='5' fill='#082559' transform='rotate(120 50 50) translate(0 -30)'>  <animate attributeName='opacity' from='1' to='0' dur='1s' begin='0.3333333333333333s' repeatCount='indefinite'/></rect><rect  x='46.5' y='40' width='7' height='20' rx='5' ry='5' fill='#082559' transform='rotate(150 50 50) translate(0 -30)'>  <animate attributeName='opacity' from='1' to='0' dur='1s' begin='0.4166666666666667s' repeatCount='indefinite'/></rect><rect  x='46.5' y='40' width='7' height='20' rx='5' ry='5' fill='#082559' transform='rotate(180 50 50) translate(0 -30)'>  <animate attributeName='opacity' from='1' to='0' dur='1s' begin='0.5s' repeatCount='indefinite'/></rect><rect  x='46.5' y='40' width='7' height='20' rx='5' ry='5' fill='#082559' transform='rotate(210 50 50) translate(0 -30)'>  <animate attributeName='opacity' from='1' to='0' dur='1s' begin='0.5833333333333334s' repeatCount='indefinite'/></rect><rect  x='46.5' y='40' width='7' height='20' rx='5' ry='5' fill='#082559' transform='rotate(240 50 50) translate(0 -30)'>  <animate attributeName='opacity' from='1' to='0' dur='1s' begin='0.6666666666666666s' repeatCount='indefinite'/></rect><rect  x='46.5' y='40' width='7' height='20' rx='5' ry='5' fill='#082559' transform='rotate(270 50 50) translate(0 -30)'>  <animate attributeName='opacity' from='1' to='0' dur='1s' begin='0.75s' repeatCount='indefinite'/></rect><rect  x='46.5' y='40' width='7' height='20' rx='5' ry='5' fill='#082559' transform='rotate(300 50 50) translate(0 -30)'>  <animate attributeName='opacity' from='1' to='0' dur='1s' begin='0.8333333333333334s' repeatCount='indefinite'/></rect><rect  x='46.5' y='40' width='7' height='20' rx='5' ry='5' fill='#082559' transform='rotate(330 50 50) translate(0 -30)'>  <animate attributeName='opacity' from='1' to='0' dur='1s' begin='0.9166666666666666s' repeatCount='indefinite'/></rect></svg>
					
					<div class="botao-enviar">
						<button class="btn" value="submit">Enviar</button>
					</div>
				</form>
			</article>
		</section>
		<div class="mapa">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3676.7652321128844!2d-46.29972000000001!3d-22.8481737!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ceac0d8dca4177%3A0x8138b79b047cf07c!2sG.O.Alvarenga%20Construtora%20Extrema%20MG!5e0!3m2!1spt-BR!2sbr!4v1663705200291!5m2!1spt-BR!2sbr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
		</div>
	</main>
<?php
get_footer();
