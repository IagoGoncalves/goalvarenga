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
							<a href="javascript:void(0)" onclick="alternadorMissao()">Missão</a>
							<a href="javascript:void(0)" onclick="alternadorVisao()">Visão</a>
							<a href="javascript:void(0)" onclick="alternadorValores()">Valores</a>
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
		</div>
	</main>
<?php
get_footer();
