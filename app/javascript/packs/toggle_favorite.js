document.addEventListener("turbolinks:load", function () {
  $(".favorite-btn").on("click", function (e) {
    $(e.target)
      .addClass("disabled")
      .prop("value", "Favorited added")
      .removeClass("btn-outline-primary")
      .addClass("btn-success");
  });

  $(".unfavorite-btn").on("click", function (e) {
    $(e.target)
      .addClass("disabled")
      .prop("value", "Favorite removed")
      .removeClass("btn-outline-primary")
      .addClass("btn-danger");
  });
});
