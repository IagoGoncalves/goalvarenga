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
	<main id="projetos" class="projetos" tabindex="-1" role="main">
		<article class="container">
			<h1>Projetos</h1>

			<ul class="filter-projetos controls">
				<li data-filter="all" class="btn-filter ativo">Todos</li>
				<?php
					$terms = get_terms( 'categoria-projetos', array('orderby'    => 'parent') );
					foreach ( $terms as $term ) echo '<li class="btn-filter" data-filter=.' . $term->slug . '>' . $term->name . '</li>';
				?>
			</ul>
			<ul class="lista-projeto">
				<?php if ( have_posts() ):
					while ( have_posts() ) : the_post();
					$terms = get_the_terms($post->ID, 'categoria-projetos'); ?>

					<li class="item-list-projeto mix <?php echo $terms[0]->slug ?>">
						<a class="link-projeto-detalhes" href="<?php the_permalink(); ?>">
							<?php echo odin_thumbnail( 750, 450, get_the_title(), true, 'imagen-destaque-projeto' ); ?>
							<!--<img class="imagen-destaque-projeto" src="<?php echo the_post_thumbnail_url(); ?>">-->

							<div class="info-projeto">
								<div class="descr-projeto">
									<h2><?php the_title(); ?></h2>
									<p class="data-projeto"><?php echo get_post_meta( $post->ID,'ano-projeto', true ); ?></p>
								</div>
								<img src="<?php echo get_template_directory_uri(); ?>/assets/images/icon-sobre-projeto.png">
							</div>
						</a>
					</li>

					<?php endwhile;
					odin_paging_nav();
				endif; ?>
			</ul>
		</article>
	</main>
	<script>
		jQuery(document).ready(function($) {
			var containerEl = document.querySelector('.lista-projeto');
			var mixer = mixitup(containerEl);

			$('.btn-filter').on( 'click', function() {
				$(".btn-filter").removeClass('ativo');
				$(this).addClass('ativo');
			});
		});
	</script>
<?php
get_footer();
