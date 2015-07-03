function showDeleteAlertBox (callback, _this, e) {
  e.preventDefault();
  bootbox.dialog({
    message: "Are you sure?",
    title: "Alert!!",
    buttons: {
      success: {
      label: "Delete",
      className: "btn-danger",
      callback: function() {
      callback(_this)
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

  