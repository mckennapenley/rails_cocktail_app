$(document).ready(function () {
  $("#search_by_name_btn").on("click", function (e) {
    $("#search_form").attr("action", "/cocktails/search_by_name");
    $("#search_by_name_btn")
      .removeClass("btn-outline-primary")
      .addClass("btn-primary");
    $("#search_by_ingredient_btn")
      .removeClass("btn-primary")
      .addClass("btn-outline-primary");
    $("#search_input").attr("name", "name");
  });

  $("#search_by_ingredient_btn").on("click", function (e) {
    $("#search_form").attr("action", "/cocktails/search_by_ingredient");
    $("#search_by_name_btn")
      .removeClass("btn-primary")
      .addClass("btn-outline-primary");
    $("#search_by_ingredient_btn")
      .removeClass("btn-outline-primary")
      .addClass("btn-primary");
    $("#search_input").attr("placeholder", "Whiskey");
    $("#search_input").attr("name", "ingredient");
  });
});
