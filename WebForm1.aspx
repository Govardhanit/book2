<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="book2.WebForm1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
        label:hover {
            background-color: yellow;
            color: blue;
        }

        .jumbotron {
            background-image: url('https://img.freepik.com/free-vector/concept-banner-flight-search-realistic-style-with-laptop-aircraft-vector-illustration_548887-210.jpg?w=1380&t=st=1676443650~exp=1676444250~hmac=b5c72a2a56b0035e53af27ec3dd45eb81b883ffb91d8b278aa94f8770e072b73');
            background-size: auto 500px;
            background-repeat: no-repeat;
        }

        body {
            background-image: url("https://99designs-blog.imgix.net/blog/wp-content/uploads/2018/12/Gradient_builder_2.jpg?auto=format&q=60&fit=max&w=930");
            background-size: auto 1000px;
            background-repeat: no-repeat;
        }

        .card-header {
            background-image: url("https://99designs-blog.imgix.net/blog/wp-content/uploads/2018/12/Gradient_builder_2.jpg?auto=format&q=60&fit=max&w=930");
            background-size: auto 950px;
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>
    <%--  <div class="container">
    <div class="jumbotron mb-0">
      <h1 class="text-center"></h1>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
      <p class="text-center"></p>
    </div>
  </div>--%>

    <div class="accordion" id="accordionExample">
        <div class="card">
            <div class="card-header" id="headingOne">
                <h2 class="mb-0">
                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne"
                        aria-expanded="false" aria-controls="collapseOne">
                        <b>Flight Booking</b>
                    </button>
                </h2>
            </div>
            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                <div class="card-body">
                    <form id="form1">
                        <!--First name-->
                        <div class="form-group">
                            <label for="usr" title="Text color is blue">First Name:</label>
                            <input type="text" class="form-control" id="usr" placeholder="Enter First name" title="Please enter your first name" />
                        </div>
                        <!--Last name -->
                        <div class="form-group">
                            <label for="usr2" title="text color is blue">Last Name:</label>
                            <input type="text" class="form-control" id="usr2" placeholder="Enter Last name" title="enter your last name " />
                        </div>
                        <!--Gender Radio Button -->
                        <div class="form-group">
                            <label for="Gender">Gender:</label>
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" id="maleRadio" name="example1" value="customEx" />
                                <label class="custom-control-label" for="maleRadio">Male</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" id="femaleRadio" name="example1" value="customEx" />
                                <label class="custom-control-label" for="femaleRadio">Female</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" id="otherRadio" name="example1" value="customEx" />
                                <label class="custom-control-label" for="otherRadio">Others</label>
                            </div>
                        </div>
                        <!--Languages known Check box -->
                        <label for="languages">Languages Known:</label>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" id="english-checkbox" value="" />English
                            </label>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" id="french-checkbox" value="" />French
                            </label>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" id="spanish-checkbox" value="" />Spanish
                            </label>
                        </div>
                        <!--Country-->
                        <div class="form-group">
                            <label for="Country">Country:</label>
                            <select id="country-select" class="form-control">
                                <option>Select a Country</option>
                            </select>
                        </div>
                        <!--- State--->
                        <div class="form-group">
                            <label for="State">State:</label>
                            <select id="state-select" class="form-control" disabled="disabled">
                                <option>Select a state</option>
                            </select>
                        </div>
                        <!---DOB--->
                        <div class="form-group">
                            <label for="DOB">DOB:</label>
                            <input type="date" class="form-control" id="DOB" />
                        </div>
                        <!--Phone-->
                        <div class="form-group">
                            <label for="phone">Phone:</label>
                            <input type="tel" class="form-control" id="phone" placeholder="Add number" />
                        </div>
                        <!-- Default switch -->
<div class="custom-control custom-switch">
  <input type="checkbox" class="custom-control-input" id="customSwitches" />
  <label class="custom-control-label" for="customSwitches">Toggle this switch element</label>
</div>

                        <div class="custom-control custom-switch">
  <input type="checkbox" class="custom-control-input" id="customSwitch1" checked =""/>
  <label class="custom-control-label" for="customSwitch1">Toggle this switch element</label>
</div>
                        <!--Flight Start Date-->
                        <body onload="setMinStartDate()">
                            <div class="form-group">
                                <label for="startDate">Start Date:</label>
                                <input type="date" class="form-control" id="startDate" />
                            </div>
                        </body>
                        <!--Flight End Date-->

                        <div onload="setMaxEndDate()">
                            <div class="form-group">
                                <label for="endDate">End Date:</label>
                                <input type="date" class="form-control" id="endDate" />
                            </div>
                        </div>
                        <!--upload folder -->
                        <div class="form-group">
                            <label for="Upload">Upload a file</label>
                            <input type="file" class="form-control-file" id="Upload" />
                        </div>
                        <!--Email form -->
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" class="form-control" id="email" placeholder="Enter mail" name="email" />
                        </div>
                        <!--reset-->
                        <button type="reset" class="btn btn-dark" onclick="newFunction()" value="Reset">Reset</button>
                        <!--submit-->
                        <button id="submitButton" onclick="newFunction()" class="btn btn-primary"
                            value="submit">
                            Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header" id="headingTwo">
            <h2 class="mb-0">
                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="false" aria-controls="collapseTwo">
                    <b>Collected Data</b>
                </button>
            </h2>
        </div>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
            <div class="card-body" id="outputContainer">
                <table id="dataTable" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Date of Birth</th>
                            <th>Phone Number</th>
                            <th>Start Date</th>
                            <th>End Date</th>
                            <th>Country</th>
                            <th>State</th>
                            <th>Upload</th>
                            <th>Email</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!--Modal -->
<h2>Modal</h2>
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Click
  </button>
  <div class="modal" id="myModal">
    <div class="modal-dialog">
    <div class="modal-content">
    <div class="modal-header">
    <h4 class="modal-title">MODAL</h4>
    <button type="button" class="close" data-dismiss="modal">&times;</button>
    </div>
    <div class="modal-body">
    <div class="embed-responsive embed-responsive-16by9 hoverable">
    <iframe class="embed-responsive-item" src="https://youtu.be/FGd5Btu9qHI" style="height:101%" allowfullscreen=""></iframe>
    </div>
    </div>
    <div class="modal-footer">
    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
    </div>
    </div>
    </div>
    </div>
</body>
<script>
    function validateForm() {
        var firstName = $("#usr").val();
        var lastName = $("#usr2").val();
        var day = $("#DOB").val();
        var p = $("#phone").val();
        var startdate = $("#startDate").val();
        var enddate = $("#endDate").val();
        var country = $("#country-select").val();
        var state = $("#state-select").val();
        var upload = $("#Upload").val();
        var email = $("#email").val();
        var valid = true;
        if (!firstName) {
            valid = false;
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter your first name'
            });
        }
        if (!lastName) {
            valid = false;
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter your last name'
            });
        }
        if (!day) {
            valid = false;
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter your date of birth'
            });
        }
        if (!p) {
            valid = false;
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter your phone number'
            });
        }
        if (!startdate) {
            valid = false;
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter your start date'
            });
        }
        if (!enddate) {
            valid = false;
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter your end date'
            });
        }
        if (!country) {
            valid = false;
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please select your country'
            });
        }
        if (!state) {
            valid = false;
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please select your state'
            });
        }
        if (!upload) {
            valid = false;
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please upload your file'
            });
        }
        if (!email) {
            valid = false;
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter your email'
            });
        }
        return valid;
    }
    $("#submitButton").click(function (event) {
        event.preventDefault();
        if (validateForm()) {
            // Add data to the table
            var table = document.querySelector("#dataTable tbody");
            var row = table.insertRow(-1);
            var firstNameCell = row.insertCell(0);
            var lastNameCell = row.insertCell(1);
            var dobCell = row.insertCell(2);
            var phoneCell = row.insertCell(3);
            var startDateCell = row.insertCell(4);
            var endDateCell = row.insertCell(5);
            var countryCell = row.insertCell(6);
            var stateCell = row.insertCell(7);
            var uploadCell = row.insertCell(8);
            var emailCell = row.insertCell(9);
            firstNameCell.innerHTML = $("#usr").val();
            lastNameCell.innerHTML = $("#usr2").val();
            dobCell.innerHTML = $("#DOB").val();
            phoneCell.innerHTML = $("#phone").val();
            startDateCell.innerHTML = $("#startDate").val();
            endDateCell.innerHTML = $("#endDate").val();
            countryCell.innerHTML = $("#country-select").val();
            stateCell.innerHTML = $("#state-select").val();
            uploadCell.innerHTML = $("#Upload").val();
            emailCell.innerHTML = $("#email").val();
            var data = {
                firstName: $("#usr").val(),
                lastName: $("#usr2").val(),
                dob: $("#DOB").val(),
                phone: $("#phone").val(),
                startDate: $("#startDate").val(),
                endDate: $("#endDate").val(),
                country: $("#country-select").val(),
                state: $("#state-select").val(),
                upload: $("#Upload").val(),
                email: $("#email").val(),
            };
            var dataList = JSON.parse(localStorage.getItem("dataList")) || [];
            dataList.push(data);
            localStorage.setItem("dataList", JSON.stringify(dataList));

            // Clear input fields
            $('input').val('');
        }
    });   
</script>
<script>  // Reset script
    function newFunction()
    var element = document.getElementById(" form_id ");
    element.reset();
</script>
<script>  // Country and State script
    
    $(document).ready(function () {
        var countries = {
            USA: ['Alabama', 'Alaska', 'Arizona', 'Arkansas'],
            France: ['Alsace', 'Brittany', 'Midi', 'IDF'],
            Italy: ['Venice', 'Naples', 'Milan', 'Genoa']
        };
        Object.keys(countries).forEach(function (country) {
            $('#country-select').append($('<option>', {
                value: country,
                text: country
            }));
        });
        $('#country-select').change(function () {
            var selectedCountry = $(this).val();
            var states = countries[selectedCountry];
            $('#state-select').empty();
            $('#state-select').append($('<option>', {
                value: '',
                text: 'Select a state'
            }));
            if (states) {
                states.forEach(function (state) {
                    $('#state-select').append($('<option>', {
                        value: state,
                        text: state
                    }));
                });
                $('#state-select').prop('disabled', false);
            } else {
                $('#state-select').prop('disabled', true);
            }
        });
    });
</script>
<script>
    function setMinStartDate() {
        // Get today's date
        var today = new Date();
        var demo = today.toISOString().substr(0, 10);
        document.getElementById("startDate").min = demo;
    }
</script>
<script>
    // Get today's date
    var today = new Date();
    var endDateInput = document.getElementById("endDate");
    endDateInput.min = new Date(today.getFullYear(), today.getMonth(), today.getDate()).toISOString().substr(0, 10);
    endDateInput.onchange = function () {
        var selectedDate = new Date(endDateInput.value);
        if (selectedDate > new Date(today.getFullYear(), today.getMonth() + 3, today.getDate())) {
            endDateInput.value = "";
            Swal.fire(
                'Booking should not extend 3 months',
                'Retry again!',
                'warning'
            )
        }
    };
</script>

</html>
