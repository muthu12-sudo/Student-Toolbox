function openModal() {
  var modal = document.getElementById("modal");
  modal.style.display = "block";
}

function closeModal() {
  var modal = document.getElementById("modal");
  modal.style.display = "none";
}
$(document).ready(function(){
   $("button").click(function(){
      $("#modal").show();
   });
   $(".close").click(function(){
      $("#modal").hide();
   });
});


