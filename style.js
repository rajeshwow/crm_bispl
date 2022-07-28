$(document).ready(function () {
  $("#yearss").on("change", function (e) {
    var valueSelected = this.value;
    if (valueSelected == "All") {
      $("#quarter").prop("disabled", true);
    } else {
      $("#quarter").prop("disabled", false);
    }
  });
});
$(document).ready(function () {
  $("#clear").click(function () {
    location.reload();
  });
});
$(document).ready(function () {
  $("#advsearch").submit(function (e) {
    var selectedyear = $("#yearss").val() ? $("#yearss").val() : 'noval';
    var selectedquarter = $("#quarter").val() ? $("#quarter").val() : 'noval';
    var tableName = $("#table_name").val() ? $("#table_name").val() : 'all';
    console.log("ddddddddddddd",selectedyear,selectedquarter,tableName)
    e.preventDefault();
    renewalOffset = localStorage.getItem('renewalOffset');
      if (renewalOffset == null) {
         localStorage.setItem('renewalOffset', 20)
      }
    $.ajax({
      url: "getrenewaldata.php",
      type: "POST",
      data:
        "choosedyear=" +
        selectedyear +
        "&choosedquarter=" +
        selectedquarter +
        "&tableName=" +
        tableName +
        "&offsets=" +
        localStorage.getItem('renewalOffset'),
      success: function (data) {
        $("#tbodys").html(data);
      //   console.log("dddddddddddd",data)
        var table = document.getElementById("myTable");
        var tbodyRowCount = table.tBodies[0].rows.length; // 3
        document.getElementById("showttlrecord").innerHTML = tbodyRowCount;
      //   console.log(tbodyRowCount);
      //   alert(tbodyRowCount);
      },
    });
    return false;
  });
});

$(document).ready(function () {
  var acc = document.getElementsByClassName("accordionn");
  var i;
  var oldindex = 0;
  $(".accordionn").click(function (e) {
    e.preventDefault();

    var currentindex = $(".accordionn").index(this) + 1;

    var elems = document.getElementsByClassName("accordionn");
    for (var it of elems) {
      if (oldindex != currentindex) {
        it.nextElementSibling.style.maxHeight = null;
      }
    }
    var panel = this.nextElementSibling;

    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    }
    oldindex = currentindex;
  });
  // }
});
// --------------------------------------------------------- Update record
$(document).ready(function () {
  $(document).on("click", ".updaterecord", function () {
    var edit_id = $(this).attr("id");
    $.ajax({
      url: "edit_data_updaterecord.php",
      type: "POST",
      data: { edit_id: edit_id },
      success: function (data) {
        $("#info_updaterecord").html(data);
        $("#updaterecord").modal("show");
      },
    });
  });
  $(document).on("click", "#update_updaterecord", function () {
    $.ajax({
      url: "save_update_updaterecord.php",
      type: "POST",
      data: $("#updaterecordform").serialize(),
      success: function (data) {
        $("#updaterecord").modal("hide");
        setInterval("location.reload()", 1000);
      },
    });
  });
});
// --------------------------------------------------------- Delete record
$(document).ready(function () {
  $(document).on("click", ".deleterecord", function () {
    var edit_id = $(this).attr("id");
    $.ajax({
      url: "edit_data_deleterecord.php",
      type: "POST",
      data: { edit_id: edit_id },
      success: function (data) {
        $("#info_deleterecord").html(data);
        $("#deleterecord").modal("show");
      },
    });
  });
  $(document).on("click", "#update_deleterecord", function () {
    $.ajax({
      url: "save_update_deleterecord.php",
      type: "POST",
      data: $("#deleterecordform").serialize(),
      success: function (data) {
        $("#deleterecord").modal("hide");
        setInterval("location.reload()", 1000);
      },
    });
  });
});
//------------------------------------------- Quoted
$(document).ready(function () {
  $(document).on("click", ".quoted", function () {
    var edit_id = $(this).attr("id");
    $.ajax({
      url: "edit_data_quoted.php",
      type: "POST",
      data: { edit_id: edit_id },
      success: function (data) {
        $("#info_quote").html(data);
        $("#quotemodal").modal("show");
      },
    });
  });
  $(document).on("click", "#update_updaterecordss", function () {
    $.ajax({
      url: "save_quote.php",
      type: "POST",
      data: $("#quoteform").serialize(),
      success: function (data) {
        $("#quotemodal").modal("hide");
        setInterval("location.reload()", 1000);
      },
    });
  });
});
//-------------------------------------------

//------------------------------------------- Hold
$(document).ready(function () {
  $(document).on("click", ".hold", function () {
    var edit_id = $(this).attr("id");
    $.ajax({
      url: "edit_data_hold.php",
      type: "POST",
      data: { edit_id: edit_id },
      success: function (data) {
        $("#info_hold").html(data);
        $("#holdmodal").modal("show");
      },
    });
  });
  $(document).on("click", "#update_hold", function () {
    $.ajax({
      url: "save_hold.php",
      type: "POST",
      data: $("#holdform").serialize(),
      success: function (data) {
        $("#holdmodal").modal("hide");
        setInterval("location.reload()", 1000);
      },
    });
  });
});
//-------------------------------------------

$(document).ready(function () {
  $(document).on("click", ".mailicon", function () {
    var edit_id = $(this).attr("id");
    $.ajax({
      url: "edit_data_mail.php",
      type: "POST",
      data: { edit_id: edit_id },
      success: function (data) {
        $("#info_mail").html(data);
        $("#mailmodal").modal("show");
      },
    });
  });
  $(document).on("click", "#update_mail", function () {
    $.ajax({
      url: "save_update_mail.php",
      type: "POST",
      data: $("#mailform").serialize(),
      success: function (data) {
        $("#mailmodal").modal("hide");
        setInterval("location.reload()", 1000);
      },
    });
  });
});

$(document).ready(function () {
  $(document).on("click", ".upgrade", function () {
    var edit_id = $(this).attr("id");
    $.ajax({
      url: "edit_data_upgrade.php",
      type: "POST",
      data: { edit_id: edit_id },
      success: function (data) {
        $("#info_upgrade").html(data);
        $("#upgrade").modal("show");
      },
    });
  });

  // $("#update1").submit(function(e) {
  $("#upgradeform").submit(function (e) {
    e.preventDefault();
    var usernamess = $("#uname_response").text().trim();

    // alert((username === "Not Available."));

    if (
      usernamess === "Already Exist" ||
      usernamess === "" ||
      usernamess === null ||
      usernamess === undefined
    ) {
      $("#newserial").focus();
      $("#newserial").attr(
        "placeholder",
        "Enter Serial no : This is mandatory field !"
      );
      $("#newserial").attr("style", "border:1px solid red !important");
      $("#newserial").addClass(
        "animate__animated animate__shakeX animate__repeat-1 "
      );
    } else {
      $.ajax({
        url: "save_update_upgrade.php",
        type: "POST",
        data: $("#upgradeform").serialize(),
        success: function (data) {
          $("#upgrade").modal("hide");
          setInterval("location.reload()", 1000);
        },
      });
    }
    return false;
  });
});

$(document).ready(function () {
  $(document).on("click", ".lostandupgrade", function () {
    var edit_id = $(this).attr("id");
    $.ajax({
      url: "edit_data_lostandupgrade.php",
      type: "POST",
      data: { edit_id: edit_id },
      success: function (data) {
        $("#info_lostandupgrade").html(data);
        $("#lostandupgrademodel").modal("show");
      },
    });
  });
  $("#lostandupgradeform").submit(function (e) {
    e.preventDefault();
    var drpdown = $("#planyear").val();

    if (drpdown == "" || drpdown == null || drpdown == "undefined") {
      // console.log(drpdown);
      $("#planyear").focus();
      $("#planyear").attr("style", "border:1px solid red !important");
      $("#planyear").addClass(
        "animate__animated animate__shakeX animate__repeat-1 "
      );
    } else {
      $.ajax({
        url: "save_lostandupgrade.php",
        type: "POST",
        data: $("#lostandupgradeform").serialize(),
        success: function (data) {
          $("#lostandupgrademodel").modal("hide");
          setInterval("location.reload()", 1000);
        },
      });
    }

    return false;
  });
});

$(document).ready(function () {
  $(document).on("click", ".lostandrenew", function () {
    var edit_id = $(this).attr("id");
    $.ajax({
      url: "edit_data_lostandrenew.php",
      type: "POST",
      data: { edit_id: edit_id },
      success: function (data) {
        $("#info_lostandrenew").html(data);
        $("#lostandrenewmodel").modal("show");
      },
    });
  });
  $("#lostandrenewform").submit(function (e) {
    e.preventDefault();
    $.ajax({
      url: "save_lostandrenew.php",
      type: "POST",
      data: $("#lostandrenewform").serialize(),
      success: function (data) {
        $("#lostandrenewmodel").modal("hide");
        setInterval("location.reload()", 1000);
      },
    });
    return false;
  });
});
$(document).ready(function () {
  $(document).on("click", ".donotwanttorenew", function () {
    var edit_id = $(this).attr("id");
    $.ajax({
      url: "edit_data_donotwanttorenew.php",
      type: "POST",
      data: { edit_id: edit_id },
      success: function (data) {
        $("#info_donotwanttorenew").html(data);
        $("#donotwanttorenewmodel").modal("show");
      },
    });
  });
  $("#donotwanttorenewform").submit(function (e) {
    e.preventDefault();
    $.ajax({
      url: "save_donotwanttorenew.php",
      type: "POST",
      data: $("#donotwanttorenewform").serialize(),
      success: function (data) {
        $("#donotwanttorenewmodel").modal("hide");
        setInterval("location.reload()", 1000);
      },
    });
    return false;
  });
});

function BuildChart(labels, values, chartTitle) {
  var data = {
    labels: labels,
    datasets: [
      {
        label: chartTitle, // Name the series
        data: values,
        backgroundColor: "rgba(246, 247, 251, 0.7)",
        borderColor: "skyblue",
        //fill: false
      },
    ],
  };
  var ctx = document.getElementById("myChart").getContext("2d");
  var myChart = new Chart(ctx, {
    type: "line",
    data: data,
    options: {
      responsive: true, // Instruct chart JS to respond nicely.
      bezierCurve: true,
      tooltips: {
        mode: "index",
        intersect: false,
      },
      hover: {
        mode: "nearest",
        intersect: true,
      },

      maintainAspectRatio: false, // Add to prevent default behavior of full-width/height
      scales: {
        xAxes: [
          {
            scaleLabel: {
              display: true,
              // labelString: 'Date'
            },
            gridLines: {
              display: false,
            },
          },
        ],
        yAxes: [
          {
            scaleLabel: {
              display: true,

              // labelString: 'Renew Count'
            },
            gridLines: {
              // drawBorder: false,
              color: "#dedbd5",
            },

            ticks: {
              beginAtZero: true,
              padding: 30,
            },
          },
        ],
      },
    },
  });
  return myChart;
}

$(document).ready(function () {
  $('[data-toggle="tooltip"]').tooltip({
    container: "body",
  });
});

$(document).ready(function () {
  $(document).on("click", ".renew", function () {
    var edit_id = $(this).attr("id");
    $.ajax({
      url: "edit_data.php",
      type: "POST",
      data: { edit_id: edit_id },
      success: function (data) {
        $("#info_renew").html(data);
        $("#renew").modal("show");
      },
    });
  });
  $(document).on("click", "#update", function () {
    $.ajax({
      url: "save_update.php",
      type: "POST",
      data: $("#renewform").serialize(),
      success: function (data) {
        $("#renew").modal("hide");
        setInterval("location.reload()", 1000);
      },
    });
  });
});

$(document).ready(function () {
  $("#inedit").change(function () {
    if ($(this).prop("checked")) {
      $("#inview").prop("checked", true);
    } else {
    }
  });
  $("#inview").change(function () {
    if ($(this).prop("checked")) {
    } else {
      $("#inedit").prop("checked", false);
    }
  });
  $("#outedit").change(function () {
    if ($(this).prop("checked")) {
      $("#outview").prop("checked", true);
    } else {
    }
  });
  $("#outview").change(function () {
    if ($(this).prop("checked")) {
    } else {
      $("#outedit").prop("checked", false);
    }
  });

  //-----------------------------------------------------------------------------
  $("#product_name_edit").change(function () {
    if ($(this).prop("checked")) {
      $("#product_name_view").prop("checked", true);
    } else {
    }
  });
  $("#product_name_view").change(function () {
    if ($(this).prop("checked")) {
    } else {
      $("#product_name_edit").prop("checked", false);
    }
  });
  $("#users_edit").change(function () {
    if ($(this).prop("checked")) {
      $("#users_view").prop("checked", true);
    } else {
    }
  });
  $("#users_view").change(function () {
    if ($(this).prop("checked")) {
    } else {
      $("#users_edit").prop("checked", false);
    }
  });
  $("#remarks_edit").change(function () {
    if ($(this).prop("checked")) {
      $("#remarks_view").prop("checked", true);
    } else {
    }
  });
  $("#remarks_view").change(function () {
    if ($(this).prop("checked")) {
    } else {
      $("#remarks_edit").prop("checked", false);
    }
  });
  $("#expiry_date_edit").change(function () {
    if ($(this).prop("checked")) {
      $("#expiry_date_view").prop("checked", true);
    } else {
    }
  });
  $("#expiry_date_view").change(function () {
    if ($(this).prop("checked")) {
    } else {
      $("#expiry_date_edit").prop("checked", false);
    }
  });
  $("#company_edit").change(function () {
    if ($(this).prop("checked")) {
      $("#company_view").prop("checked", true);
    } else {
    }
  });
  $("#company_view").change(function () {
    if ($(this).prop("checked")) {
    } else {
      $("#company_edit").prop("checked", false);
    }
  });
  $("#contact_person_edit").change(function () {
    if ($(this).prop("checked")) {
      $("#contact_person_view").prop("checked", true);
    } else {
    }
  });
  $("#contact_person_view").change(function () {
    if ($(this).prop("checked")) {
    } else {
      $("#contact_person_edit").prop("checked", false);
    }
  });
  $("#mobile_edit").change(function () {
    if ($(this).prop("checked")) {
      $("#mobile_view").prop("checked", true);
    } else {
    }
  });
  $("#mobile_view").change(function () {
    if ($(this).prop("checked")) {
    } else {
      $("#mobile_edit").prop("checked", false);
    }
  });
  $("#email_edit").change(function () {
    if ($(this).prop("checked")) {
      $("#email_view").prop("checked", true);
    } else {
    }
  });
  $("#email_view").change(function () {
    if ($(this).prop("checked")) {
    } else {
      $("#email_edit").prop("checked", false);
    }
  });
  $("#dealer_edit").change(function () {
    if ($(this).prop("checked")) {
      $("#dealer_view").prop("checked", true);
    } else {
    }
  });
  $("#dealer_view").change(function () {
    if ($(this).prop("checked")) {
    } else {
      $("#dealer_edit").prop("checked", false);
    }
  });
  $("#quotedprice_edit").change(function () {
    if ($(this).prop("checked")) {
      $("#quotedprice_view").prop("checked", true);
    } else {
    }
  });
  $("#quotedprice_view").change(function () {
    if ($(this).prop("checked")) {
    } else {
      $("#quotedprice_edit").prop("checked", false);
    }
  });
  //-----------------------------------------------------------------------------
  $("#renewedit").change(function () {
    if ($(this).prop("checked")) {
      $("#renewview").prop("checked", true);
    } else {
    }
  });
  $("#renewview").change(function () {
    if ($(this).prop("checked")) {
    } else {
      $("#renewedit").prop("checked", false);
    }
  });
  $("#upgradeedit").change(function () {
    if ($(this).prop("checked")) {
      $("#upgradeview").prop("checked", true);
    } else {
    }
  });
  $("#upgradeview").change(function () {
    if ($(this).prop("checked")) {
    } else {
      $("#upgradeedit").prop("checked", false);
    }
  });
  $("#lostandrenewedit").change(function () {
    if ($(this).prop("checked")) {
      $("#lostandrenewview").prop("checked", true);
    } else {
    }
  });
  $("#lostandrenewview").change(function () {
    if ($(this).prop("checked")) {
    } else {
      $("#lostandrenewedit").prop("checked", false);
    }
  });
  $("#lostandupgradeedit").change(function () {
    if ($(this).prop("checked")) {
      $("#lostandupgradeview").prop("checked", true);
    } else {
    }
  });
  $("#lostandupgradeview").change(function () {
    if ($(this).prop("checked")) {
    } else {
      $("#lostandupgradeedit").prop("checked", false);
    }
  });

  $("#dontwanttorenewedit").change(function () {
    if ($(this).prop("checked")) {
      $("#dontwanttorenewview").prop("checked", true);
    } else {
    }
  });
  $("#dontwanttorenewview").change(function () {
    if ($(this).prop("checked")) {
    } else {
      $("#dontwanttorenewedit").prop("checked", false);
    }
  });
});

// Sort table all column
$(document).ready(function () {
  $("th").click(function () {
    var table = $(this).parents("table").eq(0);
    var rows = table
      .find("tr:gt(0)")
      .toArray()
      .sort(comparer($(this).index()));
    this.asc = !this.asc;
    if (!this.asc) {
      rows = rows.reverse();
    }
    for (var i = 0; i < rows.length; i++) {
      table.append(rows[i]);
    }
  });
  function comparer(index) {
    return function (a, b) {
      var valA = getCellValue(a, index),
        valB = getCellValue(b, index);
      return $.isNumeric(valA) && $.isNumeric(valB)
        ? valA - valB
        : valA.toString().localeCompare(valB);
    };
  }
  function getCellValue(row, index) {
    return $(row).children("td").eq(index).text();
  }
});
