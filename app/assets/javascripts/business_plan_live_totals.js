/* http://stackoverflow.com/a/11270819/1136307 */
Number.prototype.formatMoney = function(decPlaces, thouSeparator, decSeparator, currencySymbol) {
  var n = this,
  decPlaces = isNaN(decPlaces = Math.abs(decPlaces)) ? 2 : decPlaces,
  decSeparator = decSeparator == undefined ? "." : decSeparator,
  thouSeparator = thouSeparator == undefined ? "," : thouSeparator,
  currencySymbol = currencySymbol == undefined ? "$" : currencySymbol,
  sign = n < 0 ? "-" : "",
  i = parseInt(n = Math.abs(+n || 0).toFixed(decPlaces)) + "",
  j = (j = i.length) > 3 ? j % 3 : 0;
  return sign + currencySymbol + (j ? i.substr(0, j) + thouSeparator : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + thouSeparator) + (decPlaces ? decSeparator + Math.abs(n - i).toFixed(decPlaces).slice(2) : "");
};

String.prototype.formattedMoneyStrip = function() {
  var n = this;

  // Strip off dollar sign
  n = n.replace("$", "");
  // Strip off commas
  n = n.replace(/,/g, "");

  return n;
};

$(document).ready(function() {
  $("input").on("keyup", function() {
    updateTotals()
  })
  $("input").change(function() {
    updateTotals()
  })

  function updateTotals() {
    var page = $("#edit_user_1").attr("data-page");
    if(page == "last_year")
    {
      var page_prefix = "l"
    }
    else if(page == "next_year")
    {
      var page_prefix = "n"
    }

    $("#formula_cb").html(makeTotal(
      $("#user_"+page+"_attributes_"+page_prefix+"yckone").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"ycktwo").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yckthree").val()
    ))

    $("#formula_tb").html(makeTotal(
      $("#user_"+page+"_attributes_"+page_prefix+"ycoh").val(),
      $("#formula_cb").html()
    ))

    $("#formula_toa").html(makeTotal(
      $("#user_"+page+"_attributes_"+page_prefix+"ymma").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"ysti").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yada").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yer").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yer").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yi").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yi").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yuf").val()
    ))

    $("#formula_tfa").html(makeTotal(
      $("#user_"+page+"_attributes_"+page_prefix+"yfavt").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfadvt").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfaov").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfadov").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfaeo").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfadeo").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfafe").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfadfe").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfal").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfab").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfadb").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfali").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfadli").val()
    ))

    $("#formula_fr").html(makeTotal(
      $("#user_"+page+"_attributes_"+page_prefix+"yfraone").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfratwo").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfrathree").val()
    ))

    $("#formula_aaf").html(makeTotal(
      $("#user_"+page+"_attributes_"+page_prefix+"yaaaone").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yaaatwo").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yaaathree").val()
    ))

    $("#formula_toa2").html(makeTotal(
      $("#user_"+page+"_attributes_"+page_prefix+"ynrlt").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"ys").val(),
      $("#formula_fr").html(),
      $("#formula_aaf").html(),
      $("#user_"+page+"_attributes_"+page_prefix+"yoia").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yaaoi").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yoc").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yaaoc").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yd").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"ylti").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yoa").val()
    ))

    $("#formula_ta").html(makeTotal(
      $("#formula_tb").html(),
      $("#user_"+page+"_attributes_"+page_prefix+"yar").val(),
      $("#formula_toa").html(),
      $("#formula_tfa").html(),
      $("#formula_toa2").html()
    ))

    $("#formula_tap").html(makeTotal(
      $("#user_"+page+"_attributes_"+page_prefix+"yap").val()
    ))

    $("#formula_tcc").html(makeTotal(
      $("#user_"+page+"_attributes_"+page_prefix+"yccone").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"ycctwo").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yccthree").val()
    ))

    $("#formula_tocl").html(makeTotal(
      $("#user_"+page+"_attributes_"+page_prefix+"yalp").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yalc").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yalpt").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfica").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"ym").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yw").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yalwc").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yalst").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yalprt").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yalot").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yali").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yaldr").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"ycplt").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yol").val()
    ))

    $("#formula_nplt").html(makeTotal(
      $("#user_"+page+"_attributes_"+page_prefix+"yltlone").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yltltwo").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yltlthree").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yltlfour").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yltlfive").val()
    ))

    $("#formula_tltl").html(makeTotal(
      $("#formula_nplt").html(),
      $("#user_"+page+"_attributes_"+page_prefix+"ylcp").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yshl").val()
    ))

    $("#formula_tl").html(makeTotal(
      $("#formula_tap").html(),
      $("#formula_tcc").html(),
      $("#formula_tocl").html(),
      $("#formula_tltl").html()
    ))

    // Profit centers
    var indexes = new Array(0,1,2,3)
    $.each(indexes, function(index) {
      $("#formula_tsr_"+index).html(makeTotal(
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"yrs").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"yrao").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"yrsa").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"yrr").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"yrra").val()
      ))

      $("#formula_tsc_"+index).html(makeTotal(
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"ycs").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"ycao").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"ycsa").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"ycr").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"ycra").val()
      ))

      $("#formula_ts_"+index).html(makeTotal(
        $("#formula_tsr_"+index).html(),
        $("#formula_tsc_"+index).html()
      ))

      $("#formula_l_"+index).html(makeTotal(
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"yltl").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"yltc").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"ylptf").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"ylwci").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"yltb").val()
      ))

      $("#formula_o_"+index).html(makeTotal(
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"yvf").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"yvmr").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"yt").val()
      ))

      $("#formula_tcs_"+index).html(makeTotal(
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"ym").val(),
        $("#formula_l_"+index).html(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"ysc").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"yp").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"yw").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"ysct").val(),
        $("#formula_o_"+index).html(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"yfsf").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"yfnad").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_"+page+"_attributes_pc"+page_prefix+"ypd").val()
      ))

      $("#formula_gm_"+index).html(makeTotal(
        $("#formula_ts_"+index).html(),
        "-" + $("#formula_tcs_"+index).html()
      ))
    })
    // End profit centers

    $("#formula_s").html(makeTotal(
      $("#user_"+page+"_attributes_"+page_prefix+"yfeso").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfesm").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfesa").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfesop").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfess").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfest").val()
    ))

    $("#formula_a").html(makeTotal(
      $("#user_"+page+"_attributes_"+page_prefix+"yfeab").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfepr").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfecv").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfedv").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfedm").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfenm").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeec").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfehms").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeo").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeiss").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfesrv").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeys").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeyppo").val()
    ))

    $("#formula_v").html(makeTotal(
      $("#user_"+page+"_attributes_"+page_prefix+"yfevl").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfevrm").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfevi").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfevf").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfel").val()
    ))

    $("#formula_te2").html(makeTotal(
      $("#formula_s").html(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeb").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfept").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfewci").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeeb").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfehvp").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfet").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeth").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfer").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeu").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfebrm").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfetl").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeto").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfecp").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeli").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeli").val(),
      $("#formula_a").html(),
      $("#user_"+page+"_attributes_"+page_prefix+"yferr").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeos").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfep").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfepos").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeoel").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfefel").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeoerm").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfesd").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeulr").val(),
      $("#formula_v").html(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeaf").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfelf").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeeer").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeoser").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfece").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfebsc").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeds").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfec").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfebd").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfect").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeme").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfem").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeii").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfedtv").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfedtv").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeie").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfea").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfea").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yfeit").val()
    ))

    $("#formula_npbt").html(makeTotal(
      $(".formula_gm_\\{index\\}").html(),
      "-" + $("#formula_te2").html()
    ))

    $("#formula_obe").html(makeTotal(
      $("#formula_npbt").html()
    ))

    $("#formula_te").html(makeTotal(
      $("#user_"+page+"_attributes_"+page_prefix+"yecs").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yeoe").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yepc").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yedp").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yeow").val(),
      $("#user_"+page+"_attributes_"+page_prefix+"yere").val(),
      $("#formula_npbt").html()
    ))

    $("#formula_tle").html(makeTotal(
      $("#formula_tl").html(),
      $("#formula_te").html()
    ))

    $("#formula_nanp").html(makeTotal(
      $("#formula_npbt").html(),
      '-' + $("#user_"+page+"_attributes_"+page_prefix+"yfenone").val(),
      '-' + $("#user_"+page+"_attributes_"+page_prefix+"yfentwo").val()
    ))

    $("#formula_ea").html(makeTotal("percentage",
      $("#user_profit_centers_attributes_4_profit_center_"+page+"_attributes_expense_allocation").val(),
      $("#user_profit_centers_attributes_5_profit_center_"+page+"_attributes_expense_allocation").val(),
      $("#user_profit_centers_attributes_6_profit_center_"+page+"_attributes_expense_allocation").val(),
      $("#user_profit_centers_attributes_7_profit_center_"+page+"_attributes_expense_allocation").val()
    ))

    var indexes = new Array(4,5,6,7);
    $.each(indexes, function(index, element) {
      var percentage = parseFloat($("#user_profit_centers_attributes_"+element+"_profit_center_"+page+"_attributes_expense_allocation").val() / 100)

      var formulas = new Array(
        "s",
        "a",
        "v",
        "te2",
        "npbt",
        "nanp"
      )
      var elements = new Array(
        "feso",
        "fesm",
        "fesa",
        "fesop",
        "fess",
        "fest",
        "feb",
        "fept",
        "fewci",
        "feeb",
        "fehvp",
        "fet",
        "feth",
        "fer",
        "feu",
        "febrm",
        "fetl",
        "feto",
        "fecp",
        "feli",
        "feccsf",
        "feab",
        "fepr",
        "fecv",
        "fedv",
        "fedm",
        "fenm",
        "feec",
        "fehms",
        "feo",
        "feiss",
        "fesrv",
        "feys",
        "feyppo",
        "ferr",
        "feos",
        "fep",
        "fepos",
        "feoel",
        "fefel",
        "feoerm",
        "fesd",
        "feulr",
        "fevl",
        "fevrm",
        "fevi",
        "fevf",
        "fel",
        "feaf",
        "felf",
        "feeer",
        "feoser",
        "fece",
        "febsc",
        "feds",
        "fec",
        "febd",
        "fect",
        "feme",
        "fem",
        "feii",
        "fedtv",
        "feie",
        "fed",
        "fea",
        "feoe",
        "feit",
        "fenone",
        "fentwo"
      )

      $.each(formulas, function(i, formula) {
        if($("#formula_"+formula).html())
        {
          $("#formula_"+formula+"_"+index).html(makeTotal(
            parseFloat($("#formula_"+formula).html().formattedMoneyStrip()) * percentage
          ))
        }
      })

      $.each(elements, function(i, element) {
        $("#formula_"+element+"_"+index).html(makeTotal(
          parseFloat($("#user_"+page+"_attributes_"+page_prefix+"y"+element).val()) * percentage
        ))
      })
    })

    //Totals
    $("[for=formula_total]").each(function(index, x) {
      $(this).html(makeTotal(
        $("#" + $(this).attr("id").replace("{index}", "0")).val(),
        $("#" + $(this).attr("id").replace("{index}", "1")).val(),
        $("#" + $(this).attr("id").replace("{index}", "2")).val(),
        $("#" + $(this).attr("id").replace("{index}", "3")).val(),

        $("#" + $(this).attr("id").replace("{index}", "0")).html(),
        $("#" + $(this).attr("id").replace("{index}", "1")).html(),
        $("#" + $(this).attr("id").replace("{index}", "2")).html(),
        $("#" + $(this).attr("id").replace("{index}", "3")).html()
      ))
    })
    //End Totals

    // Percentages
    var indexes = new Array(0,1,2,3,"\\{index\\}");
    $.each(indexes, function(index, element) {
      var totals = {
        ts: {
          formulas: new Array(
            "tsr",
            "tsc",
            "ts",
            "l",
            "o",
            "tcs",
            "gm",

            "s",
            "feso",
            "fesm",
            "fesa",
            "fesop",
            "fess",
            "fest",
            "feb",
            "fept",
            "fewci",
            "feeb",
            "fehvp",
            "fet",
            "feth",
            "fer",
            "feu",
            "febrm",
            "fetl",
            "feto",
            "fecp",
            "feli",
            "feccsf",
            "a",
            "feab",
            "fepr",
            "fecv",
            "fedv",
            "fedm",
            "fenm",
            "feec",
            "fehms",
            "feo",
            "feiss",
            "fesrv",
            "feys",
            "feyppo",
            "ferr",
            "feos",
            "fep",
            "fepos",
            "feoel",
            "fefel",
            "feoerm",
            "fesd",
            "feulr",
            "v",
            "fevl",
            "fevrm",
            "fevi",
            "fevf",
            "fel",
            "feaf",
            "felf",
            "feeer",
            "feoser",
            "fece",
            "febsc",
            "feds",
            "fec",
            "febd",
            "fect",
            "feme",
            "fem",
            "feii",
            "fedtv",
            "feie",
            "fed",
            "fea",
            "feoe",
            "feit",
            "te2",
            "npbt",
            "fenone",
            "fentwo",
            "nanp"
          ),
          elements: new Array(
            "rs",
            "rao",
            "rsa",
            "rr",
            "rra",
            "cs",
            "cao",
            "csa",
            "cr",
            "cra",
            "m",
            "ltl",
            "ltc",
            "lptf",
            "lwci",
            "ltb",
            "sc",
            "p",
            "w",
            "sct",
            "vf",
            "vmr",
            "t",
            "fsf",
            "fnad",
            "pd"
          )
        },

      }

      $.each(totals, function(tindex, telement) {
        var total = $("#formula_"+tindex+"_"+element).html()
        if(total)
        {
          total = parseFloat(total.formattedMoneyStrip())
        }

        $.each(telement.formulas, function(tfindex, tfelement) {
          if($("#formula_"+tfelement+"_"+element).length != 0)
          {
            var e = $("#formula_"+tfelement+"_"+element)
          }
          else if($("#formula_"+tfelement).length != 0)
          {
            var e = $("#formula_"+tfelement)
          }
          else if($("#user_"+page+"_attributes_"+page_prefix+"y"+tfelement).length != 0)
          {
            var e = $("#user_"+page+"_attributes_"+page_prefix+"y"+tfelement)
          }

          if(e)
          {
            var q = parseFloat(e.val()) / total * 100
            if(isNaN(q))
            {
              q = parseFloat(e.html().formattedMoneyStrip()) / total * 100
            }
            $("#percentage_"+tfelement+"_"+index).html(makeTotal("percentage",
              q
            ))
          }
        })

        $.each(telement.elements, function(teindex, teelement) {
          var num = parseFloat($("#user_profit_centers_attributes_"+element+"_profit_center_"+page+"_attributes_pc"+page_prefix+"y"+teelement).val()) / total * 100;
          if(isNaN(num))
          {
            var val = $("#user_profit_centers_attributes_"+element+"_profit_center_"+page+"_attributes_pc"+page_prefix+"y"+teelement).html()

            if(val)
            {
              num = parseFloat(val.formattedMoneyStrip()) / total * 100
            }
          }

          $("#percentage_"+teelement+"_"+index).html(makeTotal("percentage",
            num
          ))
        })
      })
    })
    // End percentages

    // NY reverse percentages
    var indexes = new Array(0,1,2,3);
    for(index in indexes)
    {
      var total = $("#formula_ts_"+index).html()
      if(total)
      {
        total = parseFloat(total.formattedMoneyStrip())
      }
      var elements = new Array(
        "rs",
        "rao",
        "rsa",
        "rr",
        "rra",
        "cs",
        "cao",
        "csa",
        "cr",
        "cra",
        "m",
        "ltl",
        "ltc",
        "lptf",
        "lwci",
        "ltb",
        "sc",
        "p",
        "w",
        "sct",
        "vf",
        "vmr",
        "t",
        "fsf",
        "fnad",
        "pd"
      )

      for(element in elements)
      {
        $("#nytotal_"+elements[element]+"_"+index).html(makeTotal(
          total * ($("#user_profit_centers_attributes_"+index+"_profit_center_next_year_attributes_pcny"+elements[element]).val()/100)
        ))
      }
    }
    // End NY reverse percentages
  }
  updateTotals()

  function makeTotal() {
    var total = 0;
    // Go through all arguments
    for(var i=0; i<arguments.length; ++i)
    {
      // If argument isn't nil
      if(arguments[i] != '' && arguments[i] != undefined && arguments[i] != "percentage")
      {
        // Add to total
        total += parseFloat(arguments[i].toString().formattedMoneyStrip());
      }
    }

    if(arguments[0] == "percentage")
    {
      if(total == Infinity || total == -Infinity)
      {
        return "0.0%"
      }
      else
      {
        return total.formatMoney(1, ",", ".", "") + "%";
      }
    }
    else
    {
      return total.formatMoney();
    }
  }
})