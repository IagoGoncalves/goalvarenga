<?php
/**
 * Template Name: empresa
 *
 * The template for displaying pages with sidebar.
 *
 * @package Odin
 * @since 2.2.0
 */

get_header();
?>
	<main id="empresa" class="empresa" tabindex="-1" role="main">
		<section class="navegacao">
			<h1>A empresa</h1>
			<article class="breadcrumb">
				<div class="container">
					<ul>
						<li><a href="<?php echo esc_url( home_url( 'home' ) ); ?>">Home </a></li>
						<li class="atual"><h1>> Empresa</h1></li>
					</ul>
				</div>
			</article>
		</section>
		<div class="container">
			<section class="sobre">
				<article class="infos">
					<h3>Sobre a empresa</h3>
					<?php the_content()?>
					<div class="colapsagem">
						<div class="titulos">
							<ul>
								<li><a href="javascript:void(0)" id="btnmissao" onclick="alternadorMissao()">Missão</a></li>
								<li><a href="javascript:void(0)" id="btnvisao" onclick="alternadorVisao()">Visão</a></li>
								<li><a href="javascript:void(0)" id="btnvalores" onclick="alternadorValores()">Valores</a></li>
							</ul>
						</div>
						<span class="missao" id='missao'>Planejar e executar edificações com qualidade, rapidez, eficiência, beleza e segurança, que valorizem o bem-estar e o investimento dos clientes. </span>
						<span class="visao" id='visao'>Ser uma empresa reconhecida pela exelência na área da construção  em obras e serviços, garantindo a integridade dos colaboradores e superando as expectativas de nossos clientes.</span>
						<span class="valores" id='valores'>Ética, Qualidade, Compromisso, Respeito e Transparência.</span>
					</div>
				</article>
				<article class="imagem">
					<?php echo odin_thumbnail(767, 589, true, true);?>
				</article>
			</section>
			<section class="informativo">
				<?php
					$experiencia =  get_post_meta( $post->ID,'experiencia', true );
					$experienciaQtd =  get_post_meta( $post->ID,'experiencia-qtd', true );
					$projetos =  get_post_meta( $post->ID,'projetos', true );
					$projetosQtd =  get_post_meta( $post->ID,'projetos-qtd', true );
					$licencas =  get_post_meta( $post->ID,'licencas', true );
					$licencasQtd =  get_post_meta( $post->ID,'licencas-qtd', true );
					$clientes =  get_post_meta( $post->ID,'clientes', true );
					$clientesQtd =  get_post_meta( $post->ID,'clientes-qtd', true );
				?>
				<article class="contagem">
					<span class="box1 alinhamento"><b><?php echo $experienciaQtd?></b> <?php echo $experiencia?></span>
					<span class="box2 alinhamento"><b><?php echo $projetosQtd?></b> <?php echo $projetos?></span>
					<span class="box2 alinhamento"><b><?php echo $licencasQtd?></b> <?php echo $licencas?></span>
					<span class="box3 alinhamento"><b><?php echo $clientesQtd?></b> <?php echo $clientes?></span>
				</article>
			</section>
			<section class="oque-fazemos">
				<?php
					$box1Title =  get_post_meta( $post->ID,'box1-title', true );
					$box1Desc =  get_post_meta( $post->ID,'box1-desc', true );
					$box2Title =  get_post_meta( $post->ID,'box2-title', true );
					$box2Desc =  get_post_meta( $post->ID,'box2-desc', true );
					$box3Title =  get_post_meta( $post->ID,'box3-title', true );
					$box3Desc =  get_post_meta( $post->ID,'box3-desc', true );
					$box4Title =  get_post_meta( $post->ID,'box4-title', true );
					$box4Desc =  get_post_meta( $post->ID,'box4-desc', true );
				?>
				<h3>O que nós fazemos</h3>
				<h4>Somos <b>líderes na indústria</b> de engenharia.<br>Amamos o que fazemos</h4>
				<article class="icones">
					<div class="box1 alinhamento">
						<?php 
							$galeria = get_post_meta( $post->ID,'box1-img', true );					
							$galeria = explode(",", $galeria);
							foreach ( $galeria as $foto ) { ?>					
								<img src="<?php echo odin_get_image_url( $foto, 74, 65, true,true);?>" alt="<?php echo get_the_title($foto); ?>">
							<?php }
						?>	
						<h4><?php echo $box1Title?></h4>
						<p><?php echo $box1Desc?></p>
					</div> 
					<div class="box2 alinhamento">
						<?php 
							$galeria = get_post_meta( $post->ID,'box2-img', true );					
							$galeria = explode(",", $galeria);
							foreach ( $galeria as $foto ) { ?>					
								<img src="<?php echo odin_get_image_url( $foto, 74, 65, true,true);?>" alt="<?php echo get_the_title($foto); ?>">
							<?php }
						?>	
						<h4><?php echo $box2Title?></h4>
						<p><?php echo $box2Desc?></p>
					</div>
					<div class="box3 alinhamento">
						<?php 
							$galeria = get_post_meta( $post->ID,'box3-img', true );					
							$galeria = explode(",", $galeria);
							foreach ( $galeria as $foto ) { ?>					
								<img src="<?php echo odin_get_image_url( $foto, 74, 65, true,true);?>" alt="<?php echo get_the_title($foto); ?>">
							<?php }
						?>	
						<h4><?php echo $box3Title?></h4>
						<p><?php echo $box3Desc?></p>
					</div>  
					<div class="box4 alinhamento">
						<?php 
							$galeria = get_post_meta( $post->ID,'box4-img', true );					
							$galeria = explode(",", $galeria);
							foreach ( $galeria as $foto ) { ?>					
								<img src="<?php echo odin_get_image_url( $foto, 74, 65, true,true);?>" alt="<?php echo get_the_title($foto); ?>">
							<?php }
						?>	
						<h4><?php echo $box4Title?></h4>
						<p><?php echo $box4Desc?></p>
					</div>  
				</article>
			</section>
		</div>
	</main>
<?php
get_footer();
