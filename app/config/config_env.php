<?php

//Path for uploads
$uploadpath = APPROOT.'/'.'uploads/';
define('UPLOAD_PATH', $uploadpath);

// Constant to secure "cron" jobs
define('JOBSEC', '$2y$10$VLdXLJRsEFF/lgJ2cQPEguWBLvoGSwpKPL.L3A3phIFyhDaDtr4bW');

define('JSVARS',serialize(array(
	'urlroot' => URLROOT
)));

if(!defined('SITENAME')){
	define('SITENAME','Hello, you should change me');
}

define('COMPANYNAME', 'ROGG');




/*define('EMAILS_FOR_ERROR_ALERT', [
    'bryan@getinnotized.com'
]);*/

// Default color, if the local constant is not set
if (!defined('MAINBACKGROUND')){
    define('MAINBACKGROUND','#E46F2C');
}


//SMTP Credentials
//define( 'SMTP_PREFIX', 'tls');
//define( 'SMTP_HOST', 'smtp.eu.mailgun.org');
//define( 'SMTP_PORT', '587');
//define( 'MAIL_USERNAME', 'postmaster@sandboxdcee2a0e10dd45cdafbf9c65cdd0a7f6.mailgun.org');
//define( 'MAIL_PASSWORD', '08ea441304af5d87efea8cb32e08d6b7');
//define( 'SENDER_EMAIL', 'info@getinnotized.de');

define ('SMTP_PREFIX', 'ssl');
define ('SMTP_HOST', 'smtp.zoho.com');
define ('SMTP_PORT', '465');
define ('MAIL_USERNAME', 'prince@getinnotized.com');
define ('MAIL_PASSWORD', '7654321#');
define( 'SENDER_EMAIL', 'prince@getinnotized.com');

define('ROUTE_REQUEST',true);
define ('ROUTE_REQUEST_PATH',[]);


//Define data types
define('BOOLEAN',  1);
define('INT',  2);
define('STRING', 3);



//Rest API Constants
define('REQUEST_METHOD_NOT_VALID',  101);
define('REQUEST_CONTENTTYPE_NOT_VALID',  102);
define('REQUEST_NOT_VALID',  103);
define('VALIDATE_PARAMETER_REQUIRED',  104);
define('VALIDATE_DATATYPE_REQUIRED',  105);
define('API_NAME_REQUIRED',  106);
define('API_PARAM_REQUIRED',  107);
define('API_DOES_NOT_EXIST',  108);
define('INCORRECT_FIELD_NAME',  109);
define('INVALID_USER_CREDENTIALS',  205);
define('SUCCESS_RESPONSE',  200);
define('AUTHORIZATION_HEADER_NOT_FOUND', 505);
define('INVALID_AUTH_TOKEN', 506);
define('JWT_PROCESSING_ERROR', 508);

define('SECRET_KEY', '123456');
//define('SMS_KEY', '7VrlW2P5LoU7K79adnYmvLB1Y');
define('SMS_KEY', 'c4b012085cf6c914e538');



// API CALL ERRORS

define('PRO_01', "Product ID cannt be found");
define('PRO_02', "Product ID cannot be null");
define('PRO_03', "Check page number and limit");
define('PRO_04', "Please check parameters");
define('PRO_05', "Product code does not exisr ");


define('REQUIRED', "Field is required");
define('MUST_BOOLEAN', "Data type nust be a boolean");
define('MUST_NUMERIC', "Data type nust be an integer");
define('MUST_STRING', "Data type nust be a string");


define('USR_01', "Email or Password is invalid.");
define('USR_04', "The email already exists.");
define('USR_05', "The email doesn't exists.");
define('USR_06', "User role is invalid.");
define('USR_07', "User ID is not valid");
define('USR_08', "User ID cannot be null");
define('USR_09', "Link for password recreation has expired");


define('CM_01', "Company ID cannot by null .");
define('CM_02', "Company ID cannot be found .");


define('CAT_01', "Category ID cannot be null.");
define('CAT_02', "Category ID cannot be found.");

define('VN_01', "Vendor email already exists.");
define('VN_02', "Vendor ID cannot be null.");
define('VN_03', "Vendor ID cannot be found.");



define('AUT_01', "Authorization code is empty.");
define('AUT_03', "API Key does not exist.");
define('AUT_02', "Access Unauthorized.");

define('TAX_01', "Don't exist tax with this ID");
define('TAX_02', "The ID is not a number");

define('ORD_01', "Don't exist order with this ID");
define('ORD_02', "The ID is not a number");

define('SHP_01', "Don't exist shipping region with this ID");
define('SHP_02', "The ID is not a number");



define('USER_KEY', 'prince@2019');


