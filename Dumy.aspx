
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>
    <title>Student Registration Form</title>
    <style>
        div {
            margin-bottom: 10px;
        }

        label {
            display: inline-block;
            width: 150px;
        }

        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        th, td {
            padding: 5px;
            text-align: left;
        }

        td {
            height: 50px;
            vertical-align: bottom;
        }

        body {
            background-image: url("https://img.freepik.com/free-vector/hand-drawn-colorful-science-education-wallpaper_23-2148489183.jpg?w=996&t=st=1676637748~exp=1676638348~hmac=bc0d2af0143a4daf48a80b6e25dec42a6275be37de3ea42b6acdcc028a020a72");
            background-size: auto 1100px;
            background-repeat: no-repeat;
        }

        .card-header {
            background-image: url("https://img.freepik.com/free-vector/hand-drawn-colorful-science-education-wallpaper_23-2148489183.jpg?w=996&t=st=1676637748~exp=1676638348~hmac=bc0d2af0143a4daf48a80b6e25dec42a6275be37de3ea42b6acdcc028a020a72");
            background-size: auto 1100px;
            background-repeat: no-repeat;
        }

        img {
            display: block;
            margin-left: auto;
            margin-right: auto;
            border-style: solid;
            border-color: blanchedalmond;
            border-radius: 8px;
            padding: 5px;
        }

        #modal {
            display: block;
            margin-left: auto;
            margin-right: auto;
            border-style: solid;
            border-color: blanchedalmond;
            border-radius: 8px;
            padding: 5px;
        }

        h1 {
            text-align: center;
        }

        h2 {
            text-align: center;
        }

        .my-actions {
            margin: 0 2em;
        }

        .order-1 {
            order: 1;
        }

        .order-2 {
            order: 2;
        }

        .order-3 {
            order: 3;
        }

        .right-gap {
            margin-right: auto;
        }

        .toggle.ios, .toggle-on.ios, .toggle-off.ios {
            border-radius: 20rem;
        }

            .toggle.ios .toggle-handle {
                border-radius: 20rem;
            }
    </style>
</head>
<body>
    <!--container(card)-->
    <div class="container">
        <div class="accordion" id="accordionExample">
            <div class="card" style="background-color: thistle">
                <div class="card-header" id="headingOne">
                    <h3 class="mb-0">
                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne">
                            <b>Register<i class="fa fa-graduation-cap" aria-hidden="true"></i></b>
                        </button>
                    </h3>
                </div>
                <div id="collapseOne" class="collapse" data-parent="#accordionExample">
                    <div class="card-body">
                        <!--Form-->
                        <form id="myform">
                            <div>
                                <img src="https://i.pinimg.com/736x/15/3a/d9/153ad9ab7acca6191d316d73aaff57cc.jpg" alt="College logo Images | Free Vectors, Stock Photos &amp; PSD ..." width="200" heidht="200" />
                            </div>
                            <!--switch-->
                            <div style="text-align: center">
                                <input type="checkbox" id="formopen" checked="checked" data-toggle="toggle" data-on="📑📭Enable Form" data-off="📬Disable Form" data-style="ios" data-onstyle="light" data-offstyle="light" />
                            </div>
                            <!--Modal button-->
                            <button type="button" id="modal" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                                <i class="fa fa-envelope-open-o" style="color: blanchedalmond"></i>Form
                                  
                           
                            </button>
                            <!--Website link-->
                            <div class="card-footer">
                                <div style="text-align: center">
                                    <a style="background-color: honeydew";"color: white" href="https://preview.themeforest.net/item/education-center-training-courses-wordpress-theme/full_screen_preview/10652918?_ga=2.9154677.1171386221.1676124511-2100089748.1675247442" target="_blank"><i class="fa fa-link"></i>WISITE:VisiteEducation Center.com!</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--OUTPUT-->
    <div class="card" style="background-color: navajowhite">
        <div class="card-header" id="headingTwo">
            <h3 class="mb-0">
                <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo">
                    <b>Output</b>
                </button>
            </h3>
        </div>
        <div id="collapseTwo" class="collapse" data-parent="#accordionExample">
            <div class="card-body" id="outputContainer">
                <div style="overflow: auto;">
                    <table id="dataTable" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Father Name</th>
                                <th>Date of Birth</th>
                                <th>Gender</th>
                                <th>SSLC Mark</th>
                                <th>HSC Mark</th>
                                <th>SSLC Year of Completion</th>
                                <th>HSC Year of Completion</th>
                                <th>Native</th>
                                <th>Pin Code</th>
                                <th>Departement</th>
                                <th>Section</th>
                                <th>ECA</th>
                                <th>Quota</th>
                                <th>Phone.no</th>
                                <th>Email.id</th>
                                <th>Edit</th>
                                <th>Delect</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>pavithran</td>
                                <td>VV</td>
                                <td>Veeraiyan</td>
                                <td>2002-08-12</td>
                                <td>male</td>
                                <td>500</td>
                                <td>500</td>
                                <td>2017-04-08</td>
                                <td>2019-04-13</td>
                                <td id="NativeData">Thiruvarur</td>
                                <td>614001</td>
                                <td id="deptData">InformationTechnology</td>
                                <td>IT-B</td>
                                <td id="ecavalue">Kabbadi</td>
                                <td>Counselling</td>
                                <td>6381273139</td>
                                <td>tigerboogipinky@gmail.com</td>
                                <td>
                                    <a href="#" onclick="onEdit(this)"><i class="fas fa-edit"></i>Edit</a>
                                </td>
                                <td>
                                    <a href="#" onclick="onDelete(this)"><i class="fa fa-trash"></i>Delete</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!--Modal -->
    <h1>Education Center📚</h1>
    <h2>Welcome to Learn❤️</h2>
    <img src="https://i.pinimg.com/736x/15/3a/d9/153ad9ab7acca6191d316d73aaff57cc.jpg" alt="logo" style="width: 300px;" />
    <div class="modal" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">EDUCATION CENTER😃</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <!--iframe-->
                    <div>
                        <!--First Name-->
                        <div>
                            <label for="fname">First Name:</label>
                            <input type="text" id="fname" placeholder="Enter First name" class="col-lg-8" />
                        </div>
                        <!--Last Name-->
                        <div>
                            <label for="last">Last Name:</label>
                            <input type="text" id="last" placeholder="Enter Last name" class="col-lg-8" />
                        </div>
                        <!--Father Name-->
                        <div>
                            <label for="FatherName">Father Name:</label>
                            <input type="text" id="FatherName" placeholder="Enter Father name" class="col-lg-8" />
                        </div>

                        <!--Date of Birth-->
                        <div>
                            <label for="dob">Date of Birth:</label>
                            <input placeholder="Select date" type="date" id="dob" min="1980-01-01" max="2008-12-31" class="col-lg-8" />
                        </div>
                        <!--Gender using Radio button-->
                        <div>
                            <label><strong>Gender:</strong></label><br />
                            <input type="radio" id="male" name="gender" value="male" class="col-lg-4" />
                            <label for="male">Male</label><br />
                            <input type="radio" id="Female" name="gender" value="Female" class="col-lg-4" />
                            <label for="Female">Female</label><br />
                            <input type="radio" id="Others" name="gender" value="Others" class="col-lg-4" />
                            <label for="Others">Others</label>
                        </div>
                        <!--SSLC Mark-->
                        <div>
                            <label for="mark">SSLC Mark:</label>
                            <input type="number" id="mark" name="mark" maxlength="03" class="col-lg-8" />
                        </div>
                        <!--HSC Mark-->
                        <div>
                            <label for="marks">HSC Mark:</label>
                            <input type="number" id="marks" name="HSC Mark" maxlength="03" class="col-lg-8" />
                        </div>
                        <!--SSLC Year of Completion-->
                        <div>
                            <label for="Completion">SSLC Year of Completion:</label>
                            <input placeholder="Select date" type="date" id="Completion" class="col-lg-8" />
                        </div>
                        <!--HSC Year of Completion-->
                        <div>
                            <label for="Completions">HSC Year of Completion:</label>
                            <input placeholder="Select date" type="date" id="Completions" class="col-lg-8" />
                        </div>
                        <!--Native(Select2 Dropdown)-->
                        <div>
                            <label for="Native">Native:</label>
                            <select name="Native" id="Native" placeholder="Select" class="col-lg-8">
                                <option value="" disabled="disabled" selected="selected">select</option>
                                <option></option>
                            </select>
                        </div>
                        <!--Pin Code-->
                        <div>
                            <label for="code">Pin Code:</label>
                            <input type="text" id="code" name="Pin Code" maxlength="06" class="col-lg-8" />
                        </div>
                        <!--Department(dropdown)-->
                        <div>
                            <label for="dept">Department:</label>
                            <select name="dept" id="dept" size="1" onchange="section(this.value)" class="col-lg-8">
                                <option value="" disabled="disabled" selected="selected">select</option>
                                <option value="Mechanical">Mechanical</option>
                                <option value="Civil">Civil</option>
                                <option value="EEE">EEE</option>
                                <option value="InformationTechnology">InformationTechnology</option>
                            </select>
                        </div>
                        <!--Section(Enabled only if departmen is selected)-->
                        <div>
                            <label for="sec">Section:</label>
                            <select name="sec" id="sec" class="col-lg-8">
                                <option value="" disabled="disabled" selected="selected">select</option>
                                <option></option>
                            </select>
                        </div>
                        <!--Extrextracurricular activities(select2-multiple dropdown)-->
                        <div>
                            <label for="ECA">ECA:</label>
                            <select name="ECA" class="js-example-basic-multiple" id="ECA" placeholder="Select" multiple="multiple">
                                <option>Athelitics</option>
                                <option>Cricket</option>
                                <option>Kabbadi</option>
                                <option>Football</option>
                                <option>Shuttle</option>
                                <option>Chess</option>
                                <option>Carrom</option>
                            </select>
                        </div>
                        <!--Quota using Checkbox button-->
                        <div>
                            <label><strong>Quota:</strong></label><br />
                            <input type="checkbox" id="Counselling" name="Quota" value="Counselling" class="col-lg-4" />
                            <label for="Counselling">Counselling</label><br />
                            <input type="checkbox" id="Management" name="Quota" value="Management" class="col-lg-4" />
                            <label for="Management">Management</label>
                        </div>
                        <!--Phone.no-->
                        <div>
                            <label for="Phone">Phone.no:</label>
                            <input type="tel" id="Phone" name="Phone.no" minimumlength="09" maxlength="10" class="col-lg-8" />
                        </div>
                        <!--Email-->
                        <div>
                            <label for="email">Email:</label>
                            <input type="email" id="email" placeholder="Enter mail" name="email" class="col-lg-8" />
                        </div>
                        <div class="modal-footer">
                            <!--submit-->
                            <button type="button" id="submitButton" class="btn btn-primary" onclick="validateForm()">Submit</button>
                            <!--Reset-->
                            <button type="reset" id="resetButton" class="btn btn-primary" value="Reset">Reset</button>
                            <!--Update-->
                            <button type="button" id="btn-update" class="btn btn-info" onclick="onUpdate()" hidden="hidden">Update</button>
                            <!--Cancle-->
                            <button type="button" id="btn-cancle" class="btn btn-info" hidden="hidden">Cancle</button>
                            <!--Cancle-->
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        //Sweetalert2
        function validateForm() {
            var a = $("#fname").val();
            var b = $("#last").val();
            var c = $("#FatherName").val();
            var d = $("#dob").val();
            var gender = $("input[name='gender']:checked").val(); // added check for gender field
            var e = $("#mark").val();
            var f = $("#marks").val();
            var g = $("#Completion").val();
            var h = $("#Completions").val();
            var i = $("#Native").val();
            var j = $("#code").val();
            var K = $("#dept").val();
            var x = $("#sec").val();
            var ECA = $("#ECA").val();
            var Quota = $("input[name='Quota']:checked").val(); // added check for Quota field
            var l = $("#Phone").val();
            var m = $("#email").val();
            var valid = true;
            if (a == "") {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'please fill the first name',
                    footer: '<a href="">Something missing!</a>'
                })
            }
            else if (b == "") {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'please fill the last name ',
                    footer: '<a href="">Something missing!</a>'
                })
            }
            else if (c == "") {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'please fill the Father name ',
                    footer: '<a href="">Something missing!</a>'
                })
            }
            else if (d == "") {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: ' please fill the  Date of Birth!',
                    footer: '<a href="">Something missing!</a>'
                })
            }
            else if (gender === undefined) { // check if gender is not selected
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: ' please select your gender!',
                    footer: '<a href="">Something missing!</a>'
                })
            }
            else if (e == "") {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'please fill the  SSLC Mark',
                    footer: '<a href="">Something missing!</a>'
                })
            }
            else if (f == "") {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'please fill the  HSC Mark',
                    footer: '<a href="">Something missing!</a>'
                })
            }
            else if (g == "") {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'please fill the  SSLC Completion',
                    footer: '<a href="">Something missing! </a>'
                })
            }
            else if (h == "") {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'please fill the  HSC Completion ',
                    footer: '<a href="">Something missing!</a>'
                })
            }
            else if (i == "") {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'please fill the Native',
                    footer: '<a href="">Something missing  </a>'
                })
            }
            else if (j == "") {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'please fill the Pin Code',
                    footer: '<a href="">Something missing </a>'
                })
            }
            else if (K == "") {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'please fill the Department',
                    footer: '<a href="">Something missing ! </a>'
                })
            }
            else if (x == "") {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'please fill the  Section',
                    footer: '<a href="">Something missing !</a>'
                })
            }
            else if (ECA == "") {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'please fill the  Extracaricular Activities',
                    footer: '<a href="">Something missing!</a>'
                })
            }
            else if (Quota === undefined) { // check if Quota is not selected
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'please select your Quota!',
                    footer: '<a href="">Something missing!</a>'
                })
            }
            else if (l == "") {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'please fill the Phone.no  ',
                    footer: '<a href="">Something missing!</a>'
                })
            }
            else if (m == "") {
                valid = false;
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'please fill the Email.id',
                    footer: '<a href="">Something missing!</a>'
                })
            }
            return valid;
        }
        //Gets the SSLC and HSC value by their id
        const sslcCompletionInput = document.getElementById('Completion');
        const hscCompletionInput = document.getElementById('Completions');
        //set HSC input value based on SSLC input
        sslcCompletionInput.addEventListener('change', () => {
            const sslcCompletionYear = new Date(sslcCompletionInput.value).getFullYear();
            const earliestHscYear = sslcCompletionYear + 2;
            hscCompletionInput.setAttribute('min', `${earliestHscYear}-01-01`);
        });
        //Switch Button
        $(document).ready(function () {
            // Initialize the switch button
            $('#formopen').bootstrapToggle();
            // Disable the modal button on page load if switch is on
            if ($('#formopen').prop('checked')) {
                $('#modal').prop('disabled', true);
            }
            // Listen for the switch button change event
            $('#formopen').change(function () {
                // If switch is on, disable modal button; otherwise, enable it
                if ($(this).prop('checked')) {
                    $('#modal').prop('disabled', true);
                } else {
                    $('#modal').prop('disabled', false);
                }
            });
        });
        //Clear input fields in form
        function clearfields() {
            $('input').val('');
            $('input[name=gender]').prop('checked', false);
            $('#Native').val(null).trigger('change');
            $('#ECA').val(null).trigger('change');
            $('#dept').prop('selectedIndex', 0);
            $('input[name=Quota]').prop('checked', false);
            $('#sec').val('').trigger('change');
        }
        //Dropdown(select to enable)
        $('#dept').on('change', function () {
            $('#sec').attr('disabled', false);
        });
        //Department(Section options are based on which option is selected in department)
        var dept = {
            Mechanical: ["Mechanical-A", "Mechanical-B", "Mechanical-C"],
            Civil: ["Civil-A", "Civil-B", "Civil-C"],
            EEE: ["EEE-A", "EEE-B", "EEE-C"],
            InformationTechnology: ["IT-A", "IT-B", "IT-C"]
        }
        function section(value) {
            if (value.length == 0) document.getElementById("sec").innerHTML = "<option></option>";
            else {
                var Options = "";
                for (sessionId in dept[value]) {
                    Options += "<option>" + dept[value][sessionId] + "</option>";
                }
                document.getElementById("sec").innerHTML = Options;
            }
        }
        //select2(Native Dropdown, ECA with multiple dropdown)
        $(document).ready(function () {
            var place = ["Chennai", "Madhurai", "Kanyakumari", "Thiruvarur", "Thanjavur"];
            $("#Native").select2({
                data: place
            });
            $('.js-example-basic-multiple').select2({
                placeholder: 'Select options'

            });
            //getdata form localtorage
            getdata();
        });
        //Form Data in Table
        $("#submitButton").click(function (event) {
            event.preventDefault();
            if (validateForm()) {
                debugger
                // Add data to the table
                var table = document.querySelector("#dataTable tbody");
                var row = table.insertRow(-1);
                var firstNameCell = row.insertCell(0);
                var lastNameCell = row.insertCell(1);
                var FatherNameCell = row.insertCell(2);
                var dobCell = row.insertCell(3);
                var genderCell = row.insertCell(4);
                var markCell = row.insertCell(5);
                var marksCell = row.insertCell(6);
                var CompletionCell = row.insertCell(7);
                var CompletionsCell = row.insertCell(8);
                var NativeCell = row.insertCell(9);
                var CodeCell = row.insertCell(10);
                var deptCell = row.insertCell(11);
                var secCell = row.insertCell(12);
                var ECACell = row.insertCell(13);
                var QuotaCell = row.insertCell(14);
                var PhoneCell = row.insertCell(15);
                var emailCell = row.insertCell(16);
                var EditCell = row.insertCell(17);
                var DeleteCell = row.insertCell(18);
                //Store the input values in table using table id by innerHTML
                firstNameCell.innerHTML = $("#fname").val();
                lastNameCell.innerHTML = $("#last").val();
                FatherNameCell.innerHTML = $("#FatherName").val();
                dobCell.innerHTML = $("#dob").val();
                genderCell.innerHTML = $('input[name=gender]:checked').val();
                markCell.innerHTML = $("#mark").val();
                marksCell.innerHTML = $("#marks").val();
                CompletionCell.innerHTML = $("#Completion").val();
                CompletionsCell.innerHTML = $("#Completions").val();
                NativeCell.innerHTML = $("#Native").val();
                CodeCell.innerHTML = $("#code").val();
                deptCell.innerHTML = $("#dept").val();
                secCell.innerHTML = $("#sec").val();
                ECACell.innerHTML = $("#ECA").val();
                var quotaValues = [];
                $("input[name='Quota']:checked").each(function () {
                    quotaValues.push($(this).val());
                });
                QuotaCell.innerHTML = quotaValues.join(", ");
                PhoneCell.innerHTML = $("#Phone").val();
                emailCell.innerHTML = $("#email").val();
                EditCell.innerHTML = `<a href="#" onclick="onEdit(this)" ><i class="fa fa-pencil"></i>Edit</a>`
                DeleteCell.innerHTML = `<a href="#" onclick="onDelete(this)" ><i class="fa fa-trash" ></i>Delete</a>`
                // Get all input value in an object
                var data = {
                    firstName: $("#fname").val(),
                    lastName: $("#last").val(),
                    FatherName: $("#FatherName").val(),
                    dob: $("#dob").val(),
                    gender: $("input[name='gender']:checked").val(),
                    mark: $("#mark").val(),
                    marks: $("#marks").val(),
                    Completion: $("#Completion").val(),
                    Completions: $("#Completions").val(),
                    Native: $("#Native").val(),
                    Code: $("#code").val(),
                    dept: $("#dept").val(),
                    sec: $("#sec").val(),
                    ECA: $("#ECA").val(),
                    Quota: quotaValues,
                    Phone: $("#Phone").val(),
                    email: $("#email").val()
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
                clearfields();
                //After submit modal will be closed
                $('#myModal').modal('hide');
            }
        });
        // Reset button click event handler
        $("#resetButton").click(function () {
            //Clear Input Field
            clearfields();
        });
        //CRUD(Edit)       
        function onEdit(td) {
            if (onclick = "onEdit(this)") {
                var row = td.parentElement.parentElement;
                var cells = row.getElementsByTagName("td");
                var fname = cells[0].innerText;
                Swal.fire({
                    title: 'Do you want to edit ' + fname + ' data?',
                    showDenyButton: true,
                    showCancelButton: true,
                    confirmButtonText: 'Yes',
                    denyButtonText: 'No',
                    customClass: {
                        actions: 'my-actions',
                        cancelButton: 'order-1 right-gap',
                        confirmButton: 'order-2',
                        denyButton: 'order-3',
                    }
                }).then((result) => {
                    if (result.isConfirmed) {
                        $("#btn-update").attr("hidden", false);
                        $("#btn-cancle").attr("hidden", false);
                        $("#submitButton").hide();
                        $("#resetButton").hide();
                        Swal.fire('Edited!', '', 'success')
                        var row = td.parentElement.parentElement;
                        var cells = row.getElementsByTagName("td");
                        $("#fname").val(cells[0].innerText);
                        $("#last").val(cells[1].innerText);
                        $("#FatherName").val(cells[2].innerText);
                        $("#dob").val(cells[3].innerText);
                        // Retrieve gender value from table cell and select the appropriate radio button
                        var genderValue = cells[4].innerText;
                        if (genderValue === 'male') {
                            $('#male').prop('checked', true);
                        } else if (genderValue === 'Female') {
                            $('#Female').prop('checked', true);
                        } else {
                            $('#Others').prop('checked', true);
                        }
                        $("#mark").val(cells[5].innerText);
                        $("#marks").val(cells[6].innerText);
                        $("#Completion").val(cells[7].innerText);
                        $("#Completions").val(cells[8].innerText);
                        var NativeData = cells[9].innerText;
                        $("#Native").val(NativeData).trigger('change');
                        $("#code").val(cells[10].innerText);
                        var deptData = cells[11].innerText;
                        $("#dept").val(deptData).trigger('change');
                        $("#sec").val(cells[12].innerText);
                        // Get the ECA dropdown element
                        var ecaDropdown = $("#ECA");
                        // Retrieve the ECA data from the table cell
                        var ecaValue = cells[13].innerText;
                        // Split the ECA data into an array of options
                        var ecaOptions = ecaValue.split(", ");
                        // Set the selected options in the ECA dropdown
                        ecaDropdown.val(ecaOptions);
                        // Trigger the change event on the ECA dropdown
                        ecaDropdown.trigger('change');
                        // Retrieve Quota value from table cell and select the appropriate checkbox value
                        var quotaValue = cells[14].innerText;
                        if (quotaValue.includes('Counselling')) {
                            $('#Counselling').prop('checked', true);
                        }
                        if (quotaValue.includes('Management')) {
                            $('#Management').prop('checked', true);
                        }
                        $("#Phone").val(cells[15].innerText);
                        $("#email").val(cells[16].innerText);
                    } else if (result.isDenied) {
                        Swal.fire('Data is not Edited', '', 'info')
                    }
                })
            }
        }
        //CRUD(Delete)
        function onDelete(td) {
            if (onclick = "onDelete(this)") {
                var row = td.parentElement.parentElement;
                var cells = row.getElementsByTagName("td");
                var fname = cells[0].innerText;
                Swal.fire({
                    title: 'Do you want to Delete ' + fname + ' data?',
                    showDenyButton: true,
                    showCancelButton: true,
                    confirmButtonText: 'Yes',
                    denyButtonText: 'No',
                    customClass: {
                        actions: 'my-actions',
                        cancelButton: 'order-1 right-gap',
                        confirmButton: 'order-2',
                        denyButton: 'order-3',
                    }
                }).then((result) => {
                    if (result.isConfirmed) {
                        Swal.fire('Deleted!', '', 'success')
                        row = td.parentElement.parentElement;
                        document.getElementById("dataTable").deleteRow(row.rowIndex);
                        resetForm();
                    } else if (result.isDenied) {
                        Swal.fire('Data is not deleted', '', 'info')
                    }
                })
            }
        }
        //update button
        $("#btn-update").click(function (event) {
            event.preventDefault();
            if (validateForm()) {
                // Get the input field values
                var firstName = document.getElementById("fname").value;
                var lastName = document.getElementById("last").value;
                var FatherName = document.getElementById("FatherName").value;
                var dob = document.getElementById("dob").value;
                var gender = document.querySelector('input[name="gender"]:checked').value;
                var SSLC = document.getElementById("mark").value;
                var HSC = document.getElementById("marks").value;
                var SSLC_passedout = document.getElementById("Completion").value;
                var HSC_passedout = document.getElementById("Completions").value;
                var Native = document.getElementById("Native").value;
                var pincode = document.getElementById("code").value;
                var department = document.getElementById("dept").value;
                var section = document.getElementById("sec").value;
                var ECA = [];
                var options = document.getElementById("ECA").options;
                for (var i = 0; i < options.length; i++) {
                    if (options[i].selected) {
                        ECA.push(options[i].value);
                    }
                }
                var quotaValues = [];
                $("input[name='Quota']:checked").each(function () {
                    quotaValues.push($(this).val());
                });
                var Phone = document.getElementById("Phone").value;
                var email = document.getElementById("email").value;
                // Update the data in the table row
                var table = document.getElementById("dataTable");
                var row = table.getElementsByTagName("tr")[1]; // assuming the first row is the header row
                var cell = row.getElementsByTagName("td")[0];
                cell.innerHTML = firstName;
                var cell = row.getElementsByTagName("td")[1];
                cell.innerHTML = lastName;
                var cell = row.getElementsByTagName("td")[2];
                cell.innerHTML = FatherName;
                var cell = row.getElementsByTagName("td")[3];
                cell.innerHTML = dob;
                var cell = row.getElementsByTagName("td")[4];
                cell.innerHTML = gender;
                var cell = row.getElementsByTagName("td")[5];
                cell.innerHTML = SSLC;
                var cell = row.getElementsByTagName("td")[6];
                cell.innerHTML = HSC;
                var cell = row.getElementsByTagName("td")[7];
                cell.innerHTML = SSLC_passedout;
                var cell = row.getElementsByTagName("td")[8];
                cell.innerHTML = HSC_passedout;
                var cell = row.getElementsByTagName("td")[9];
                cell.innerHTML = Native;
                var cell = row.getElementsByTagName("td")[10];
                cell.innerHTML = pincode;
                var cell = row.getElementsByTagName("td")[11];
                cell.innerHTML = department;
                var cell = row.getElementsByTagName("td")[12];
                cell.innerHTML = section;
                var cell = row.getElementsByTagName("td")[13];
                cell.innerHTML = ECA.join(", "); // join the array of ECA values with a comma and update the cell
                var cell = row.getElementsByTagName("td")[14];
                cell.innerHTML = quotaValues;
                var cell = row.getElementsByTagName("td")[15];
                cell.innerHTML = Phone;
                var cell = row.getElementsByTagName("td")[16];
                cell.innerHTML = email;
                //Clear Input Field
                clearfields();
                //After submit modal will be closed
                $('#myModal').modal('hide');
            }
        });
        $("#btn-cancle").click(function () {
            //Clear Input Field
            clearfields();
        });
        //LocalStorage
        function getdata() {
            //get the data from LocalStorage 
            var existingData = localStorage.getItem("dataTable");
            if (existingData) {
                existingData = JSON.parse(existingData);
                var table = document.querySelector("#dataTable tbody");
                for (var i = 0; i < existingData.length; i++) {
                    var row = table.insertRow(-1);
                    var firstNameCell = row.insertCell(0);
                    var lastNameCell = row.insertCell(1);
                    var FatherNameCell = row.insertCell(2);
                    var dobCell = row.insertCell(3);
                    var genderCell = row.insertCell(4);
                    var markCell = row.insertCell(5);
                    var marksCell = row.insertCell(6);
                    var CompletionCell = row.insertCell(7);
                    var CompletionsCell = row.insertCell(8);
                    var NativeCell = row.insertCell(9);
                    var CodeCell = row.insertCell(10);
                    var deptCell = row.insertCell(11);
                    var secCell = row.insertCell(12);
                    var ECACell = row.insertCell(13);
                    var QuotaCell = row.insertCell(14);
                    var PhoneCell = row.insertCell(15);
                    var emailCell = row.insertCell(16);
                    var EditCell = row.insertCell(17);
                    var DeleteCell = row.insertCell(18);
                    var intableCell = row.insertCell(19);
                    //store the values in the Cells using innerHTML
                    firstNameCell.innerHTML = existingData[i].firstName;
                    lastNameCell.innerHTML = existingData[i].lastName;
                    FatherNameCell.innerHTML = existingData[i].FatherName;
                    dobCell.innerHTML = existingData[i].dob;
                    genderCell.innerHTML = existingData[i].gender;
                    markCell.innerHTML = existingData[i].mark;
                    marksCell.innerHTML = existingData[i].marks;
                    CompletionCell.innerHTML = existingData[i].Completion;
                    CompletionsCell.innerHTML = existingData[i].Completions;
                    NativeCell.innerHTML = existingData[i].Native;
                    CodeCell.innerHTML = existingData[i].Code;
                    deptCell.innerHTML = existingData[i].dept;
                    secCell.innerHTML = existingData[i].sec;
                    ECACell.innerHTML = existingData[i].ECA;
                    QuotaCell.innerHTML = existingData[i].Quota.join(", ");
                    PhoneCell.innerHTML = existingData[i].Phone;
                    emailCell.innerHTML = existingData[i].email;
                    EditCell.innerHTML = `<a href="#" onclick="onEdit(this)" ><i class="fa fa-pencil"></i>Edit</a>`
                    DeleteCell.innerHTML = `<a href="#" onclick="onDelete(this)" ><i class="fa fa-trash" ></i>Delete</a>`
                    intableCell.innerHTML = `<a href="#" onclick="intable(this)"><i class="fa fa-table"></i>InTable</a>`
                }
            }
        }
    </script>
</body>
</html>