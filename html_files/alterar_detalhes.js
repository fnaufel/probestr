
function alterar_detalhes() {

  // Make off-site links open in a new window/tab
  $("a").attr(
    "target", function() {
      // Load local links locally
      if (this.host == location.host) return "_self"
      // Load off-site links in a new window
      else return "_blank";
    }
  );

}

// Execute when document is ready
$(
  alterar_detalhes
)
