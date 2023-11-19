<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.master" AutoEventWireup="true"
    CodeFile="Part4.aspx.cs" Inherits="pythonlearn_files_Part4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="https://code.responsivevoice.org/responsivevoice.js?key=m3W56MGf"></script>
    <script src="ReadAloud.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-md-12 grid-margin">
                <div class="row">
                    <div class="col-12 col-xl-12 mb-4 mb-xl-0">
                        <div class="card">
                            <div class="card-body">
                                <div class="col-md-12 grid-margin stretch-card">
                                    <div class="card">
                                        <div class="card-body">
                                            <button type="button" class="btn btn-primary" onclick="readAloud()">Read Aloud</button>
                                        </div>
                                        <div class="card-body">
                                            <a href="part3.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                    <i class="fa-solid fa-arrow-left" style="color: #000f;"></i>
                                                    Previous
                                                </button>
                                            </a>
                                            <a href="part1.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                    <i class="fa-solid fa-file" style="color: #000f;"></i>
                                                    Contents
                                                </button>
                                            </a>
                                            <a href="part5.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                                </button>
                                            </a>
                                            <div class="card-body" style="text-align: center;">
                                                <h2>1.2  Computer hardware architecture
                                                </h2>
                                            </div>



                                            <p style="text-indent: 0pt; text-align: center;">
                                                <span>
                                                    <img width="390" height="270" alt="image" src="../images/pythonimages/Image_004.png" /></span>
                                            </p>
                                            <div class="card-body">
                                                <p>
                                                    Before we start learning the language we speak to give instructions to computers
                                                    to develop software, we need to learn a small amount about how computers are built.
                                                    If you were to take apart your computer or cell phone and look deep inside, you
                                                    would find the following parts:
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <ul>
                                                    <li>The
    <span class="s5">Central Processing Unit </span>(or CPU) is the part of the computer that is built to be obsessed with “what
                                                is next?” If your computer is rated at 3.0 Gigahertz, it means that the CPU will
                                                ask “What next?” three billion times per second. You are going to have to learn
                                                how to talk fast to keep up with the CPU.</li>
                                                    <li>The
    <span class="s5">Main Memory </span>is used to store information that the CPU needs in a hurry. The main memory is nearly as
                                                fast as the CPU. But the information stored in the main memory vanishes when the
                                                computer is turned off.</li>
                                                    <li>The
    <span class="s5">Secondary Memory </span>is also used to store information, but it is much slower than the main memory. The
                                                advantage of the secondary memory is that it can store information even when there
                                                is no power to the computer. Examples of secondary memory are disk drives or flash
                                                memory (typically found in USB sticks and portable music players).</li>
                                                    <li>The
    <span class="s5">Input and Output Devices </span>are simply our screen, keyboard, mouse, mi- crophone, speaker, touchpad, etc.
                                                They are all of the ways we interact with the computer.</li>
                                                    <li>These days, most computers also have a
    <span class="s5">Network Connection </span>to retrieve information over a network. We can think of the network as a very slow
                                                place to store and retrieve data that might not always be “up”. So in a sense, the
                                                network is a slower and at times unreliable form of
    <span class="s5">Secondary Memory</span>.</li>
                                                </ul>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    While most of the detail of how these components work is best left to computer builders,
                                                    it helps to have some terminology so we can talk about these different parts as
                                                    we write our programs.
                                                </p>
                                            </div>
                                            <p style="text-indent: 0pt; text-align: center;">
                                                <span>
                                                    <img width="390" height="270" alt="image" src="../images/pythonimages/Image_005.png" /></span>
                                            </p>
                                            <div class="card-body">
                                                <p>
                                                    As a programmer, your job is to use and orchestrate each of these
                                                            resources to solve the problem that you need to solve and analyze the data
                                                    you get
                                                            from the solution. As a programmer you will mostly be “talking” to the CPU
                                                    and telling
                                                            it what to do next. Sometimes you will tell the CPU to use the main memory,
                                                    secondary
                                                            memory, network, or the input/output devices.
                                                </p>
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    You need to be the person who answers the CPU’s “What next?” question. But it would
                                                    be very uncomfortable to shrink you down to 5mm tall and insert you into the computer
                                                    just so you could issue a command three billion times per second. So instead, you
                                                    must write down your instructions in advance. We call these stored instructions
                                                    a
    <span class="s5">program </span>and the act of writing these instructions down and getting the instructions to be correct
    <span class="s5">programming</span>.
                                                </p>
                                            </div>
                                            <a href="part3.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                    <i class="fa-solid fa-arrow-left" style="color: #000f;"></i>
                                                    Previous
                                                </button>
                                            </a>
                                            <a href="part1.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                    <i class="fa-solid fa-file" style="color: #000f;"></i>
                                                    Contents
                                                </button>
                                            </a>
                                            <a href="part5.aspx">
                                                <button type="button" class="btn btn-outline-secondary btn-icon-text">
                                                    Next
                                     <i class="fa-solid fa-arrow-right" style="color: #000f;"></i>
                                                </button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

