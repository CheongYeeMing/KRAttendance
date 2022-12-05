$(document).ready(function () {
  $("#" + document.currentScript.getAttribute("table")).DataTable({
    columnDefs: [
      {
        orderable: false,
        className: "select-checkbox",
        targets: 0,
      },
    ],
    select: {
      style: "os",
      selector: "td:first-child",
    },
    order: [[1, "asc"]],
  });
  $(".clickable-tr").on("click", function (e) {
    let target = $(e.target);
    if (target.is("button") || target.hasClass("fa")) {
      return;
    }
    var myLink = $(this).attr("href");
    window.location.replace(myLink);
  });
});
