
function alterar_detalhes() {
  
  // Campo de busca
  $("#search").attr({
    "placeholder": "Buscar",
    "aria-label": "Buscar"
  });
  
  // Título da "table of contents" e "on this page"
  $("nav > h2").text(
    function(){
      if (this.innerText == 'Table of contents')
        return 'Conteúdo'
      else if (this.innerText == 'On this page')
        return 'Nesta página'
      else
        return this.innerText
    }
  );
  
  // Footer
  $("footer p").html(
    function(){
      rv = this.innerHTML.replace('was written by', 'por');
      rv = rv.replace('. It was last built on', ' em');
      rv = rv.replace('This book was built by the', 'Desenvolvido com o pacote R');
      rv = rv.replace(' R package.', '.');
      return rv;
    }
  );
  
  // Book source
  $("#book-repo").html(
    function(){
      rv = this.innerHTML.replace('View book source', 'Ver código fonte do livro');
      return rv;
    }
  );
  
  // Page source
  $("#book-source").html(
    function(){
      rv = this.innerHTML.replace('View source', 'Ver código fonte');
      return rv;
    }
  )

  // Edit this page
  $("#book-edit").html(
    function(){
      rv = this.innerHTML.replace('Edit this page', 'Editar esta página');
      return rv;
    }
  )

}

// Execute when document is ready
$(
  alterar_detalhes
)
