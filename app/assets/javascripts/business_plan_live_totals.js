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

$(document).ready(function() {
  $("input").on("keyup", function() {
    updateTotals()
  })
  $("input").change(function() {
    updateTotals()
  })

  function updateTotals() {
    $("#formula_cb").html(makeTotal(
      $("#user_last_year_attributes_lyckone").val(),
      $("#user_last_year_attributes_lycktwo").val(),
      $("#user_last_year_attributes_lyckthree").val()
    ))

    $("#formula_tb").html(makeTotal(
      $("#user_last_year_attributes_lycoh").val(),
      $("#formula_cb").html()
    ))

    $("#formula_toa").html(makeTotal(
      $("#user_last_year_attributes_lymma").val(),
      $("#user_last_year_attributes_lysti").val(),
      $("#user_last_year_attributes_lyada").val(),
      $("#user_last_year_attributes_lyer").val(),
      $("#user_last_year_attributes_lyer").val(),
      $("#user_last_year_attributes_lyi").val(),
      $("#user_last_year_attributes_lyi").val(),
      $("#user_last_year_attributes_lyuf").val()
    ))

    $("#formula_tfa").html(makeTotal(
      $("#user_last_year_attributes_lyfavt").val(),
      $("#user_last_year_attributes_lyfadvt").val(),
      $("#user_last_year_attributes_lyfaov").val(),
      $("#user_last_year_attributes_lyfadov").val(),
      $("#user_last_year_attributes_lyfaeo").val(),
      $("#user_last_year_attributes_lyfadeo").val(),
      $("#user_last_year_attributes_lyfafe").val(),
      $("#user_last_year_attributes_lyfadfe").val(),
      $("#user_last_year_attributes_lyfal").val(),
      $("#user_last_year_attributes_lyfab").val(),
      $("#user_last_year_attributes_lyfadb").val(),
      $("#user_last_year_attributes_lyfali").val(),
      $("#user_last_year_attributes_lyfadli").val()
    ))

    $("#formula_fr").html(makeTotal(
      $("#user_last_year_attributes_lyfraone").val(),
      $("#user_last_year_attributes_lyfratwo").val(),
      $("#user_last_year_attributes_lyfrathree").val()
    ))

    $("#formula_aaf").html(makeTotal(
      $("#user_last_year_attributes_lyaaaone").val(),
      $("#user_last_year_attributes_lyaaatwo").val(),
      $("#user_last_year_attributes_lyaaathree").val()
    ))

    $("#formula_toa2").html(makeTotal(
      $("#user_last_year_attributes_lynrlt").val(),
      $("#user_last_year_attributes_lys").val(),
      $("#formula_fr").html(),
      $("#formula_aaf").html(),
      $("#user_last_year_attributes_lyoia").val(),
      $("#user_last_year_attributes_lyaaoi").val(),
      $("#user_last_year_attributes_lyoc").val(),
      $("#user_last_year_attributes_lyaaoc").val(),
      $("#user_last_year_attributes_lyd").val(),
      $("#user_last_year_attributes_lylti").val(),
      $("#user_last_year_attributes_lyoa").val()
    ))

    $("#formula_ta").html(makeTotal(
      $("#formula_tb").html(),
      $("#user_last_year_attributes_lyar").val(),
      $("#formula_toa").html(),
      $("#formula_tfa").html(),
      $("#formula_toa2").html()
    ))

    $("#formula_tap").html(makeTotal(
      $("#user_last_year_attributes_lyap").val()
    ))

    $("#formula_tcc").html(makeTotal(
      $("#user_last_year_attributes_lyccone").val(),
      $("#user_last_year_attributes_lycctwo").val(),
      $("#user_last_year_attributes_lyccthree").val()
    ))

    $("#formula_tocl").html(makeTotal(
      $("#user_last_year_attributes_lyalp").val(),
      $("#user_last_year_attributes_lyalc").val(),
      $("#user_last_year_attributes_lyalpt").val(),
      $("#user_last_year_attributes_lyfica").val(),
      $("#user_last_year_attributes_lym").val(),
      $("#user_last_year_attributes_lyw").val(),
      $("#user_last_year_attributes_lyalwc").val(),
      $("#user_last_year_attributes_lyalst").val(),
      $("#user_last_year_attributes_lyalprt").val(),
      $("#user_last_year_attributes_lyalot").val(),
      $("#user_last_year_attributes_lyali").val(),
      $("#user_last_year_attributes_lyaldr").val(),
      $("#user_last_year_attributes_lycplt").val(),
      $("#user_last_year_attributes_lyol").val()
    ))

    $("#formula_nplt").html(makeTotal(
      $("#user_last_year_attributes_lyltlone").val(),
      $("#user_last_year_attributes_lyltltwo").val(),
      $("#user_last_year_attributes_lyltlthree").val(),
      $("#user_last_year_attributes_lyltlfour").val(),
      $("#user_last_year_attributes_lyltlfive").val()
    ))

    $("#formula_tltl").html(makeTotal(
      $("#formula_nplt").html(),
      $("#user_last_year_attributes_lylcp").val(),
      $("#user_last_year_attributes_lyshl").val()
    ))

    $("#formula_tl").html(makeTotal(
      $("#formula_tap").html(),
      $("#formula_tcc").html(),
      $("#formula_tocl").html(),
      $("#formula_tltl").html()
    ))

    $("#formula_npbt").html(makeTotal(
      // Needed
    ))

    $("#formula_obe").html(makeTotal(
      $("#formula_npbt").val()
    ))

    $("#formula_te").html(makeTotal(
      $("#user_last_year_attributes_lyecs").val(),
      $("#user_last_year_attributes_lyeoe").val(),
      $("#user_last_year_attributes_lyepc").val(),
      $("#user_last_year_attributes_lyedp").val(),
      $("#user_last_year_attributes_lyeow").val(),
      $("#user_last_year_attributes_lyere").val(),
      $("#formula_npbt").html()
    ))

    $("#formula_tle").html(makeTotal(
      $("#formula_tl").html(),
      $("#formula_te").html()
    ))

    // Profit centers
    var indexes = new Array(0,1,2,3)
    $.each(indexes, function(index) {
      $("#formula_tsr_"+index).html(makeTotal(
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclyrs").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclyrao").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclyrsa").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclyrr").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclyrra").val()
      ))

      $("#formula_tsc_"+index).html(makeTotal(
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclycs").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclycao").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclycsa").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclycr").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclycra").val()
      ))

      $("#formula_ts_"+index).html(makeTotal(
        $("#formula_tsr_"+index).html(),
        $("#formula_tsc_"+index).html()
      ))

      $("#formula_l_"+index).html(makeTotal(
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclyltl").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclyltc").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclylptf").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclylwci").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclyltb").val()
      ))

      $("#formula_o_"+index).html(makeTotal(
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclyvf").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclyvmr").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclyt").val()
      ))

      $("#formula_tcs_"+index).html(makeTotal(
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclym").val(),
        $("#formula_l_"+index).html(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclysc").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclyp").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclyw").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclysct").val(),
        $("#formula_o_"+index).html(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclyfsf").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclyfnad").val(),
        $("#user_profit_centers_attributes_"+index+"_profit_center_last_year_attributes_pclypd").val()
      ))

      $("#formula_gm_"+index).html(makeTotal(
        $("#formula_ts_"+index).html(),
        "-" + $("#formula_tcs_"+index).html()
      ))
    })
    // End profit centers

    $("#formula_s").html(makeTotal(
      $("#user_last_year_attributes_lyfeso").val(),
      $("#user_last_year_attributes_lyfesm").val(),
      $("#user_last_year_attributes_lyfesa").val(),
      $("#user_last_year_attributes_lyfesop").val(),
      $("#user_last_year_attributes_lyfess").val(),
      $("#user_last_year_attributes_lyfest").val()
    ))

    $("#formula_a").html(makeTotal(
      $("#user_last_year_attributes_lyfeab").val(),
      $("#user_last_year_attributes_lyfepr").val(),
      $("#user_last_year_attributes_lyfecv").val(),
      $("#user_last_year_attributes_lyfedv").val(),
      $("#user_last_year_attributes_lyfedm").val(),
      $("#user_last_year_attributes_lyfenm").val(),
      $("#user_last_year_attributes_lyfeec").val(),
      $("#user_last_year_attributes_lyfehms").val(),
      $("#user_last_year_attributes_lyfeo").val(),
      $("#user_last_year_attributes_lyfeiss").val(),
      $("#user_last_year_attributes_lyfesrv").val(),
      $("#user_last_year_attributes_lyfeys").val(),
      $("#user_last_year_attributes_lyfeyppo").val()
    ))

    $("#formula_v").html(makeTotal(
      $("#user_last_year_attributes_lyfevl").val(),
      $("#user_last_year_attributes_lyfevrm").val(),
      $("#user_last_year_attributes_lyfevi").val(),
      $("#user_last_year_attributes_lyfevf").val(),
      $("#user_last_year_attributes_lyfel").val()
    ))

    $("#formula_te2").html(makeTotal(
      $("#formula_s").html(),
      $("#user_last_year_attributes_lyfeb").val(),
      $("#user_last_year_attributes_lyfept").val(),
      $("#user_last_year_attributes_lyfewci").val(),
      $("#user_last_year_attributes_lyfeeb").val(),
      $("#user_last_year_attributes_lyfehvp").val(),
      $("#user_last_year_attributes_lyfet").val(),
      $("#user_last_year_attributes_lyfeth").val(),
      $("#user_last_year_attributes_lyfer").val(),
      $("#user_last_year_attributes_lyfeu").val(),
      $("#user_last_year_attributes_lyfebrm").val(),
      $("#user_last_year_attributes_lyfetl").val(),
      $("#user_last_year_attributes_lyfeto").val(),
      $("#user_last_year_attributes_lyfecp").val(),
      $("#user_last_year_attributes_lyfeli").val(),
      $("#user_last_year_attributes_lyfeli").val(),
      $("#formula_a").html(),
      $("#user_last_year_attributes_lyferr").val(),
      $("#user_last_year_attributes_lyfeos").val(),
      $("#user_last_year_attributes_lyfep").val(),
      $("#user_last_year_attributes_lyfepos").val(),
      $("#user_last_year_attributes_lyfeoel").val(),
      $("#user_last_year_attributes_lyfefel").val(),
      $("#user_last_year_attributes_lyfeoerm").val(),
      $("#user_last_year_attributes_lyfesd").val(),
      $("#user_last_year_attributes_lyfeulr").val(),
      $("#formula_v").html(),
      $("#user_last_year_attributes_lyfeaf").val(),
      $("#user_last_year_attributes_lyfelf").val(),
      $("#user_last_year_attributes_lyfeeer").val(),
      $("#user_last_year_attributes_lyfeoser").val(),
      $("#user_last_year_attributes_lyfece").val(),
      $("#user_last_year_attributes_lyfebsc").val(),
      $("#user_last_year_attributes_lyfeds").val(),
      $("#user_last_year_attributes_lyfec").val(),
      $("#user_last_year_attributes_lyfebd").val(),
      $("#user_last_year_attributes_lyfect").val(),
      $("#user_last_year_attributes_lyfeme").val(),
      $("#user_last_year_attributes_lyfem").val(),
      $("#user_last_year_attributes_lyfeii").val(),
      $("#user_last_year_attributes_lyfedtv").val(),
      $("#user_last_year_attributes_lyfedtv").val(),
      $("#user_last_year_attributes_lyfeie").val(),
      $("#user_last_year_attributes_lyfea").val(),
      $("#user_last_year_attributes_lyfea").val(),
      $("#user_last_year_attributes_lyfeit").val()
    ))

    $("#formula_nanp").html(makeTotal(
      $("#formula_npbt").html(),
      '-' + $("#user_last_year_attributes_lyfenone").val(),
      '-' + $("#user_last_year_attributes_lyfentwo").val()
    ))

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
  }
  updateTotals()

  function makeTotal() {
    var total = 0;
    // Go through all arguments
    for(var i=0; i<arguments.length; ++i)
    {
      // If argument isn't nil
      if(arguments[i] != '' && arguments[i] != undefined)
      {
        // Strip off dollar sign
        arguments[i] = arguments[i].replace("$", "")
        // Strip off commas
        arguments[i] = arguments[i].replace(/,/g, "")

        // Add to total
        total += parseFloat(arguments[i]);
      }
    }

    return total.formatMoney();
  }
})