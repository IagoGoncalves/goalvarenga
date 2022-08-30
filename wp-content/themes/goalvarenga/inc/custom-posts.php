<?php
function type_post_porsonalizados() {
   //Dados
      $dados = new Odin_Post_Type(
         'Dado',
         'dados'
      );
      $dados->set_labels(
         array( 'menu_name' => __( 'Dados', 'odin' ))
      );
      $dados->set_arguments(
         array(
            'public' => true,
            'supports' => array('title','author','editor'),
            'has_archive' => true,
            'menu_icon' => 'dashicons-id-alt',
            'show_in_nav_menus'   => true,
            'show_in_rest' => true
         )
      );
   
   //Banner
      $banner = new Odin_Post_Type(
         'Banner',
         'banner'
      );
      $banner->set_labels(
         array( 'menu_name' => __( 'Banner', 'odin' ))
      );
      $banner->set_arguments(
         array(
            'public' => true,
            'supports' => array('title','thumbnail','author','revisions' , 'editor'),
            'has_archive' => true,
            'menu_icon' => 'dashicons-format-gallery',
            'show_in_rest' => true
         )
      );
   //Resíduos Domésticos Especiais
      $medico = new Odin_Post_Type(
         'Residuos Domesticos Especiai',
         'residuos'
      );
      $medico->set_labels(
         array( 'menu_name' => __( 'Resíduos', 'odin' ))
      );
      $medico->set_arguments(
         array(
            'public' => true,
            'supports' => array('title','thumbnail','author','revisions' , 'editor'),
            'has_archive' => true,
            'menu_icon' => 'dashicons-vault',
            'show_in_rest' => true
         )
      );
   //Evite acidentes
      $medico = new Odin_Post_Type(
         'Evite Acidente',
         'acidentes'
      );
      $medico->set_labels(
         array( 'menu_name' => __( 'Evite Acidentes', 'odin' ))
      );
      $medico->set_arguments(
         array(
            'public' => true,
            'supports' => array('title', 'editor'),
            'has_archive' => true,
            'menu_icon' => 'dashicons-shield',
            'show_in_rest' => true
         )
      );
   //Ajudar Meio Ambiente
      $medico = new Odin_Post_Type(
         'Eu posso ajudar o Meio Ambiente',
         'ajudar'
      );
      $medico->set_labels(
         array( 'menu_name' => __( 'Ajudar Meio Ambiente', 'odin' ))
      );
      $medico->set_arguments(
         array(
            'public' => true,
            'supports' => array('title', 'editor'),
            'has_archive' => true,
            'menu_icon' => 'dashicons-palmtree',
            'show_in_rest' => true
         )
      );
   //Locais com caçambas
      $cacamba = new Odin_Post_Type(
         'Caçamba',
         'cacamba'
      );
      $cacamba->set_labels(
         array( 'menu_name' => __( 'Locais com caçamba', 'odin' ))
      );
      $cacamba->set_arguments(
         array(
            'public' => true,
            'supports' => array('title', 'editor', 'thumbnail'),
            'has_archive' => true,
            'menu_icon' => 'dashicons-trash',
            'show_in_rest' => true
         )
      );
   //Noticias
      $noticias = new Odin_Post_Type(
         'Noticia',
         'noticias'
      );
      $noticias->set_labels(
         array( 'menu_name' => __( 'Noticias', 'odin' ))
      );
      $noticias->set_arguments(
         array(
            'public' => true,
            'supports' => array('title','editor','thumbnail','author','revisions'),
            'has_archive' => true,
            'menu_icon' => get_template_directory_uri() . '/assets/images/logo-admin/televisions.png',
            'menu_icon' => 'dashicons-list-view',
            'show_in_nav_menus'   => true,
            'show_in_rest' => true
         )
      );
      $categoria = new Odin_Taxonomy(
         'Categoria',
         'categoria',
         'noticias'
      );
      $categoria ->set_labels(
         array(
            'menu_name' => __( 'Categorias', 'odin' )
         )
      );
      $categoria ->set_arguments(
         array(
            'hierarchical' => true,
            'show_in_rest' => true
         )
      );
}

function change_post_label() {
   global $menu;
   global $submenu;
   $menu[5][0] = 'Post';
   $submenu['edit.php'][5][0] = 'Post';
   $submenu['edit.php'][10][0] = 'Adicionar Post';
   $submenu['edit.php'][16][0] = 'Tags';
   echo '';
}
function change_post_object() {
   global $wp_post_types;
   $labels = &$wp_post_types['post']->labels;
   $labels->name = 'Post';
   $labels->singular_name = 'Post';
   $labels->add_new = 'Adicionar Post';
   $labels->add_new_item = 'Adicionar Post';
   $labels->edit_item = 'Editar Post';
   $labels->new_item = 'Post';
   $labels->view_item = 'Ver Post';
   $labels->search_items = 'Buscar Post';
   $labels->not_found = 'Nenhuma Post encontrado';
   $labels->not_found_in_trash = 'Nenhuma Post encontrado no Lixo';
   $labels->all_items = 'Todas Post';
   $labels->menu_name = 'Post';
   $labels->name_admin_bar = 'Post';
   $wp_post_types['post']->menu_position = '25';
   
}


add_action('init', 'type_post_porsonalizados', 1);
add_action( 'admin_menu', 'change_post_label' );
add_action( 'init', 'change_post_object' );
