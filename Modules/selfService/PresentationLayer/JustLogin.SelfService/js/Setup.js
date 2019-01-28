
       $(document).ready(function () {
           $('.main-splash').css('display', 'none');
           chk_URL_Exist3();

           var redirectUrl = $('#<%= hidCompanyFullURL.ClientID %>').val() + "/selfService/login.aspx";
           $("#siteLink1").attr("href", redirectUrl);
       });

function chk_URL_Exist3() {
    var urlVal = $('#<%= hidCompanyFullURL.ClientID %>').val();
    var jsonParams = JSON.stringify({ companyFullUrl: urlVal });
    var valid = false;

    console.log('checking');

    $.support.cors = true;
            
    $.ajax({
        type: "GET",
        url: urlVal + "/selfService/Check.aspx?t=" + new Date().toString(),
        crossDomain: true,
        async: false,
        success: function (result) {
            if (result.Data == "ok") {
                valid = true;
            }
            console.log(result);
        },
        error: function (xhr, status, error) {
            console.log("Error: " + error);
        }
    });

    if (valid == true) {
        console.log('existed. red...');
        var redirectUrl = $('#<%= hidCompanyFullURL.ClientID %>').val() + "/selfService/login.aspx";
        window.location.href = redirectUrl;
    }
    else {
        console.log('no, check again');
        setTimeout(chk_URL_Exist3, 10000);
    }
}
