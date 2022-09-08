<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>

<?php
$filepath = "";
if (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on') {
    $filepath = "https://" . $_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']);
} else {
    $filepath = "http://" . $_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']);
}
?>


<?php
if (isset($_SESSION['status']) && $_SESSION['status'] != '') { ?>
    <script>
        swal({
            title: "<?php echo $_SESSION['status'] ?>",
            text: "Support has been added!",
            icon: "<?php echo $_SESSION['status_code'] ?>",
            button: "Ok",
        });
    </script>
<?php
    unset($_SESSION['status']);
    unset($_SESSION['status_code']);
} else if ($_SESSION['status_code'] == 'error') { ?>
    <script>
        swal({
            title: "<?php echo $_SESSION['status'] ?>",
            text: "Dealer Not added!",
            icon: "<?php echo $_SESSION['status_code'] ?>",
            button: "Ok",
        });
    </script>
<?php
    unset($_SESSION['status']);
    unset($_SESSION['status_code']);
}
?>

<style type="text/css">
    th:nth-child(2),
    td:nth-child(2) {
        left: 0px;

    }

    th:nth-child(3),
    td:nth-child(3) {
        left: 73px;

    }

    th:nth-child(4),
    td:nth-child(4) {
        left: 155px;

    }

    th:nth-child(2),
    th:nth-child(3),
    th:nth-child(4) {
        background-color: #0a1157;
        position: sticky;
        border: 1px solid white !important;
        z-index: 2;
    }

    td:nth-child(2),
    td:nth-child(3),
    td:nth-child(4) {
        position: sticky;
        background-color: white;
        z-index: 1;
    }

    table thead th {
        position: sticky;
        top: 0;
        color: white;
        z-index: 1;
        background: #0a1157;
    }
</style>
<div class="container-fluid">
    <div class="right-part">
        <div class="rightpartitle">
            <span class="acttitle">Support</span>
        </div>
        <br>
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <ul class="list-inline">
                        <li>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fas fa-search"></i></span>
                                <input type="text" id="myInput" class="form-control " placeholder="Search ..." />
                            </div>
                        </li>
                        <li>
                            <span class="recordcount"> </span>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- <div class="col-lg-6">

                <ul class="list-inline" style="text-align: right;">
                    <li>
                        <select class="form-control" id="offsets">
                            <option disabled value="">No of Rows.</option>
                            <option value="500000">All</option>
                            <option selected="true" value="20">20</option>
                            <option value="50">50</option>
                            <option value="100">100</option>
                            <option value="200">200</option>
                            <option value="500">500</option>
                        </select>
                    </li>
                    <li><button onclick="location.href = './addsupport.php';" type="button" id="addrecord" class="btn btns pull-left">Add Record <i class="fas fa-user-plus btnicons"></i></button></li>

                </ul>
            </div> -->
            <div class="col-lg-6">
                <ul class="list-inline" style="text-align: right;">

                    <li>
                        <!-- <div class="input-group"> -->
                        <select class="form-control" id="offsets">
                            <option disabled value="">No of Rows.</option>
                            <option value="500000">All</option>
                            <option selected="true" value="20">20</option>
                            <option value="50">50</option>
                            <option value="100">100</option>
                            <option value="200">200</option>
                            <option value="500">500</option>
                        </select>
                        <!-- </div> -->
                    </li>
                    <li><button onclick="location.href = './addsupport.php';" type="button" id="addrecord" class="btn btns ">Add Record <i class="fas fa-user-plus btnicons"></i></button></li>

                </ul>
            </div>
        </div>
        <!-- <br> -->


        <br>
        <div class="row">
            <div class="col-lg-12">
                <div class="outsidetable">
                    <table class="table table-fixed table-bordered" id="myTable">
                        <?php
                        $flimit = 20;
                        $session_email = $_SESSION['email'];
                        $url = $filepath . '/api/getsupport.php?email=' . $session_email . '&offsets='.$_COOKIE['supportOffset'];

                        $client = curl_init($url);
                        curl_setopt($client, CURLOPT_RETURNTRANSFER, true);
                        $response = curl_exec($client);
                        $product_data = json_decode($response, true);
                        $product_data = $product_data['data'];
                        $count = count($product_data);
                        $i = 0;
                        ?>
                        <thead>
                            <tr>
                                <th style="text-align: center;"><button style="padding: 1px 10px;" type="button" id="deleteall" class="btn btns"><i class="fas fa-trash-alt"></i></button></th>
                                <th>S.no <span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Date<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Serial No<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Customer<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Contact Person<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Designation<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Mobile <span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Address<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Email<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Dealer<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Support Type<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Call Details<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Referance<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Remarks<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>FGT <span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>AV<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Users<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Expiry<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Created at<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Created by<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Updated at<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                                <th>Updated by<span class='sorticon'><i class="fas fa-sort"></i></span></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if (!$count) { ?>
                                <tr>
                                    <td colspan="15">No record found.</td>
                                </tr>
                            <?php }
                            while ($i < $count) {
                            ?>
                                <tr>
                                    <td class="acticonfirst">
                                        <ul class="list-inline">
                                            <li>
                                                <div class="form-check">
                                                    <input class="form-check-input delete_checkbox" type="checkbox" value="" id="<?php echo ($product_data[$i]["id"]) ?>">
                                                </div>
                                            </li>
                                        </ul>
                                    </td>

                                    <td><?php echo $i + 1 ?></td>
                                    <td><?php echo $product_data[$i]["date"] !== '0000-00-00 00:00:00.000000' ? date("Y-m-d", strtotime($product_data[$i]["date"])) : '-' ?></td>
                                    <td class="lasst"><?php echo ($product_data[$i]["serialno"]) ?></td>
                                    <td><?php echo $product_data[$i]['customer'] ?></td>
                                    <td><?php echo ($product_data[$i]["contactPerson"]) ?></td>
                                    <td><?php echo ($product_data[$i]["designation"]) ?></td>
                                    <td><?php echo ($product_data[$i]["mobile"]) ?></td>
                                    <td><?php echo $product_data[$i]['address'] ?></td>
                                    <td><?php echo ($product_data[$i]["email"]) ?></td>
                                    <td><?php echo ($product_data[$i]["dealer"]) ?></td>
                                    <td><?php echo ($product_data[$i]["supportType"]) ?></td>
                                    <td><?php echo ($product_data[$i]["callDetails"]) ?></td>
                                    <td><?php echo $product_data[$i]['ref'] ?></td>
                                    <td><?php echo ($product_data[$i]["remarks"]) ?></td>
                                    <td><?php echo $product_data[$i]["fgt"] !== '0000-00-00 00:00:00.000000' ? date("Y-m-d", strtotime($product_data[$i]["fgt"])) : '-' ?></td>
                                    <td><?php echo ($product_data[$i]["av"]) ?></td>
                                    <td><?php echo $product_data[$i]['users'] ?></td>
                                    <td><?php echo $product_data[$i]["expiry"] !== '0000-00-00 00:00:00.000000' ? date("Y-m-d", strtotime($product_data[$i]["expiry"])) : '-' ?></td>
                                    <td><?php echo $product_data[$i]["createdAt"] !== '0000-00-00 00:00:00.000000' ? date("Y-m-d", strtotime($product_data[$i]["createdAt"])) : '-' ?></td>
                                    <td><?php echo $product_data[$i]['createdBy'] ?></td>
                                    <td><?php echo $product_data[$i]["updatedAt"] !== '0000-00-00 00:00:00.000000' ? date("Y-m-d", strtotime($product_data[$i]["updatedAt"])) : '-' ?></td>
                                    <td><?php echo $product_data[$i]['updatedBy'] ?></td>
                                <?php
                                $i++;
                            }
                                ?>
                                </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>










<script>
    $("recordcount").hide();
    $(document).ready(function() {
        $("#advbutton").click(function() {
            $("#advsearch").slideToggle();
        });
    });

    $(document).ready(function() {
        function getCook(name) {
            var match = document.cookie.match(new RegExp('(^| )' + name + '=([^;]+)'));
            if (match) return match[2];
        }
            supportOffset = getCook('supportOffset');
          if (!supportOffset) {
             document.cookie = 'supportOffset=20';
          }
          $("select#offsets").val(getCook('supportOffset'));

        // alert(getCook('supportOffset'))
    });

    $(document).ready(function() {
        $("#offsets").change(function() {
            supportOffset = $(this).val();
            document.cookie = "supportOffset="+supportOffset;
            window.location.reload();
            return false;
        });

    });




    var cccc = 0;

    function filterTable(event) {
        var cccc = 0;
        var filter = event.target.value.toUpperCase();
        var rows = document.querySelector("#myTable tbody").rows;

        for (var i = 0; i < rows.length; i++) {
            var firstCol = rows[i].cells[0].textContent.toUpperCase();
            var secondCol = rows[i].cells[1].textContent.toUpperCase();
            var thirdCol = rows[i].cells[2].textContent.toUpperCase();
            var forthCol = rows[i].cells[3].textContent.toUpperCase();
            var fifth = rows[i].cells[4].textContent.toUpperCase();
            var sixth = rows[i].cells[5].textContent.toUpperCase();
            var seventh = rows[i].cells[6].textContent.toUpperCase();
            var eighth = rows[i].cells[7].textContent.toUpperCase();
            var ninth = rows[i].cells[8].textContent.toUpperCase();
            var tenth = rows[i].cells[9].textContent.toUpperCase();
            var eleventh = rows[i].cells[10].textContent.toUpperCase();
            var twelth = rows[i].cells[11].textContent.toUpperCase();
            var thirteen = rows[i].cells[12].textContent.toUpperCase();
            var forteen = rows[i].cells[16].textContent.toUpperCase();
            var fifteen = rows[i].cells[13].textContent.toUpperCase();
            var sexteen = rows[i].cells[14].textContent.toUpperCase();
            var seventeen = rows[i].cells[15].textContent.toUpperCase();

            if (firstCol.indexOf(filter) > -1 ||
                secondCol.indexOf(filter) > -1 ||
                thirdCol.indexOf(filter) > -1 ||
                forthCol.indexOf(filter) > -1 ||
                fifth.indexOf(filter) > -1 ||
                sixth.indexOf(filter) > -1 ||
                seventh.indexOf(filter) > -1 ||
                eighth.indexOf(filter) > -1 ||
                ninth.indexOf(filter) > -1 ||
                tenth.indexOf(filter) > -1 ||
                eleventh.indexOf(filter) > -1 ||
                twelth.indexOf(filter) > -1 ||
                thirteen.indexOf(filter) > -1 ||
                forteen.indexOf(filter) > -1 ||
                fifteen.indexOf(filter) > -1 ||
                sexteen.indexOf(filter) > -1 ||
                seventeen.indexOf(filter) > -1) {
                rows[i].style.display = "";
                cccc++;
            } else {
                rows[i].style.display = "none";
            }
        }
        console.log(cccc);
        $(".recordcount").fadeIn().html('Records:' + cccc);
    }

    document.querySelector('#myInput').addEventListener('keyup', filterTable, false);

    $(document).ready(function() {
        $(".delete_checkbox").hide();
        $("#deleteall").hide();
        $('#bulkdelete').click(function() {
            $(".delete_checkbox").fadeToggle();
            $("#deleteall").fadeToggle();
        });

        $('#deleteall').click(function() {

            var post_arr = [];

            // Get checked checkboxes
            $('#myTable .form-check input[type=checkbox]').each(function() {
                if ($(this).is(":checked")) {
                    var id = this.id;
                    var postid = id;
                    post_arr.push(postid);

                }
            });

            if (post_arr.length > 0) {
                var isDelete = confirm("Do you really want to delete records?");
                if (isDelete == true) {
                    // AJAX Request
                    $.ajax({
                        url: 'bulkdelete_dealer.php',
                        type: 'POST',
                        data: {
                            post_id: post_arr
                        },
                        success: function(response) {
                            location.reload();
                        }
                    });
                }
            } else {
                alert("Please select atleast one checkbox to Delete.");
            }
        });

    });


    $(document).ready(function() {

        $('.outsidetable').on('scroll', function() {
            var p = $("th:eq(2)").position();
            console.log(p.left);
            if (p.left > 140) {
                $("th:eq(3),th:eq(2),th:eq(1)").css("background-color", "#567AED");
                $(".lasst").addClass("shadow");
            } else {
                $("th:eq(3),th:eq(2),th:eq(1)").css("background-color", "#0a1157");
                $(".lasst").removeClass("shadow");
            }
        });
    });
</script>
<?php include 'footer.php'; ?>