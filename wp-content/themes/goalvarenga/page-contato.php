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
		<?php for ($i=0; $i < 20; $i++) { 
			echo '<h1>Contato</h1>';
		}?>	
	</main>
<?php
get_footer();
