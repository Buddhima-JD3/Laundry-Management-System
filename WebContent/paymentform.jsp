<head>
<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/punycode/1.4.1/punycode.min.js"></script>
<script src="https://cdn.jotfor.ms/static/prototype.forms.js"
	type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.25491"
	type="text/javascript"></script>
<script type="text/javascript">
	JotForm.init(function(){
      productID = {"0":"input_3_1001"};
      paymentType = "product";
      JotForm.setCurrencyFormat('USD',true, 'point');
      JotForm.totalCounter({"input_3_1001":{"price":"100"}});
      $$('.form-product-custom_quantity').each(function(el, i){el.observe('blur', function(){isNaN(this.value) || this.value < 1 ? this.value = '0' : this.value = parseInt(this.value)})});
      $$('.form-product-custom_quantity').each(function(el, i){el.observe('focus', function(){this.value == 0 ? this.value = '' : this.value})});
      JotForm.handleProductLightbox();
      setTimeout(function() {
          $('input_5').hint('ex: myname@example.com');
       }, 20);
	JotForm.newDefaultTheme = false;
	JotForm.extendsNewTheme = false;
	JotForm.newPaymentUIForNewCreatedForms = false;
      JotForm.alterTexts({"confirmClearForm":"Are you sure you want to clear the form","lessThan":"Your score should be less than"});
      JotForm.alterTexts({"couponApply":"Apply","couponBlank":"Please enter a coupon.","couponChange":"","couponEnter":"Enter coupon","couponExpired":"Coupon is expired. Please try another one.","couponInvalid":"Coupon is invalid.","couponValid":"Coupon is valid.","shippingShipping":"Shipping","taxTax":"Tax","totalSubtotal":"Subtotal","totalTotal":"Total"}, true);
    /*INIT-END*/
	});

   JotForm.prepareCalculationsOnTheFly([null,{"name":"theLaundry","qid":"1","text":"The Laundry Mart Payment Form","type":"control_head"},null,{"description":"","name":"myProducts","qid":"3","text":"My Products","type":"control_paypalpro"},{"description":"","name":"buyerName","qid":"4","text":"Buyer Name","type":"control_fullname"},{"description":"","name":"buyerEmail","qid":"5","subLabel":"example@example.com","text":"Buyer E-mail","type":"control_email"},null,null,{"name":"submit","qid":"8","text":"Submit","type":"control_button"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,{"name":"theLaundry","qid":"1","text":"The Laundry Mart Payment Form","type":"control_head"},null,{"description":"","name":"myProducts","qid":"3","text":"My Products","type":"control_paypalpro"},{"description":"","name":"buyerName","qid":"4","text":"Buyer Name","type":"control_fullname"},{"description":"","name":"buyerEmail","qid":"5","subLabel":"example@example.com","text":"Buyer E-mail","type":"control_email"},null,null,{"name":"submit","qid":"8","text":"Submit","type":"control_button"}]);}, 20); 
</script>
<link href="https://cdn.jotfor.ms/static/formCss.css?3.3.25491"
	rel="stylesheet" type="text/css" />
<link type="text/css" media="print" rel="stylesheet"
	href="https://cdn.jotfor.ms/css/printForm.css?3.3.25491" />
<link type="text/css" rel="stylesheet"
	href="https://cdn.jotfor.ms/css/styles/nova.css?3.3.25491" />
<link type="text/css" rel="stylesheet"
	href="https://cdn.jotfor.ms/themes/CSS/548aa20a700cc46d638b4567.css?themeRevisionID=606c5a2a6411c45dbc6f6503" />
<link type="text/css" rel="stylesheet"
	href="https://cdn.jotfor.ms/css/styles/payment/payment_feature.css?3.3.25491" />
<style type="text/css">
.form-label-left {
	width: 150px;
}

.form-line {
	padding-top: 12px;
	padding-bottom: 12px;
}

.form-label-right {
	width: 150px;
}

.form-all {
	width: 690px;
	color: #3e4e1a !important;
	font-family: 'Merriweather';
	font-size: 14px;
	margin: 0 auto;
}

.form-radio-item label, .form-checkbox-item label, .form-grading-label,
	.form-header {
	color: false;
}
</style>

<style type="text/css" id="form-designer-style">
/* Injected CSS Code */
/*PREFERENCES STYLE*/
.form-all {
	font-family: Merriweather, sans-serif;
}

.form-all .qq-upload-button, .form-all .form-submit-button, .form-all .form-submit-reset,
	.form-all .form-submit-print {
	font-family: Merriweather, sans-serif;
}

.form-all .form-pagebreak-back-container, .form-all .form-pagebreak-next-container
	{
	font-family: Merriweather, sans-serif;
}

.form-header-group {
	font-family: Merriweather, sans-serif;
}

.form-label {
	font-family: Merriweather, sans-serif;
}

.form-label.form-label-auto {
	display: inline-block;
	float: left;
	text-align: right;
}

.form-line {
	margin-top: 12px 36px 12px 36px px;
	margin-bottom: 12px 36px 12px 36px px;
}

.form-all {
	max-width: 690px;
	width: 100%;
}

.form-label.form-label-left, .form-label.form-label-right, .form-label.form-label-left.form-label-auto,
	.form-label.form-label-right.form-label-auto {
	width: 150px;
}

.form-all {
	font-size: 14px
}

.form-all .qq-upload-button, .form-all .qq-upload-button, .form-all .form-submit-button,
	.form-all .form-submit-reset, .form-all .form-submit-print {
	font-size: 14px
}

.form-all .form-pagebreak-back-container, .form-all .form-pagebreak-next-container
	{
	font-size: 14px
}

.supernova .form-all, .form-all {
	background-color: #d5eef3;
}

.form-all {
	color: #3e4e1a;
}

.form-header-group .form-header {
	color: #3e4e1a;
}

.form-header-group .form-subHeader {
	color: #3e4e1a;
}

.form-label-top, .form-label-left, .form-label-right, .form-html,
	.form-checkbox-item label, .form-radio-item label {
	color: #3e4e1a;
}

.form-sub-label {
	color: #586834;
}

.supernova {
	background-color: undefined;
}

.supernova body {
	background: transparent;
}

.form-textbox, .form-textarea, .form-dropdown, .form-radio-other-input,
	.form-checkbox-other-input, .form-captcha input, .form-spinner input {
	background-color: undefined;
}

.supernova {
	height: 100%;
	background-repeat: repeat;
	background-attachment: scroll;
	background-position: center top;
}

.supernova {
	background-image:
		url("https://www.jotform.com/uploads/ceren/form_files/deep_ocean.635.jpg");
}

#stage {
	background-image:
		url("https://www.jotform.com/uploads/ceren/form_files/deep_ocean.635.jpg");
}

.form-all {
	background-image: none;
}

.ie-8 .form-all:before {
	display: none;
}

.ie-8 {
	margin-top: auto;
	margin-top: initial;
}

/*PREFERENCES STYLE*/ /*__INSPECT_SEPERATOR__*/
/* Injected CSS Code */
</style>
<title>Payment Form</title>
</head>

<form class="jotform-form" action="PaymentServlet" method="post"
	name="form_211403471529450" id="211403471529450" accept-charset="utf-8"
	autocomplete="on">
	<input type="hidden" name="formID" value="211403471529450" /> <input
		type="hidden" id="JWTContainer" value="" /> <input type="hidden"
		id="cardinalOrderNumber" value="" />
	<div role="main" class="form-all">
		<ul class="form-section page-section">
			<li id="cid_1" class="form-input-wide" data-type="control_head">
				<div class="form-header-group  header-default">
					<div class="header-text httal htvam">
						<h2 id="header_1" class="form-header" data-component="header">
							The Laundry Mart Payment Form</h2>
						<div id="subHeader_1" class="form-subHeader">Make your
							payment to finalize your booking</div>
					</div>
				</div>
			</li>
			<li class="form-line jf-required" data-type="control_paypalpro"
				id="id_3" data-payment="true"><label
				class="form-label form-label-right" id="label_3" for="input_3">
					My Products <span class="form-required"> * </span>
			</label>
				<div id="cid_3" class="form-input jf-required">
					<div data-wrapper-react="true" id="payment-wrapper-songbird"
						data-currency="USD" data-paymentType="product"
						data-sandbox="Disabled">
						<div data-wrapper-react="true" class="product-container-wrapper">
							<div class="filter-container"></div>
							<input type="hidden" name="simple_fpc"
								data-payment_type="paypalpro" data-component="payment1"
								value="3" /> <input type="hidden" name="payment_total_checksum"
								id="payment_total_checksum" data-component="payment2" />
							<div id="image-overlay" class="overlay-content"
								style="display: none">
								<img id="current-image" /> <span class="lb-prev-button">
									prev </span> <span class="lb-next-button"> next </span> <span
									class="lb-close-button"> ( X ) </span> <span
									class="image-overlay-product-container">
									<ul class="form-overlay-item" hasicon="false" hasimages="false"
										iconvalue="">
									</ul>
								</span>
							</div>
							<% int v1 = (int)request.getAttribute("value1"); 
							   String v2 = (String)request.getAttribute("value2"); 
							   double v3 = (Double)request.getAttribute("value3"); %>
							<div data-wrapper-react="true">
								<span class="form-product-item hover-product-item "
									categories="non-categorized" pid="1001">
									<div data-wrapper-react="true" class="form-product-item-detail">
										<input readonly type="checkbox"
											class="form-checkbox validate[required]  form-product-input"
											id="input_3_1001" name="q3_myProducts[][id]" value="1001"
											checked="" /> <label for="input_3_1001"
											class="form-product-container"> <span
											data-wrapper-react="true"> <span
												class="form-product-name" id="product-name-input_3_1001">
													<%=v2 %>
											</span> <input readonly type="text" id="input_3_cc_firstName" name="id"
												class="form-textbox cc_firstName" size="20" value="<%=v1 %>"
												data-component="cc_firstName" /> <span
												class="form-product-details"> <span
													data-wrapper-react="true"> RS <span> <%=v3 %>0
													</span>
												</span>
											</span>
										</span>
											<div class="form-product-description"
												id="product-name-description-input_3_1001"></div>
										</label>
									</div>
								</span> <br />
								<br /> <input type="hidden" id="input_3_coupon" name="coupon" />
								<span class="form-payment-total"> <b> <span
										id="total-text"> Total </span> <span
										class="form-payment-price"> <span
											data-wrapper-react="true"> Rs <input readonly type="text"
												id="input_3_cc_firstName" name="totprice"
												class="form-textbox cc_firstName" size="20"
												value="<%=v3 %>0" data-component="cc_firstName" />
										</span>
									</span></span> </b> </span>
							</div>
							<hr />
						</div>
						<table class="form-address-table payment-form-table"
							style="border: 0" cellPadding="4" cellSpacing="0">
							<tbody>
								<tr>
									<th colSpan="2" style="text-align: left">Payment Method</th>
								</tr>
								<tr>
									<td valign="top" style="min-width: 50px; vertical-align: top"
										rowspan="2"><input type="radio" class="paymentTypeRadios"
										id="input_3_paymentType_credit"
										name="q3_myProducts[paymentType]" value="credit" /> <label
										for="input_3_paymentType_credit">
											<div style="display: inline-block; padding-right: 4px">
												<img src="https://cdn.jotfor.ms/images/blank.gif"
													class="paypalpro_img paypalpro_visa"
													style="display: inline-block; vertical-align: middle"
													alt="visa" /> <img
													src="https://cdn.jotfor.ms/images/blank.gif"
													class="paypalpro_img paypalpro_mc"
													style="display: inline-block; vertical-align: middle"
													alt="mc" /> <img
													src="https://cdn.jotfor.ms/images/blank.gif"
													class="paypalpro_img paypalpro_amex"
													style="display: inline-block; vertical-align: middle"
													alt="amex" /> <img
													src="https://cdn.jotfor.ms/images/blank.gif"
													class="paypalpro_img paypalpro_dc"
													style="display: inline-block; vertical-align: middle"
													alt="dc" />
											</div>
									</label></td>
									<td align="left" valign="top"
										style="padding-bottom: 2px !important; text-align: left; vertical-align: top">
										<input type="radio" class="paymentTypeRadios"
										id="input_3_paymentType_express"
										name="q3_myProducts[paymentType]" checked="" value="express" />
										<label for="input_3_paymentType_express"> <img
											style="vertical-align: middle"
											src="https://www.paypalobjects.com/webstatic/en_US/i/buttons/pp-acceptance-small.png"
											alt="PayPal" />
									</label>
									</td>
								</tr>
							</tbody>
						</table>
						<table style="display: none; border: 0" id="creditCardTable"
							class="form-address-table payment-form-table" cellPadding="0"
							cellSpacing="0">
							<tbody>
								<tr>
									<th colSpan="2"
										style="text-align: left; margin-top: 20px; display: table"
										id="ccTitle3">Credit Card</th>
								</tr>
								<tr>
									<td width="50%"><span class="form-sub-label-container"
										style="vertical-align: top"> <input type="text"
											id="input_3_cc_firstName" name="q3_myProducts[cc_firstName]"
											class="form-textbox validate[required] cc_firstName"
											size="20" value="" data-component="cc_firstName" required/> <label
											class="form-sub-label" for="input_3_cc_firstName"
											id="sublabel_cc_firstName"
											style="min-height: 13px; margin: 0 0 3px 0"
											aria-hidden="false"> First Name </label>
									</span></td>
									<td width="50%"><span class="form-sub-label-container"
										style="vertical-align: top"> <input type="text"
											id="input_3_cc_lastName" name="q3_myProducts[cc_lastName]"
											class="form-textbox validate[required] cc_lastName" size="20"
											value="" data-component="cc_lastName" required/> <label
											class="form-sub-label" for="input_3_cc_lastName"
											id="sublabel_cc_lastName"
											style="min-height: 13px; margin: 0 0 3px 0"
											aria-hidden="false"> Last Name </label>
									</span></td>
								</tr>
								<tr class="if_cc_field">
									<td width="50%"><span class="form-sub-label-container"
										style="vertical-align: top"> <input type="number"
											id="input_3_cc_number" name="q3_myProducts[cc_number]"
											class="form-textbox validate[required] cc_number"
											autoComplete="off" size="20" value=""
											data-component="cc_number" required/> <label class="form-sub-label"
											for="input_3_cc_number" id="sublabel_cc_number"
											style="min-height: 13px; margin: 0 0 3px 0"
											aria-hidden="false"> Credit Card Number </label>
									</span></td>
									<td width="50%"><span class="form-sub-label-container"
										style="vertical-align: top"> <input type="number"
											id="input_3_cc_ccv" name="q3_myProducts[cc_ccv]"
											class="form-textbox validate[required] cc_ccv"
											autoComplete="off" style="width: 52px" value=""
											data-component="cc_ccv" required/> <label class="form-sub-label"
											for="input_3_cc_ccv" id="sublabel_cc_ccv"
											style="min-height: 13px; margin: 0 0 3px 0"
											aria-hidden="false"> Security Code </label>
									</span></td>
								</tr>
								<tr>
									<td width="50%"><span class="form-sub-label-container"
										style="vertical-align: top"> <select
											class="form-dropdown validate[required] cc_exp_month"
											name="q3_myProducts[cc_exp_month]" id="input_3_cc_exp_month"
											data-component="cc_exp_month">
												<option></option>
												<option value="January">January</option>
												<option value="February">February</option>
												<option value="March">March</option>
												<option value="April">April</option>
												<option value="May">May</option>
												<option value="June">June</option>
												<option value="July">July</option>
												<option value="August">August</option>
												<option value="September">September</option>
												<option value="October">October</option>
												<option value="November">November</option>
												<option value="December">December</option>
										</select> <label class="form-sub-label" for="input_3_cc_exp_month"
											id="sublabel_cc_exp_month"
											style="min-height: 13px; margin: 0 0 3px 0"
											aria-hidden="false"> Expiration Month </label>
									</span></td>
									<td width="50%"><span class="form-sub-label-container"
										style="vertical-align: top"> <select
											class="form-dropdown validate[required] cc_exp_year"
											name="q3_myProducts[cc_exp_year]" id="input_3_cc_exp_year"
											data-component="cc_exp_year">
												<option></option>
												<option value="2021">2021</option>
												<option value="2022">2022</option>
												<option value="2023">2023</option>
												<option value="2024">2024</option>
												<option value="2025">2025</option>
												<option value="2026">2026</option>
												<option value="2027">2027</option>
												<option value="2028">2028</option>
												<option value="2029">2029</option>
												<option value="2030">2030</option>
										</select> <label class="form-sub-label" for="input_3_cc_exp_year"
											id="sublabel_cc_exp_year"
											style="min-height: 13px; margin: 0 0 3px 0"
											aria-hidden="false"> Expiration Year </label>
									</span></td>
							</tbody>
						</table>
					</div>
				</div></li>
			<li class="form-line jf-required" data-type="control_fullname"
				id="id_4"><label
				class="form-label form-label-right form-label-auto" id="label_4"
				for="first_4"> Buyer Name <span class="form-required">
						* </span>
			</label>
				<div id="cid_4" class="form-input jf-required">
					<div data-wrapper-react="true">
						<span class="form-sub-label-container" style="vertical-align: top"
							data-input-type="first"> <input type="text" id="first_4"
							name="q4_buyerName[first]"
							class="form-textbox validate[required]" size="10" 
							aria-labelledby="label_4 sublabel_4_first"
							required /> <label class="form-sub-label" for="first_4"
							id="sublabel_4_first" style="min-height: 13px"
							aria-hidden="false"> First Name </label>
						</span> <span class="form-sub-label-container"
							style="vertical-align: top" data-input-type="last"> <input
							type="text" id="last_4" name="q4_buyerName[last]"
							class="form-textbox validate[required]" size="15" 
							aria-labelledby="label_4 sublabel_4_last"
							required /> <label class="form-sub-label" for="last_4"
							id="sublabel_4_last" style="min-height: 13px" aria-hidden="false">
								Last Name </label>
						</span>
					</div>
				</div></li>
			<li class="form-line jf-required" data-type="control_email" id="id_5">
				<label class="form-label form-label-right form-label-auto"
				id="label_5" for="input_5"> Buyer E-mail <span
					class="form-required"> * </span>
			</label>
				<div id="cid_5" class="form-input jf-required">
					<span class="form-sub-label-container" style="vertical-align: top">
						<input type="email" id="input_5" name="q5_buyerEmail"
						class="form-textbox validate[required]" size="30" 
						placeholder="ex: myname@example.com" 
						aria-labelledby="label_5 sublabel_input_5" required /> <label
						class="form-sub-label" for="input_5" id="sublabel_input_5"
						style="min-height: 13px" aria-hidden="false">
							example@example.com </label>
					</span>
				</div>
			</li>
			<li class="form-line" data-type="control_button" id="id_8">
				<div id="cid_8" class="form-input-wide">
					<div style="margin-left: 156px" data-align="auto"
						class="form-buttons-wrapper form-buttons-auto   jsTest-button-wrapperField">
						<button id="input_8" type="submit"
							class="form-submit-button submit-button jf-form-buttons jsTest-submitField"
							data-component="button" data-content="">Submit</button>
					</div>
				</div>
			</li>
			<li style="display: none">Should be Empty: <input type="text"
				name="website" value="" />
			</li>
		</ul>
	</div>
	<script>
  JotForm.showJotFormPowered = "new_footer";
  </script>
	<script>
  JotForm.poweredByText = "Powered by JotForm";
  </script>
	<input type="hidden" class="simple_spc" id="simple_spc"
		name="simple_spc" value="211403471529450" />
	<script type="text/javascript">
  var all_spc = document.querySelectorAll("form[id='211403471529450'] .si" + "mple" + "_spc");
for (var i = 0; i < all_spc.length; i++)
{
  all_spc[i].value = "211403471529450-211403471529450";
}
  </script>
</form>