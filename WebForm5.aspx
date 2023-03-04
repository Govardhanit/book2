<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modal update.aspx.cs" Inherits="book2.modal_update" %>


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
         /* Scrollbar Styles */
    ::-webkit-scrollbar {
        width: 10px;
        height: 10px;
    }
    ::-webkit-scrollbar-thumb {
        background-color: #777;
        border-radius: 5px;
        border: 2px solid #fff;
    }
    ::-webkit-scrollbar-track {
        background-color: #f1f1f1;
    }

    /* Smooth Scrolling */
    html {
        scroll-behavior: smooth;
    }

    /* Table Styles */
    table {
        border-collapse: collapse;
        width: 100%;
    }
    th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color:violet;
        color: white;
    }
    tr:hover {
        background-color: #f5f5f5;
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
                            <label for="languages">Languages Known:</label>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" id="english-checkbox" name="languages[]" value="English" />English
                                </label>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" id="french-checkbox" name="languages[]" value="French" />French
                                </label>
                            </div>
                            <div class="form-group">
                                <label for="Country">Country:</label>
                                <select id="country-select" class="form-control">
                                    <option value="" selected="selected" disabled="disabled">Please select a country</option>
                                    <option value="USA">USA</option>
                                    <option value="France">France</option>
                                    <option value="Japan">Japan</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="places">Places to go:</label>
                                <select id="places-select" class="form-control select2" multiple="multiple">
                                    <option value="" selected="selected" disabled="disabled">Please select a country first</option>
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
                <div style="overflow-x: auto;">
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
                                <th>places to go</th>
                                <th>languages</th>
                                <th>Upload</th>
                                <th>Email</th>
                                <th>Action</th>
                                <th>Update</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Govardhan</td>
                                <td>P</td>
                                <td>2023-03-02T14:16</td>
                                <td>2023-03-14T14:10</td>
                                <td>Male</td>
                                <td>2023-03-13</td>
                                <td>2023-03-14</td>
                                <td>USA</td>
                                <td>Los Angeles</td>
                                <td>English</td>
                                <td>C:\fakepath\1st Review CRA.pptx</td>
                                <td>saransoorya2001@gmail.com</td>
                                <td>
                                    <a href="#" onclick="onEdit(this)"><i class="fas fa-edit"></i></a>
                                </td>
                                <td>
                                    <button type="button" class="btn btn-sm btn-primary fas fa-pencil-alt noUnderlineCustom text-white" data-toggle="modal" data-target="#editModal" onclick="onUpdateclick(this)"></button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <button type="button" class="btn btn-danger " onclick="clearTable()">Clear Table</button>
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
                  <form id="modalform">
                     <input type="hidden" id="editId" value="" />
                      <div class="form-group">
                            <label for="editFName">First Name</label>
                            <input type="text" name="name" class="form-control" id="editFname" placeholder="First Name" required="required" /></div>
                      <div class="form-group">
                            <label for="editLName">Last Name</label>
                            <input type="text" name="name" class="form-control" id="editLname" placeholder="Last Name" required="required" /></div>
                        <!--Gender Radio Button -->
                            <div class="form-group">
                                <label for="genders">Gender:</label>
                                <div class="custom-control custom-radio">
                                    <input type="radio" class="custom-control-input" id="EmaleRadio" name="genders" value="Male" />
                                    <label class="custom-control-label" for="EmaleRadio">Male</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" class="custom-control-input" id="EfemaleRadio" name="genders" value="female" />
                                    <label class="custom-control-label" for="EfemaleRadio">Female</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" class="custom-control-input" id="EotherRadio" name="genders" value="others" />
                                    <label class="custom-control-label" for="EotherRadio">Others</label>
                                </div>
                                </div>
                    <%--  languages known--%>
                       <label for="language">Languages Known:</label>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" id="Eenglish-checkbox" name="language[]" value="English" />English
                                </label>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" id="Efrench-checkbox" name="language" value="French" />French
                                </label>
                            </div>
                      <%--Country--%>
                       <div class="form-group">
                                <label for="ECountry">Country:</label>
                                <select id="Ecountry-select" class="form-control">
                                    <option value="" selected="selected" disabled="disabled">Please select a country</option>
                                    <option value="USA">USA</option>
                                    <option value="France">France</option>
                                    <option value="Japan">Japan</option>
                                </select>
                            </div>
                      <%--states--%>
                            <div class="form-group">
                                <label for="EPlaces">Places to go:</label>
                                <select id="Eplaces-select" class="form-control select2" multiple="multiple">
                                    <option value="" selected="selected" disabled="disabled">Please select a country first</option>
                                </select>
                            </div>
                        <!---DOB--->
                            <div class="form-group">
                                <label for="EDOB">DOB:</label>
                                <input type="datetime-local" class="form-control" id="EDOB" max="" />
                            </div>
                      <%--Phone number--%>
                      <div class="form-group">
                                <label for="Ephone">Phone:</label>
                                <input type="number" class="form-control" id="Ephone" placeholder="Add number" maxlength="10" />
                                <div id="Ephone-error" class="text-danger"></div>
                            </div>
                       <!--Flight Start Date-->     
                            <div class="form-group">
                                <label for="EstartDate">Start Date:</label>
                                <input type="date" class="form-control" id="EstartDate" />
                            </div>
                        <!--Flight End Date-->                    
                            <div class="form-group">
                                <label for="EendDate">End Date:</label>
                                <input type="date" class="form-control" id="EendDate" />
                            </div>
                       <!--upload folder -->
                            <div class="form-group">
                                <label for="EUpload">Upload a file</label>
                                <input type="file" class="form-control-file" id="EUpload" />
                            </div>
                      <!--Email form -->
                            <div class="form-group">
                                <label for="Eemail">Email:</label>
                                <input type="email" class="form-control" id="Eemail" placeholder="Enter mail" name="email" />
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
        var languages = $('input[name="languages[]"]:checked').length; // get number of selected languages
        var day = $("#DOB").val();
        var p = $("#phone").val();
        var startdate = $("#startDate").val();
        var enddate = $("#endDate").val();
        var country = $("#country-select").val();
        /* var places = $("places-select").val();*/
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
            //if (!places) {
            //    valid = false;
            //    Swal.fire({
            //        icon: 'error',
            //        title: 'Oops...',
            //        text: 'Please select your state'
            //    });
            //}
            // Check if at least one language is selected
            if (languages === 0) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please select at least one language.'
                });
                valid = false;
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
            var languagesCell = row.insertCell(9);
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
            stateCell.innerHTML = $("#places-select").val();
            languagesCell.innerHTML = $("input[name='languages[]']:checked")
                .map(function () {
                    return this.value;
                }).get().join(", ");
            uploadCell.innerHTML = $("#Upload").val();
            emailCell.innerHTML = $("#email").val();
            EditCell.innerHTML = `<a href="#" onclick="onEdit(this)" ><i class="fas fa-edit"></i></a>`;
            updateCell.innerHTML = ` <button type="button" class="btn btn-sm btn-primary fas fa-pencil-alt noUnderlineCustom text-white" data-toggle="modal" data-target="#editModal" onclick="onUpdateclick(this)"> </button>`
            var data = {
                firstName: $("#usr").val(),
                lastName: $("#usr2").val(),
                dob: $("#DOB").val(),
                phone: $("#phone").val(),
                gender: $("input[name='gender']:checked").val(),
                startDate: $("#startDate").val(),
                endDate: $("#endDate").val(),
                country: $("#country-select").val(),
                state: $("#places-select").val(),
                languages: $("input[name='languages[]']:checked")
                    .map(function () {
                        return this.value;
                    }).get().join(", "),
                upload: $("#Upload").val(),
                email: $("#email").val(),
            };
            //get the data from the Table using Table id
            var existingData = localStorage.getItem("dataTable");
            if (existingData) {
                existingData = JSON.parse(existingData);
            } else {
                existingData = [];
            }
            //Push the data as string in LocalStorage using setItem and JSON.stringify
            existingData.push(data);
            localStorage.setItem("dataTable", JSON.stringify(existingData));

            //Clear Input Field
            clearfield();
        }
    }
    // Clear all fields
    function clearfield() {
        $('input').val('');
        $('input[name="languages[]"]').prop('checked', false);
        $('input[name=gender]').prop('checked', false)
        $('#country-select').val(null).trigger('change');
        $('#state-select').val(null).trigger('change');
    }
</script>
<script>//function onEdit(td) {
    //        // Do nothing if the cell is in the last column
    //        if (td.cellIndex === 11) return;

    //        // Replace the row's text content with input fields for editing
    //        const row = td.closest('tr');
    //        const cells = Array.from(row.cells);

    //        cells.slice(0, 12).forEach((cell) => {
    //            const currentValue = cell.textContent.trim();
    //            cell.innerHTML = `<input type="text" value="${currentValue}" />`;
    //        });

    //        cells[12].style.display = 'none';
    //    }
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
    //$(document).ready(function () {
    //    // Initialize country-select as a regular dropdown
    //    $('#country-select').select2({
    //        minimumResultsForSearch: Infinity // Hide search box
    //    });

    //    // Initialize places-select as a Select2 dropdown with disabled state
    //    $('#places-select').select2({
    //        placeholder: 'Please select a country first',
    //        disabled: true
    //    })
    //    // Define the sample places for each country
    //    var places = {
    //        'USA': ['New York', 'Los Angeles', 'Chicago', 'San Francisco'],
    //        'France': ['Paris', 'Marseille', 'Lyon', 'Nice'],
    //        'Japan': ['Tokyo', 'Kyoto', 'Osaka', 'Hiroshima']
    //    };
    //    // Listen for changes in the country-select elementtro
    //    $('#country-select').on('change', function () {
    //        // Get the selected country value
    //        var selectedCountry = $(this).val()
    //        // If no country is selected, disable the places-select element
    //        if (!selectedCountry) {
    //            $('#places-select').val(null).trigger('change');
    //            $('#places-select').prop('disabled', true);
    //            $('#places-select').html('<option value="" selected="selected" disabled="disabled">Please select a country first</option>');
    //            return;
    //        }
    //        // Otherwise, enable the places-select element and populate it with the sample places
    //        $('#places-select').prop('disabled', false);
    //        $('#places-select').html('<option value="" selected="selected">Please select places to go</option>');
    //        var placesArr = places[selectedCountry];
    //        for (var i = 0; i < placesArr.length; i++) {
    //            $('#places-select').append('<option value="' + placesArr[i] + '">' + placesArr[i] + '</option>');
    //        }
    //    });
    //});
    $(document).ready(function () {
        // Initialize country-select as a regular dropdown
        $('#country-select').select2({
            minimumResultsForSearch: Infinity // Hide search box
        });

        // Initialize places-select as a Select2 dropdown with disabled state
        $('#places-select').select2({
            placeholder: 'Please select a country first',
            disabled: true
        });

        // Retrieve the selected place value from local storage and set it as the selected value in the dropdown
        var selectedPlace = localStorage.getItem('selectedPlace');
        if (selectedPlace) {
            $('#places-select').val(selectedPlace).trigger('change');
        }

        // Define the sample places for each country
        var places = {
            'USA': ['New York', 'Los Angeles', 'Chicago', 'San Francisco'],
            'France': ['Paris', 'Marseille', 'Lyon', 'Nice'],
            'Japan': ['Tokyo', 'Kyoto', 'Osaka', 'Hiroshima']
        };
        // Listen for changes in the country-select element
        $('#country-select').on('change', function () {
            // Get the selected country value
            var selectedCountry = $(this).val()
            // If no country is selected, disable the places-select element
            if (!selectedCountry) {
                $('#places-select').val(null).trigger('change');
                $('#places-select').prop('disabled', true);
                $('#places-select').html('<option value="" selected="selected" disabled="disabled">Please select a country first</option>');
                return;
            }
            // Otherwise, enable the places-select element and populate it with the sample places
            $('#places-select').prop('disabled', false);
            $('#places-select').html('<option value="" selected="selected">Please select places to go</option>');
            var placesArr = places[selectedCountry];
            for (var i = 0; i < placesArr.length; i++) {
                $('#places-select').append('<option value="' + placesArr[i] + '">' + placesArr[i] + '</option>');
            }
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
        var today = new Date();
        var endDateInput = document.getElementById("endDate");
        endDateInput.min = today.toISOString().substr(0, 10);
        endDateInput.onchange = function () {
            var selectedDate = new Date(endDateInput.value);
            if (selectedDate < today) {
                endDateInput.value = today.toISOString().substr(0, 10);
            } else if (selectedDate > new Date(today.getFullYear(), today.getMonth() + 3, today.getDate())) {
                endDateInput.value = "";
                Swal.fire(
                    'Booking should not extend 3 months',
                    'Retry again!',
                    'warning'
                );
            }
        };
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
    //function onUpdate() {
    //    // Get a reference to the row that was clicked
    //    var row = event.target.parentNode.parentNode;
    //    // Get the data from the row
    //    var firstName = row.cells[0].innerHTML;
    //    var lastName = row.cells[1].innerHTML;
    //    var dob = row.cells[2].innerHTML;
    //    var phone = row.cells[3].innerHTML;
    //    var gender = row.cells[4].innerHTML;
    //    var startDate = row.cells[5].innerHTML;
    //    var endDate = row.cells[6].innerHTML;
    //    var country = row.cells[7].innerHTML;
    //    var state = row.cells[8].innerHTML;
    //    var places = row.cells[9].innerHTML;
    //    var upload = row.cells[10].innerHTML;
    //    var email = row.cells[11].innerHTML;
    //    // Set the values of the modal fields to the data from the row
    //    $("#first name").val(firstName);
    //    $("#last name").val(lastName);
    //    $("#DOBs").val(dob);
    //    $("#phones").val(phone);
    //    $("input[name='genders'][value='" + gender + "']").prop("checked", true);
    //    $("#startDates").val(startDate);
    //    $("#endDates").val(endDate);
    //    $("#country-selects").val(country);
    //    $("#state-selects").val(state);
    //    $("#places-to-go-selects").val(places);
    //    $("#Uploads").val(upload);
    //    $("#emails").val(email);
    //}

</script>

<script>
    // Get the editId and first name input elements
    const editIdInput = document.getElementById("editId");
    const firstNameInput = document.getElementById("first name");
</script>
    <%--<script>
        $(function onUpdateclick() {
            //Take the data from the TR during the event button
            $('table').on('click', 'button.editingTRbutton', function (ele) {
                debugger
                //the <tr> variable is use to set the parentNode from "ele
                var tr = ele.target.parentNode.parentNode;
                var firstName = tr.cells[0].textContent;
                var lastName = tr.cells[1].textContent;
                var phone = tr.cells[2].textContent;
                var gender = tr.cells[3].textContent;
                var start = tr.cells[4].textContent;
                var end = tr.cells[5].textContent;
                var country = tr.cells[6].textContent;
                var places = tr.cells[7].textContent;
                var languages = tr.cells[8].textContent;
                var upload = tr.cell[9].textContent;
                var email = tr.cell[10].textContent;
                $('h5.modal-title').html('Edit Admin Data: ' + firstName);
                $('#editFname').val(firstName);
                $('#editLname').val(lastName); 
                $('#Ephone').val(phone);  
                $('#genders').val(gender); 
                $('#EstartDate').val(start);  
                $('#editLname').val(end); 
                $('#Ecountry-select').val(country).attr('selected','selected');
                $('#Eplaces-select').val(places).trigger('change');
                $('#EDOB').val(DOB);  
                $('#language[]').val(languages);  
                $('#editLname').val(upload);  
                $('#EUpload').val(upload);  
                $('#Eemail').val(email);  
               
    

    </script>--%>
    <script>
        function onUpdateclick(button) {
            debugger
            // Get the <tr> element that contains the clicked button
            var tr = $(button).closest('tr');

            // Get the data from the table cells in the <tr>
            var firstName = tr.find('td:eq(0)').text();
            var lastName = tr.find('td:eq(1)').text();
            var dob = tr.find('td:eq(2)').text();
            var phone = tr.find('td:eq(3)').text();
            var gender = tr.find('td:eq(4)').text();
            var start = tr.find('td:eq(5)').text();
            var end = tr.find('td:eq(6)').text();
            var country = tr.find('td:eq(7)').text();
            var places = tr.find('td:eq(8)').text();
            var languages = tr.find('td:eq(9)').text();
            var upload = tr.find('td:eq(10)').text();
            var email = tr.find('td:eq(11)').text();
            // Set the data in the modal inputs
            $('h5.modal-title').html('Edit Admin Data: ' + firstName);
            $('#editFname').val(firstName);
            $('#editLname').val(lastName);
            $('#EDOB').val(dob);
            $('#Ephone').val(phone);
            $("input[name='genders']:checked").val(gender);
            $('#EstartDate').val(start);
            $('#EendDate').val(end);
            $('#Ecountry-select').val(country).attr('selected', 'selected');
            $('#Eplaces-select').val(places).trigger('change');
            $('input[name="language[]"]').each(function () {
                if (languages.includes(this.value)) {
                    $(this).prop('checked', true);
                }
            });
            $('#EUpload').val(upload);
            $('#Eemail').val(email);
        }
    </script>
    <%--modal script--%>
    <script>
        $(document).ready(function () {
            // Initialize Ecountry-select as a regular dropdown
            $('#Ecountry-select').select2({
                minimumResultsForSearch: Infinity // Hide search box
            });

            // Initialize Eplaces-select as a Select2 dropdown with disabled state
            $('#Eplaces-select').select2({
                placeholder: 'Please select a country first',
                disabled: true
            });

            // Define the sample places for each country
            var places = {
                'USA': ['New York', 'Los Angeles', 'Chicago', 'San Francisco'],
                'France': ['Paris', 'Marseille', 'Lyon', 'Nice'],
                'Japan': ['Tokyo', 'Kyoto', 'Osaka', 'Hiroshima']
            };
            // Listen for changes in the Ecountry-select element
            $('#Ecountry-select').on('change', function () {
                // Get the selected country value
                var selectedCountry = $(this).val();
                // If no country is selected, reset the Eplaces-select element
                if (!selectedCountry) {
                    $('#Eplaces-select').html('<option value="" selected="selected" disabled="disabled">Please select a country first</option>');
                    return;
                }
                // Otherwise, enable the Eplaces-select element and populate it with the sample places
                $('#Eplaces-select').prop('disabled', false);
                $('#Eplaces-select').html('<option value="" selected="selected">Please select places to go</option>');
                var placesArr = places[selectedCountry];
                for (var i = 0; i < placesArr.length; i++) {
                    $('#Eplaces-select').append('<option value="' + placesArr[i] + '">' + placesArr[i] + '</option>');
                }
            });
        });
    </script>
    <script>
        // Retrieve the data from local storage
        var existingData = localStorage.getItem("dataTable");

        if (existingData) {
            debugger
            // Parse the data as a JavaScript object
            existingData = JSON.parse(existingData);

            // Loop through each item in the data and add a row to the table
            existingData.forEach(function (item) {
                debugger
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
                var languagesCell = row.insertCell(9);
                var uploadCell = row.insertCell(10);
                var emailCell = row.insertCell(11);
                var EditCell = row.insertCell(12);
                var updateCell = row.insertCell(13);
                // Populate the cells with the data from the current item
                firstNameCell.innerHTML = item.firstName;
                lastNameCell.innerHTML = item.lastName;
                dobCell.innerHTML = item.dob;
                phoneCell.innerHTML = item.phone;
                genderCell.innerHTML = item.gender;
                startDateCell.innerHTML = item.startDate;
                endDateCell.innerHTML = item.endDate;
                countryCell.innerHTML = item.country;
                stateCell.innerHTML = item.state;
                languagesCell.innerHTML = item.languages;
                uploadCell.innerHTML = item.upload;
                emailCell.innerHTML = item.email;

                // Add the edit and update buttons to the last two cells
                EditCell.innerHTML = `<a href="#" onclick="onEdit(this)" ><i class="fas fa-edit"></i></a>`;
                updateCell.innerHTML = ` <button type="button" class="btn btn-sm btn-primary fas fa-pencil-alt noUnderlineCustom text-white" data-toggle="modal" data-target="#editModal" onclick="onUpdateclick(this)"> </button>`
            });
        }
       
        function clearTable() {
            Swal.fire({
                title: "Are you sure to delete datas from local storage and table?",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Yes, clear it!",
                cancelButtonText: "Cancel",
                reverseButtons: true,
                showClass: {
                    popup: "animate__animated animate__fadeInDown"
                },
                hideClass: {
                    popup: "animate__animated animate__fadeOutUp"
                }
            }).then((result) => {
                if (result.isConfirmed) {
                    var table = document.querySelector("#dataTable tbody");
                    table.innerHTML = "";
                    localStorage.removeItem("dataTable");
                    Swal.fire({
                        title: "Table cleared!",
                        text: "All data has been erased from local storage.",
                        icon: "success",
                        timer: 3000,
                        timerProgressBar: true,
                        showClass: {
                            popup: "animate__animated animate__fadeInDown"
                        },
                        hideClass: {
                            popup: "animate__animated animate__fadeOutUp"
                        }
                    });
                }
            });
        }
    </script>
    <script> $(document).ready(function () {</script>
    

</html> 