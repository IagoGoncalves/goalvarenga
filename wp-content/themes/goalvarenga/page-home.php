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
		<?php for ($i=0; $i < 20; $i++) { 
			echo '<h1>Iago, o ser mais bonito do universo!</h1>';
		}?>	
	</main>
<?php
get_footer();