<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Portfolio.aspx.cs" Inherits="book2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width-device-width, initial-scale=1.0" />
    <title></title>
     <%--Latest compiled and minified CSS--%> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />

     <%--jQuery library--%> 
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>

     <%--Popper JS--%> 
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

     <%--Latest compiled JavaScript--%> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

   <%-- Font awesome --%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <%--Animation--%>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <style>
        :root{
           --background-color:darkslategray;
           --pink-color: #ff6a00;
           --second-color:#ffffff;
           --bg-color-of-list-section:#808080;
        }
        *{
            scroll-behavior:smooth;
        }
        body{
            background-color:var(--background-color) !important;
        }
        h1,h2,h3,h4,h5,h6,p,span,td,a{
            cursor:pointer;
        }
        span{
            color:var(--pink-color);
        }

        /* navigation bar animation effects*/
        .navbar-nav li a {
            color: aliceblue;
            font-size: 15px;
            transition: all 0.3s ease;
            margin-bottom: 0;
            position: relative;
        }

            .navbar-nav li a::before {
                content: '';
                position: absolute;
                width: 0%;
                height: 2px;
                bottom: -1px;
                left: 0;
                background-color: var(--pink-color);
                transition: all 0.3s ease;
            }

            .navbar-nav li a:hover {
                color: var(--pink-color);
                transform: translateY(-2px);
            }

                .navbar-nav li a:hover::before {
                    width: 100%;
                }
                /*hero section*/
                .hero_section .row{
                    display:flex;
                    align-content:center;
                    align-items:center;
                    height:100vh;
                }
                .hero_section .row h1,h2,h3,h4,p{
                    color:aquamarine;
                }
                .hero_section .row h3{
                    font-size:15px;
                    font-weight:500;
                    margin-bottom:3px;
                }
                   /* .hero_section .row h3::after {
                        content:"";
                        position:absolute;
                        text-align:center;
                        top:10px;
                        width:90px;
                        height:2px;
                        background-color:antiquewhite;
                        margin-left:6px;
                    }*/
                    .hero_section .row h1{
                        font-size:50px;
                        font-weight:800
                    }
                    .hero_section .row h2 {
                        font-size: 20px;
                        font-weight: 100;
                        margin: 8px 0px;
                    }
                    .hero_section .row p{
                        font-size:13px;
                        margin-top:13px;
                        line-height:21px;
                        color:var(--second-color);
                    }
                    .hero_section .row .btn{
                        border-radius:10px;
                        font-size: 19px;
                        color:black;
                        background-color:orangered;
                        border:3px solid;
                        width:113px;
                        margin-top:10px;
                    }
                        .hero_section .row .btn:hover {
                            animation: swing;
                            animation-duration: 0.5s;
                            background-color: orangered;
                            color: black;
                            border-color: black;
                        }
        img {
            border-radius: 50%; /* make the image round */
            border: 3px solid #ddd; /* add a border */
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.2); /* add a shadow */
            transition: all 0.3s ease-in-out; /* add a transition effect */
        }

            img:hover {
                transform: scale(1.1); /* add a scale effect on hover */
                box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.4); /* increase the shadow on hover */
            }

            @media (max-width:1200px) and (min-width:993px){
                .hero_section.row h1{
                    font-size:58px;

                }
            }

        @media (max-width:993px) and (min-width:763px) {
            .hero_section.row h1 {
                font-size: 42px;
            }

              .hero_section.row h2 {
                font-size: 15px;
            }
                .hero_section.row p {
                font-size: 11px;
            }
                  .hero_section.row h3 {
                font-size: 15px;
            }
                    .hero_section.row buton {
                font-size: 15px;
            }

        }
        @media (max-width:763px) and (min-width:500px) {
            .hero_section{
                margin:55px 0px;
            }
            .hero_section.row h1{
                font-size:46px;
                text-align:center;
            }
             .hero_section.row h2{
                font-size:15px;
                text-align:center;
            }
              .hero_section.row p{
                font-size:11px;
                text-align:center;
            }
                .hero_section.btn-container {
                    justify-content: center;
                    text-align: center;
                }
                .hero_section.row h3 {
                    font-size: 11px;
                    text-align: center;
                    margin-bottom: 0px;
                }
                .hero_section.row h3::after{
                    width:0px;
                }
                .hero_section.btn-container button{
                    width:100px;
                    height: 43px;
                    font-size: 15px;
                    text-align:center;
                
            }

        }


    </style>
</head>
<body>
    <%--navbar--%> 
    <div class="container" id="navbar">
        <div class="nav-section">
            <div class="navbar navbar-expand-lg navbar-light">
                <a href="#" class="navbar-brand text-white">PORT<span>FOLIO !</span>
                </a>
                <button class="navbar-toggler" style="border:none;" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <i class="fa fa-bars text-white"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="new-item active">
                            <a  class="nav-link" href="#hero" style="color:orangered !important">Home</a>
                        </li>
                         <li class="new-item active">
                            <a  class="nav-link" href="#hero">About</a>
                        </li>
                         <li class="new-item active">
                            <a  class="nav-link" href="#hero">Skills</a>
                        </li>
                         <li class="new-item active">
                            <a  class="nav-link" href="#hero">Portfolio</a>
                        </li>
                         <li class="new-item active">
                            <a  class="nav-link" href="#hero">Blog</a>
                        </li>
                         <li class="new-item active">
                            <a  class="nav-link" href="#hero">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <%--hero section--%>
    <div class="hero_section" id="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-ms-12 col-xs-12">
                    <div class="text-center">
                        <h3>Hello !</h3>
                        <h1>I<span>'</span>M GOVARDHAN</h1>
                        <h2>FRONT END DEVELOPER AND DESIGNER</h2>
                        <p style="text-align:justify;">
                            A creative and quick-thinking individual with a passion for brand awareness and customer engagement. Skilled in video editing and knowledge of basic
                            design tools. started the college's Instagram page to increase its social media presence. successfully built a community of 530+ followers in 20 days.
                            A detail-oriented person, ready to work in a fast-paced environment. I'm looking to start a career as an entry-level professional with a reputed IT company.
                        </p>
                        <div class="btn-container">
                            <button class="btn btn-light animate__animated">Hire Me</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-ms-12 col-xs-12">
                    <div class="text-center">
                        <div class="image-container" style="display: inline-block; margin-top: 20px; margin-right: 8px;">
                            <img src="https://pps.whatsapp.net/v/t61.24694-24/317756250_737220368076150_4760697755321634070_n.jpg?ccb=11-4&oh=01_AdRdRcZtbIdhhsBNeOV2NUs72WZCavJ9lF9Sdtattvlkgg&oe=63FF380B" style="width: 40%;" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
