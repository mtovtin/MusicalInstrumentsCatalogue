import Rails from "@rails/ujs"
 export function pagination_js(button) {
  var manufacturer_selector = document.getElementById("manufacturer")
   Rails.ajax({
     type: "GET",
     url: "/set_page",
     data: "page="+button.dataset.page,
     success: function(repsonse){
       console.log("succses response")
    //   window.location.href=  window.location.href
     },
     error: function(repsonse){
       console.log("error")
     }
   })
 }
 export function change_manufacturer(selector) {
  Rails.ajax({
    type: "GET",
    url: window.location.href,
    data: "manufacturer="+selector.value,
    success: function(response){
      console.log("succses response")

      //window.location.href=  window.location.href
    },
    error: function(response){
     console.log("error")
   }
 })
}