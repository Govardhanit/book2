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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
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
        button1 {
            display: block;
            margin: 0 auto;
            text-align: center;
        }

    </style>
</head>
<body>
      <div class="container">
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
    <div class="accordion" id="accordionExample">
        <div class="card">
            <div class="card-header" id="headingOne">
                <h2 class="mb-0">
                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne">
                       <%-- aria-expanded="false" aria-controls="collapseOne">--%>
                        <b>Flight Booking</b>
                    </button>
                </h2>
            </div>
            <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
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
                                <input type="radio" class="custom-control-input" id="maleRadio" name="gender" value="Male" />
                                <label class="custom-control-label" for="maleRadio">Male</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" id="femaleRadio" name="gender" value="female" />
                                <label class="custom-control-label" for="femaleRadio">Female</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" id="otherRadio" name="gender" value="others" />
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
                                <option value="" selected disabled>Please select a country</option>
                            </select>
                        </div>

                        <!--State-->
                        <div class="form-group">
                            <label for="State">State:</label>
                            <select id="state-select" class="form-control" disabled="disabled">
                                <option value="" selected disabled>Please select a state</option>
                            </select>
                        </div>
                        <!--Places to go-->
                        <div class="form-group">
                            <label for="Places">Places to go:</label>
                            <select id="places-to-go-select" class="form-control" disabled="disabled" multiple name="places">
                                <option value="" selected disabled>Please select a state first</option>
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
                        <!--Flight Start Date-->
<%--                        <body onload="setMinStartDate()">--%>
                            <div class="form-group">
                                <label for="startDate">Start Date:</label>
                                <input type="date" class="form-control" id="startDate" />
                            </div>
<%--                        </body>--%>
                        <!--Flight End Date-->

<%--                        <div onload="setMaxEndDate()">--%>
                            <div class="form-group">
                                <label for="endDate">End Date:</label>
                                <input type="date" class="form-control" id="endDate" />
                            </div>
<%--                        </div>--%>
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
                        <button id="submitButton" class="btn btn-primary" onclick="submitClick()" value="submit">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-header" id="headingTwo">
            <h2 class="mb-0">
                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo">
                    <%--aria-expanded="false" aria-controls="collapseTwo">--%>
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
                            <th>Gender</th>
                            <th>Start Date</th>
                            <th>End Date</th>
                            <th>Country</th>
                            <th>State</th>
                            <th>Places</th>
                            <th>Upload</th>
                            <th>Email</th>
                            <th>Edit</th>
                            <%--<th>Delete</th>--%>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        <td>First Name</td>
                            <td>Last Name</td>
                            <td>Date of Birth</td>
                            <td>Phone Number</td>
                            <td>Male</td>
                            <td>Start Date</td>
                            <td>End Date</td>
                            <td>Country</td>
                            <td>State</td>
                            <td>NY,MX,bv</td>
                            <td>Upload</td>
                            <td>Email</td>
                            <td>
                                <a href="#" onclick="onEdit(this)" ><i class="fas fa-edit"></i>Edit</a>
                            </td>
                           <%-- <td>
                                <a href="#" onclick="onDelete(this)" ><i class="fa fa-trash" ></i>Delete</a>
                            </td>--%>
                            </tr>
                       
                    </tbody>
                </table>
            </div>
        </div>
    </div>
      </div>
    <br />
    <h5 align="center">Flight Facilities</h5>
    <!-- Button to Open the Modal -->
    <button1 type="button" class="btn btn-info btn-block" data-toggle="modal" data-target="#myModal">
        Click Here!!
    </button1>
    <!-- The Modal -->
    <div class="modal" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Welcome! to our airlines </h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <div class="embed-responsive embed-responsive-16by9 hoverable">
                        <iframe class="embed-responsive-item" width="560" height="315" src="https://www.youtube.com/embed/FGd5Btu9qHI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen=""></iframe>
                    </div>
                </div>
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    $(document).ready(function () {
        setMinStartDate();
        setMaxEndDate();
    });
    function validateForm() {
        var firstName = $("#usr").val();
        var lastName = $("#usr2").val();
        var day = $("#DOB").val();
        var p = $("#phone").val();
        var gender = $("input[name='gender']:checked").val(); // added check for gender field
        var startdate = $("#startDate").val();
        var enddate = $("#endDate").val();
        var country = $("#country-select").val();
        var state = $("#state-select").val();
        var places = $("#places-to-go-select").val();
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
        if (!gender) {
            valid = false;
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter your gender'
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
        if (!places) {
            valid = false;
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please enter your places to visit'
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
    function submitClick() {
        debugger
        //$("#submitButton").click(function (event) {
        
        event.preventDefault();
        if (validateForm()) {
            // Add data to the table
            var table = document.querySelector("#dataTable tbody");
            var row = table.insertRow(-1);
            var firstNameCell = row.insertCell(0);
            var lastNameCell = row.insertCell(1);
            var dobCell = row.insertCell(2);
            var phoneCell = row.insertCell(3);
            var genderCell = row.insertCell(4);
            var startDateCell = row.insertCell(5);
            var endDateCell = row.insertCell(6);
            var countryCell = row.insertCell(7);
            var stateCell = row.insertCell(8);
            var placesCell = row.insertCell(9);
            var uploadCell = row.insertCell(10);
            var emailCell = row.insertCell(11);
            var EditCell = row.insertCell(12);
            //var DeleteCell = row.insertCell(13);
            debugger
            firstNameCell.innerHTML = $("#usr").val();
            lastNameCell.innerHTML = $("#usr2").val();
            dobCell.innerHTML = $("#DOB").val();
            phoneCell.innerHTML = $("#phone").val();
            genderCell.innerHTML = $("input[name='gender']:checked").val();
            startDateCell.innerHTML = $("#startDate").val();
            endDateCell.innerHTML = $("#endDate").val();
            countryCell.innerHTML = $("#country-select").val();
            stateCell.innerHTML = $("#state-select").val();
            placesCell.innerHTML = $("#places-to-go-select").val();
            uploadCell.innerHTML = $("#Upload").val();
            emailCell.innerHTML = $("#email").val();
            EditCell.innerHTML = `<a href="#" onclick="onEdit(this)" ><i class="fas fa-edit"></i>Edit</a>`;
            //DeleteCell.innerHTML = ` <a href="#" onclick="onDelete(this)" ><i class="fas fa-trash"></i>Delete</a>`;
            var data = {
                firstName: $("#usr").val(),
                lastName: $("#usr2").val(),
                dob: $("#DOB").val(),
                phone: $("#phone").val(),
                gender: $("input[name='gender']:checked").val(),
                startDate: $("#startDate").val(),
                endDate: $("#endDate").val(),
                country: $("#country-select").val(),
                places: $("#places-to-go-select").val(),
                state: $("#state-select").val(),
                upload: $("#Upload").val(),
                email: $("#email").val(),
            }
            var dataList = JSON.parse(localStorage.getItem("dataList")) || [];
            dataList.push(data);
            localStorage.setItem("dataList", JSON.stringify(dataList));
            clearfield();
        }
        //    });
    }
    // Clear all fields
    function clearfield() {
        $('input').val('');
        $('input[name=gender]').prop('checked', false)
        $('#country-select').val(null).trigger('change');
        $('#state-select').val(null).trigger('change');
        $('#places-to-go-select').val(null).trigger('change');
    }
</script>
<script>
    //function onDelete(td) {
    //    Swal.fire({
    //        title: 'Are you sure?',
    //        text: `You are about to delete the record for ${td.parentElement.parentElement.cells[0].innerText}. Are you sure you want to proceed?`,
    //        icon: 'warning',
    //        showCancelButton: true,
    //        confirmButtonColor: '#3085d6',
    //        cancelButtonColor: '#d33',
    //        confirmButtonText: 'Yes, delete it!'
    //    }).then((result) => {
    //        if (result.isConfirmed) {
    //            row = td.parentElement.parentElement;
    //            document.getElementById("dataTable").deleteRow(row.rowIndex);
    //            resetForm();
    //            Swal.fire(
    //                'Deleted!',
    //                'Your data has been deleted.',
    //                'success'
    //            )
    //        }
    //    })
    //}
   
</script>
 <script>
    // Define sample data
         var countries = [
         {id: 'US', text: 'United States' },
         {id: 'CA', text: 'Canada' },
         {id: 'MX', text: 'Mexico' }
         ];
         var usStates = [
         {id: 'NY', text: 'New York' },
         {id: 'CA', text: 'California' },
         {id: 'TX', text: 'Texas' }
         ];
         var caStates = [
         {id: 'ON', text: 'Ontario' },
         {id: 'QC', text: 'Quebec' },
         {id: 'BC', text: 'British Columbia' }
         ];

         var mxStates = [
         {id: 'BC', text: 'Baja California' },
         {id: 'AGS', text: 'Aguascalientes' },
         {id: 'SON', text: 'Sonora' }
         ];
         var places = [
         {id: 'NYC', text: 'New York City' },
         {id: 'LA', text: 'Los Angeles' },
         {id: 'TOR', text: 'Toronto' },
         {id: 'VAN', text: 'Vancouver' },
         {id: 'MEX', text: 'Mexico City' },
         {id: 'CAB', text: 'Cabo San Lucas' }
         ];
         // Populate country select dropdown
         $('#country-select').select2({
             placeholder: "Please select a country",
         data: countries
    });
         // Populate state select dropdown based on country selection
         $('#country-select').on('change', function () {
        var country = $(this).val();
         var states;

         // Determine which states to use based on country selection
         if (country === 'US') {
             states = usStates;
        } else if (country === 'CA') {
             states = caStates;
        } else if (country === 'MX') {
             states = mxStates;
        }

         // Populate state select dropdown
         $('#state-select').prop('disabled', false).empty().select2({
             placeholder: "Please select a state",
         data: states
        });
    });

         // Populate places select dropdown based on state selection
         $('#state-select').on('change', function () {
        var state = $(this).val();
             var randomPlaces = places.sort(() => 0.5 - Math.random()).slice(0, 3); // Get three random places from the sample data
             // Populate places select dropdown
             $('#places-to-go-select').prop('disabled', false).empty().select2({
                 placeholder: 'Select places to go',
                 data: randomPlaces
             });
         });     
 </script>
<script>
    function setMinStartDate() {
        debugger
        // Get today's date
        var today = new Date();
        var demo = today.toISOString().substr(0, 10);
        document.getElementById("startDate").min = demo;
    }
</script>
<script>
    function setMaxEndDate() {
        // Get today's date
        var today = new Date();
        var endDateInput = document.getElementById("endDate");
        endDateInput.min = new Date(today.getFullYear(), today.getMonth(), today.getDate()).toISOString().substr(0, 10);
        endDateInput.onchange = function () {
            debugger
            var selectedDate = new Date(endDateInput.value);
            if (selectedDate > new Date(today.getFullYear(), today.getMonth() + 3, today.getDate())) {
                endDateInput.value = "";
                Swal.fire(
                    'Booking should not extend 3 months',
                    'Retry again!',
                    'warning'
                )
            }
        }
    }
</script>
</html>
