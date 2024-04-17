 $(function() {

      $("#checkAll").click(function() {
         if ($("#checkAll").is(":checked")) {
            $("[name=order-checkbox]").prop("checked", true);
         } else {
            $("[name=order-checkbox]").prop("checked", false);

         }

      });
      $("[name=order-checkbox]")
            .click(
                  function() {
                     if ($("[name=order-checkbox]:checked").length === $("[name=order-checkbox]").length) {
                        $("#checkAll").prop("checked", true);
                     } else {
                        $("#checkAll").prop("checked", false);
                     }
                  });

      $(".plus").click(function() {
         var value = parseInt($(this).parent("div").find("input").val());
         $(this).parent("div").find("input").val(++value);

      });
      $(".minus").click(function() {
         var value = parseInt($(this).parent("div").find("input").val());
         if (value > 1) {

            $(this).parent("div").find("input").val(--value);
         }

      });

   });
