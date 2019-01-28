        
       $(document).ready(function () {
           email_onBlur();
       });

function chkEmailExist(sender, args) {
    var emailVal = $('#<%= tbxEmail.ClientID %>').val();
    var jsonParams = JSON.stringify({ email: emailVal });
    var valid = false;
    $.ajax({
        type: "POST",
        url: "SignUp.aspx/WMCheckEmail",
        async: false,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        data: jsonParams,
        success: function (result) {
            var data = JSON.parse(result.d);
            if (data.Data == "ok") {
                valid = true;
            }
        },
        error: function (xhr, status, error) {
            alert("Error: " + error);
        }
    });
    args.IsValid = valid;
}

function email_onBlur() {
    $('#<%= tbxEmail.ClientID %>').on('blur', function (ev) {
        // Get the specific validator element
        var validator = document.getElementById("<%=cvEmailExist.ClientID%>");

        // Validate chosen validator
        ValidatorValidate(validator);
    });
}
