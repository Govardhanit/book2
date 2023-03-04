<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modal update.aspx.cs" Inherits="book2.modal_update" %>

<!DOCTYPE html>

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
                                <option value="" selected="selected" disabled="disabled">Please select a country</option>
                            </select>
                        </div>

                        <!--State-->
                        <div class="form-group">
                            <label for="State">State:</label>
                            <select id="state-select" class="form-control" disabled="disabled">
                                <option value="" selected="selected" disabled="disabled">Please select a state</option>
                            </select>
                        </div>
                        <!--Places to go-->
                        <div class="form-group">
                            <label for="Places">Places to go:</label>
                            <select id="places-to-go-select" class="form-control" disabled="disabled" multiple name="places">
                                <option value="" selected="selected"disabled="disabled">Please select a state first</option>
                            </select>
                       </div>
                        <!---DOB--->
                        <div class="form-group">
                            <label for="DOB">DOB:</label>
                            <input type="datetime-local" class="form-control" id="DOB" max="" />
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone:</label>
                            <input type="number" class="form-control" id="phone" placeholder="Add number" maxlength="10" />
                            <div id="phone-error" class="text-danger"></div>
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
                            <th>Action</th>
                            <th>Update</th>
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
                                <a href="#" onclick="onEdit(this)" ><i class="fas fa-edit"></i></a>
                            </td>
                            <td>
                                <button type="button" onclick="onUpdate()" class="btn btn-sm btn-primary fas fa-pencil-alt noUnderlineCustom text-white" data-toggle="modal" data-target="#editModal"></button>
                            </td>
                            </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
      </div>
  
      <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <form action="WebForm1.aspx" " enctype="multipart/form-data"  id="ModalForm">
                        <input type="hidden" id="editId" value="" />
                          <!--First name-->
                        <div class="form-group">
                            <label for="first name" title="Text color is blue">First Name:</label>
                            <input type="text" class="form-control" id="first name" placeholder="Enter First name" title="Please enter your first name" />
                        </div>
                        <!--Last name -->
                        <div class="form-group">
                            <label for="last name" title="text color is blue">Last Name:</label>
                            <input type="text" class="form-control" id="last name" placeholder="Enter Last name" title="enter your last name " />
                        </div>
                        <!--Gender Radio Button -->
                        <div class="form-group">
                            <label for="Gender">Gender:</label>
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" id="maleRadios" name="genders" value="Male" />
                                <label class="custom-control-label" for="maleRadios">Male</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" id="femaleRadios" name="genders" value="female" />
                                <label class="custom-control-label" for="femaleRadios">Female</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" id="otherRadios" name="genders" value="others" />
                                <label class="custom-control-label" for="otherRadios">Others</label>
                            </div>
                        </div>
                        <!--Languages known Check box -->
                        <label for="languages">Languages Known:</label>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" id="english-checkboxs" name="checkboxss" value="" />English
                            </label>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" id="french-checkboxs" name="checkboxss" value="" />French
                            </label>
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" id="spanish-checkboxs" name="checkboxss" value="" />Spanish
                            </label>
                        </div>
                        <!--Country-->
                        <div class="form-group">
                            <label for="Country">Country:</label>
                            <select id="country-selects" class="form-control">
                                <option value="" selected="selected" disabled="disabled">Please select a country</option>
                            </select>
                        </div>

                        <!--State-->
                        <div class="form-group">
                            <label for="State">State:</label>
                            <select id="state-selects" class="form-control" disabled="disabled">
                                <option value="" selected="selected" disabled="disabled">Please select a state</option>
                            </select>
                        </div>
                        <!--Places to go-->
                        <div class="form-group">
                            <label for="Places">Places to go:</label>
                            <select id="places-to-go-selects" class="form-control" disabled="disabled" multiple name="places">
                                <option value="" selected="selected"disabled="disabled">Please select a state first</option>
                            </select>
                       </div>
                        <!---DOB--->
                        <div class="form-group">
                            <label for="DOBs">DOB:</label>
                            <input type="datetime-local" class="form-control" id="DOBs" max="" />
                        </div>
                        <div class="form-group">
                            <label for="phones">Phone:</label>
                            <input type="number" class="form-control" id="phones" placeholder="Add number" maxlength="10" />
                            <div id="phone-errors" class="text-danger"></div>
                        </div>
                        <!--Flight Start Date-->
<%--                        <body onload="setMinStartDate()">--%>
                            <div class="form-group">
                                <label for="startDates">Start Date:</label>
                                <input type="date" class="form-control" id="startDates" />
                            </div>
<%--                        </body>--%>
                        <!--Flight End Date-->

<%--                        <div onload="setMaxEndDate()">--%>
                            <div class="form-group">
                                <label for="endDates">End Date:</label>
                                <input type="date" class="form-control" id="endDates" />
                            </div>
<%--                        </div>--%>
                        <!--upload folder -->
                        <div class="form-group">
                            <label for="Upload">Upload a file</label>
                            <input type="file" class="form-control-file" id="Uploads" />
                        </div>
                        <!--Email form -->
                        <div class="form-group">
                            <label for="emails">Email:</label>
                            <input type="email" class="form-control" id="emails" placeholder="Enter mail" name="emails" />
                        </div>
                       
                        <div class="modal-footer">
                            <a  class="btn btn-secondary" data-dismiss="modal">Close</a>
                            <button type="button"  id="saveModalButton" class="btn btn-primary" data-dismiss="modal">Save changes</button>
                        </div>
                    </form>
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
        var startdate = $("#startDate").val();
        var enddate = $("#endDate").val();
        var country = $("#country-select").val();
        var state = $("#state-select").val();
        var places = $("#places-to-go-select").val();
        var upload = $("#Upload").val();
        var email = $("#email").val();
        var valid = true;

        if (!firstName && !lastName && !day && !p && !startdate && !enddate && !country && !state && !places && !upload && !email) {
            valid = false;
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please fill the form'
            });
        }
        else {
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
            var updateCell = row.insertCell(13);
          
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
            EditCell.innerHTML = `<a href="#" onclick="onEdit(this)" ><i class="fas fa-edit"></i></a>`;
            updateCell.innerHTML = `<button type="button" onclick="onUpdate()" class="btn btn-sm btn-primary fas fa-pencil-alt noUnderlineCustom text-white" data-toggle="modal" data-target="#editModal"></button>`
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
    function onEdit(td) {
        const cellIndex = td.cellIndex;
        if (cellIndex === 11) {
            return;
        }
        const row = td.closest('tr');
        const cells = row.querySelectorAll('td');

        // Replace the row's text content with input fields for editing
        for (let i = 0; i < cells.length; i++) {
            const cell = cells[i];
            if (i <= 11) {
                const currentValue = cell.textContent.trim();
                cell.innerHTML = `<input type="text" value="${currentValue}" />`;
            } else if (i === 12) {
                cell.style.display = 'none';
            }
        }

        // Add save and delete buttons for the row
        const saveButton = document.createElement('button');
        saveButton.innerHTML = '<i class="fas fa-save"></i>';
        saveButton.classList.add('btn', 'btn-success', 'btn-sm', 'mx-1');
        saveButton.addEventListener('click', () => {
            // Loop over the cells and replace the input fields with text content
            for (let i = 0; i < cells.length; i++) {
                const cell = cells[i];
                const input = cell.querySelector('input');
                const newValue = input.value.trim();

                cell.textContent = newValue;
            }
            // Remove the save and delete buttons from the row
            row.removeChild(saveButton);
            row.removeChild(deleteButton);
        });

        const deleteButton = document.createElement('button');
        deleteButton.innerHTML = '<i class="fas fa-trash-alt"></i>';
        deleteButton.classList.add('btn', 'btn-danger', 'btn-sm', 'mx-1');
        deleteButton.addEventListener('click', () => {
            // Get the value of the first name input field
            const firstName = $("#usr").val();

            // Show SweetAlert2 alert to confirm deletion
            Swal.fire({
                icon: 'warning',
                title: 'Are you sure?',
                text: `You are about to delete the row for "${firstName}".`,
                showCancelButton: true,
                confirmButtonText: 'Delete',
                cancelButtonText: 'Cancel',
                confirmButtonColor: '#dc3545'
            }).then((result) => {
                if (result.isConfirmed) {
                    row.remove();
                    // Show SweetAlert2 alert for successful deletion
                    Swal.fire({
                        icon: 'success',
                        title: 'Row Deleted!',
                        text: `The row for has been deleted.`,
                        confirmButtonText: 'OK'
                    });
                }
            });
        });

        row.appendChild(saveButton);
        row.appendChild(deleteButton);

        // Display edit message
        Swal.fire({
            title: 'Edit',
            text: 'Edit this row and click Save.',
            icon: 'info',
            confirmButtonText: 'OK'
        });
    }

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
  <script>
      const phoneInput = document.getElementById('phone');
      const phoneError = document.getElementById('phone-error');

      phoneInput.addEventListener('input', function () {
          let phone = this.value.trim();
          phone = phone.replace(/\D/g, ''); // remove non-numeric characters
          if (phone.length > 10) {
              phone = phone.slice(0, 10);
          }
          this.value = phone;

          if (phone.length < 10) {
              phoneError.textContent = 'Phone number must be at least 10 digits';
              phoneInput.classList.add('is-invalid');
              Swal.fire({
                  icon: 'error',
                  title: 'Oops...',
                  text: 'Phone number must be at least 10 digits.',
              });
          } else {
              phoneError.textContent = '';
              phoneInput.classList.remove('is-invalid');
              
          }
      });

      document.querySelector('form1').addEventListener('submitButton', function (event) {
          if (phoneInput.value.length < 10) {
              event.preventDefault();
             
          }
      });


      function onUpdate() {
          // Get a reference to the row that was clicked
          var row = event.target.parentNode.parentNode;

          // Get the data from the row
          var firstName = row.cells[0].innerHTML;
          var lastName = row.cells[1].innerHTML;
          var dob = row.cells[2].innerHTML;
          var phone = row.cells[3].innerHTML;
          var gender = row.cells[4].innerHTML;
          var startDate = row.cells[5].innerHTML;
          var endDate = row.cells[6].innerHTML;
          var country = row.cells[7].innerHTML;
          var state = row.cells[8].innerHTML;

          var places = row.cells[9].innerHTML;
          var upload = row.cells[10].innerHTML;
          var email = row.cells[11].innerHTML;

          // Set the values of the modal fields to the data from the row
          $("#first name").val(firstName);
          $("#last name").val(lastName);
          $("#DOBs").val(dob);
          $("#phones").val(phone);
          $("input[name='genders'][value='" + gender + "']").prop("checked", true);
          $("#startDates").val(startDate);
          $("#endDates").val(endDate);
          $("#country-selects").val(country);
          $("#state-selects").val(state);
          $("#places-to-go-selects").val(places);
          $("#Uploads").val(upload);
          $("#emails").val(email);
      }
     
  </script>

    <script>
        // Get the editId and first name input elements
        const editIdInput = document.getElementById("editId");
        const firstNameInput = document.getElementById("first name");


        
    </script>

   
   
  
</html>