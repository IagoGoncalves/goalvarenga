<?php
/**
 * The template for displaying Archive pages.
 *
 * Used to display archive-type pages if nothing more specific matches a query.
 * For example, puts together date-based pages if no date.php file exists.
 *
 * If you'd like to further customize these archive views, you may create a
 * new template file for each specific one. For example, Twenty Thirteen
 * already has tag.php for Tag archives, category.php for Category archives,
 * and author.php for Author archives.
 *
 * @link http://codex.wordpress.org/Template_Hierarchy
 *
 * @package Odin
 * @since 2.2.0
 */

get_header(); ?>
	<main id="servico" class="servico" tabindex="-1" role="main">
		<section class="navegacao">
			<h1>Serviços</h1>
			<article class="breadcrumb">
				<div class="container">
					<ul>
						<li><a href="<?php echo esc_url( home_url( 'home' ) ); ?>">Home </a></li>
						<li class="atual"><h1>> Serviços</h1></li>
					</ul>
				</div>
			</article>
		</section>
		<div class="container">
			<section class="cards">
				<?php 
					$args = array('post_type' => 'servico','posts_per_page' => -1);
					$var = new WP_Query($args);    
					if($var->have_posts()):
						while($var->have_posts()):
							$var->the_post(); ?>
								<div class="box">
									<div class="chave">
										<div class="imagem">
											<?php echo odin_thumbnail(480, 360, true,true);?>
										</div>
										<div class="conteudo">
											<h3><?php the_title(); ?></h3>
											<a href="<?php the_permalink()?>" class="botao-terciario">Saiba mais</a>
										</div>
									</div>
								</div>		                        
							<?php
						endwhile;
					endif;
				wp_reset_postdata(); ?>
			</section>
		</div>
	</main>
<?php
get_footer();
