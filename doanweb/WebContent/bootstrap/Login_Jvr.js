$(function () {
    $("#username_error_message").hide();
    $("#password_error_message").hide();
    $("#Repeatpassword_error_message").hide();
    var error_username = false;
    var error_password = false;
    var error_Repeat_password = false;
    $("#user_name").focusout(function () {

        check_username();
    });

    $("#password").focusout(function () {

        check_password();
    });
    $("#Rpassword").focusout(function () {

        check_Repeat_password();
    });
    function check_username() {
        var username_length = $("#user_name").val().length;
        if (username_length < 6 || username_length > 14) {
            $("#username_error_message").html("Username should be between 6-16 characters");
            $("#username_error_message").show();
            error_username = true;
        }
        else {
            $("#username_error_message").hide();
        }
    }
});


function check_password() {
    var password_length = $("#password").val().length;
    if (password_length < 6 || password_length > 16) {
        $("#password_error_message").html("Password should be between 6-16 characters");
        $("#password_error_message").show();
        error_password = true;
    }
    else {
        $("#password_error_message").hide();
    }
}
function check_Repeat_password() {
    var repeat_password_length = $("#Repeatpassword").val().length;
    if (repeat_password_length < 6 || repeat_password_length > 16) {
        $("#Repeatpassword_error_message").html("Repeatpassword should be between 6-16 characters");
        $("#Repeatpassword_error_message").show();
        error_Repeat_password = true;
    }
    else {
        $("#Repeatpassword_error_message").hide();
    }
}
$(document).ready(function () {
    $("#submit").click(function () {
        error_username = false;
        error_password = false;

        var username = $("#user_name").val();
        var password = $("#password").val();
        if (username == password && username.length >= 6) {
            alert("Login Success");

        }
        else {
            alert("Login Fail");
        }

    });
});

