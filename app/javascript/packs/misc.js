document.addEventListener('turbolinks:load', function () {
    $(".cat-sel").change(function() {
        $(".cat-sel-text").val($(this).val());
      });
});