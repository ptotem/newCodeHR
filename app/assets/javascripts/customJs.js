function showDeleteAlertBox (callback, _this, e) {
  console.log(callback)
  console.log(_this)
  console.log(e)
  e.preventDefault();
  bootbox.dialog({
    message: "Are you sure?",
    title: "Alert!!",
    buttons: {
      success: {
      label: "Delete",
      className: "btn-danger",
      callback: function() {
      callback
      }
    },
      danger: {
      label: "Cancel",
      className: "btn",
      callback: function() {
      }
    }
  }
}); 

} 

  