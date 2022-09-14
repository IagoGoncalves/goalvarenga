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
	<main id="projeto" class="projeto" tabindex="-1" role="main">
		<section class="navegacao">
			<h1>Projetos</h1>
			<article class="breadcrumb">
				<div class="container">
					<ul>
						<li><a href="<?php echo esc_url( home_url( 'home' ) ); ?>">Home </a></li>
						<li class="atual"><h1>> Projetos</h1></li>
					</ul>
				</div>
			</article>
		</section>
		<article class="container">
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
							<div class="box-projetos">
								<?php echo odin_thumbnail(470, 322, get_the_title(), true, true);?>
								<a class="botao-projetos" href="<?php the_permalink(); ?>"><?php the_title()?></a>
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
