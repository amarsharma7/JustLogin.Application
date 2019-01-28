

        $(document).ready(function () {
            URL_onBlur();
            Passwords_onBlur();
            hide_BootStrap_PopOver_Outside();
        });

function hide_BootStrap_PopOver_Outside() {
    $('body').on('click', function (e) {
        $('[data-toggle="popover"]').each(function () {
            //the 'is' for buttons that trigger popups
            //the 'has' for icons within a button that triggers a popup
            if (!$(this).is(e.target) && $(this).has(e.target).length === 0 && $('.popover').has(e.target).length === 0) {
                $(this).popover('hide');
            }
        });
    });
}

function chk_URL_Exist(sender, args) {
    var urlVal = $('#<%= tbxCompanyURL.ClientID %>').val();
    var valid = false;
    if (urlVal != "") {
        var jsonParams = JSON.stringify({ companyId: urlVal });
        $.ajax({
            type: "POST",
            url: "SignUpURL.aspx/WMCheckSubDomain",
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
    }
    if (valid == true) { $('#fgComUrl').removeClass('has-error'); $('#fgComUrl').addClass('has-success'); }
    else { $('#fgComUrl').removeClass('has-success'); $('#fgComUrl').addClass('has-error'); }
    args.IsValid = valid;
}

function URL_onBlur() {
    $('#<%= tbxCompanyURL.ClientID %>').on('blur', function (ev) {
        // Get the specific validator element
        var validator = document.getElementById("<%=cvCompanyURL.ClientID%>");
        // Validate chosen validator
        ValidatorValidate(validator);
    });
}


function Passwords_onBlur() {
    $('#<%= tbxPassword.ClientID %>').on('blur', function (ev) {
        // Get the specific validator element
        var validator = document.getElementById("<%=cvPassword.ClientID%>");
        // Validate chosen validator
        ValidatorValidate(validator);
    });
    $('#<%= tbxConfirmedPassword.ClientID %>').on('blur', function (ev) {
        // Get the specific validator element
        var validator = document.getElementById("<%= cvConfirmedPassword.ClientID%>");
        // Validate chosen validator
        ValidatorValidate(validator);
    });
}

function chk_Password(sender, args) {
    var valid = true;
    var value = $('#<%= tbxPassword.ClientID %>').val();
    if (/\s/.test(value))
    {
        sender.innerHTML = "Invalid Input.";
        valid = false;
    }
    else if (value.length == 0) {
        sender.innerHTML = "Password is required.";
        valid = false;
    }
    args.IsValid = valid;

}


function chk_Confirmed_Password(sender, args) {
    var valid = true;
    var value = $('#<%= tbxConfirmedPassword.ClientID %>').val();
    if (/\s/.test(value)) {
        sender.innerHTML = "Invalid Input.";
        valid = false;
    }
    else if (value.length == 0) {
        sender.innerHTML = "Password is required.";
        valid = false;
    }
    args.IsValid = valid;

}
