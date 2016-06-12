/**
 * Created by action on 12.06.16.
 */

var s = '';

//$("#new-candidate").validate();
$("input.phone").mask("+38(099) 999-9999");
$.mask.definitions['ї']='[АаБбВвГгҐґДдЕеЄєЖжЗзИиІіЇїЙйКкЛлМмНнОоПпРрСсТтУуФфХхЦцЧчШшЩщЬьЮюЯя]';
$("input#drivingNumber").mask("їїї 999999");

$(document).ready(function() {

// validate signup form on keyup and submit
    var validator = $("#new-candidate").validate({
        rules: {
            pib: {
                required: true,
                minlength: 3
            },
            address: {
                required: true,
                minlength: 10
            },
            education: "required",
            educationProfile: "required",
            educationText: "required",
            phoneMobile: {
                required: true,
                minlength: 10
                //remote: "users.action"
            },
            phoneHome: {
                required: true,
                minlength: 10
            },
            drivingNumber: {
                required: false,
                minlength: 10
            }
        },
        messages: {
            pib: {
                required: "Введіть, будь ласка, ПІБ повністю",
                minlength: jQuery.validator.format("Не менше {0} символів")
            },
            address: {
                required: "Введіть, будь ласка, адресу проживання",
                minlength: jQuery.validator.format("Не може бути коротшою за {0} символів")
            },
            education: "Введіть, будь ласка, освіту",
            educationProfile: "Введіть, будь ласка, освіту",
            educationText: "Введіть, будь ласка, інформацію про освіту",
            phoneMobile: {
                required: "Введіть телефон в коректному форматі",
                minlength: jQuery.validator.format("Enter at least {0} characters")
                //remote: jQuery.validator.format("{0} is already in use")
            },
            phoneHome: {
                required: "Введіть телефон в коректному форматі",
                minlength: jQuery.validator.format("Enter at least {0} characters")
            },
            drivingNumber: {
                minlength: jQuery.validator.format("Введіть у коректному форматі")
            }
        },
        // the errorPlacement has to take the table layout into account
        errorPlacement: function(error, element) {
            if (element.is(":radio"))
                error.appendTo(element.parent().next().next());
            else if (element.is(":checkbox"))
                error.appendTo(element.next());
            else {
                error.appendTo(element.parent());


            }
        },
        // set this class to error-labels to indicate valid fields
        success: function(label) {
            // set &nbsp; as text for IE
            label.parent().removeClass('has-error');
        },
        highlight: function(element, errorClass) {
            $(element).parent().addClass('has-error');

        }
    });

    // propose username by combining first- and lastname
    $("#username").focus(function() {
        var firstname = $("#firstname").val();
        var lastname = $("#lastname").val();
        if (firstname && lastname && !this.value) {
            this.value = (firstname + "." + lastname).toLowerCase();
        }
    });

});

