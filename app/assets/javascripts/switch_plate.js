$(document).on('turbolinks:load', function () {
  $('#side').change(function () {
    if (this.checked) {
      Rails.ajax({
        url: '/light/on',
        type: 'get',
        data: '',
        success: function (data) {
          console.log(data.message);
        },
        error: function (data) {
          // Returns switch to the previous state
          this.prop('checked', false);
          console.log('Error turning on!' + data);
        }
      });
    } else {
      Rails.ajax({
        url: '/light/off',
        type: 'get',
        data: '',
        success: function (data) {
          console.log(data.message);
        },
        error: function (data) {
          // Returns switch to the previous state
          this.prop('checked', true);
          console.log('Error turning off!' + data);
        }
      })
    }
  });
});
