<?php include 'config.php'; ?>
<?php include 'crm_userauth.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>

<style type="text/css">
    .formbox {
        width: 800px;
        display: block;
        text-align: left;
        background-color: white;
        box-shadow: 0px 0px 14px -8px rgba(115, 109, 115, 0.67);
        padding: 5%;
        margin: auto;
    }

    .btns {
        width: 100%;
    }

    li {
        list-style-type: none;
    }

    /*.formboxouter{
   background-color: red;
   width: 100%;
   height: 100%;
   padding: 5%;
   }*/
</style>
<div class="formboxouter">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="formbox">
                    <form action="./submitsupport.php" method="POST">
                        <input type="hidden" name="createdBy" value="<?php echo $_SESSION['email'] ?>">
                        <h3 style="text-align: center;">Please Enter Details.</h3>
                        <div class="form-group">
                            <input type="text" class="form-control company" name="serialno" id="serialno" placeholder="Serial no">
                        </div>

                        <div class="form-group row">
                            <div class="col-xs-6">
                                <input required="ture" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" type="number" maxlength="10" class="form-control" name="mobile" id="mobile" placeholder="Mobile Number">
                            </div>
                            <div class="col-xs-6">
                                <input required="ture" type="text" class="form-control" name="contactPerson" id="contactPerson" placeholder="Contact Person Name">
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-xs-6">
                                <input required="ture" type="text" class="form-control" name="customer" id="customer" placeholder="Customer">
                            </div>
                            <div class="col-xs-6">
                                <input type="text" class="form-control" name="designation" id="designation" placeholder="Designation">
                            </div>

                        </div>

                        <div class="form-group row">
                            <div class="col-xs-6">
                                <input type="text" class="form-control" name="address" id="address" placeholder="Address">
                            </div>
                            <div class="col-xs-6">
                                <input type="text" class="form-control" name="email" id="email" placeholder="Email">
                            </div>
                        </div>



                        <div class="form-group row">
                            <div class="col-xs-3">
                                <input type="text" class="form-control" name="dealer" id="dealer" placeholder="Dealer">
                            </div>
                            <div class="col-xs-3">
                                <input type="text" class="form-control" name="supportType" id="supportType" placeholder="Support Type">
                            </div>
                            <div class="col-xs-6">
                                <input type="text" class="form-control" name="callDetails" id="callDetails" placeholder="Call Details">
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-xs-6">
                                <input type="text" class="form-control" name="ref" id="ref" placeholder="Reference">
                            </div>
                            <div class="col-xs-6">
                                <input type="text" class="form-control" name="remarks" id="remarks" placeholder="Remarks">
                            </div>

                        </div>
                        <div class="form-group row">
                            <div class="col-xs-6">
                                <input type="text" class="form-control" name="av" id="av" placeholder="AV">
                            </div>
                            <div class="col-xs-6">
                                <input type="text" class="form-control" name="users" id="users" placeholder="Users">
                            </div>

                        </div>
                        <div class="form-group row">
                            <div class="col-xs-4">
                                <label for="">FGT</label>
                                <input type="date" class="form-control" name="fgt" id="fgt" placeholder="FGT">
                            </div>
                            <div class="col-xs-4">
                                <label for="">Expiry</label>
                                <input type="date" class="form-control" name="expiry" id="expiry" placeholder="Expiry">
                            </div>
                            <div class="col-xs-4">
                                <label for="">Support Date</label>
                                <input type="date" class="form-control" name="date" id="date" placeholder="FGT">
                            </div>
                        </div>

                        <button type="submit" name="submit" class="btn btns">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<link href='jquery-ui.min.css' type='text/css' rel='stylesheet'>
<script src="jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="jquery-ui.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function() {

       

    });
</script>
<?php include 'footer.php'; ?>