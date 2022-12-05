$("#items a.add_fields")
  .data("association-insertion-method", "before")
  .data("association-insertion-node", "this");

$("items").on("cocoon:after-insert", function () {
  $(".item_fields a.add_fields")
    .data("association-insertion-position", "before")
    .data("associatio-insertion-node", "this");
  $(".item_fields").on("cocoon:after-insert", function () {
    $(this).find(".food_from_list").remove();
    $(this).find("a.add_fields").hide();
  });
});
