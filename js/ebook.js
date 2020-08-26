$(function() {
      $('#insert').click(function () {
            const mid = $('#mid').val();
            const bid = $('#bid').val();
            // $.ajax({
            //   type: "POST",
            //   url: "insert_log.php",
            //   data : {mid:mid, bid:bid},
            //         success: function(data){
            //           $("#mid").val("");
            //           $("#bid").val("");
            //         },
            // });
            // return false;

            console.log(mid);
            console.log(bid);
      });
});