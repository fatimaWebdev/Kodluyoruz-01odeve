<!DOCTYPE html>
<html lang="en">

<?php
session_start();
include("part/head.php");
?>

<body>
<?php
    include("part/header.php");
    ?>

  <!-- Cart Items -->
  <div class="container-md cart">
    <table>
      <tr>
        <th>Urunlar</th>
        <th> </th>
        <th>Ucret</th>
      </tr>
      <?php
        $total=0;
        if (isset($_SESSION['cart'])) {
          
          foreach ($_SESSION['cart'] as $key => $value) {
          
          $total=$total+$value['item_price']*$value['quantity'];

       ?>
      <!-- Product  -->
        <td>
          
              <p><?php echo $value['item_name'] ?></p>
              <span>$ <?php echo $value['item_price'] ?> </span>
              <br />
              <form action="cartRremov.php" method="POST">
                <button name="remove" style="color:red;  border: none;background-color:#ffffff;  cursor: pointer;"> Kaldir </button>
                <input type="hidden" name="item_name" value="<?php echo $value['item_name'] ?>">
              </form>
            </div>
          </div>
        </td>
        <td><input type="quantity" value="<?php echo $value['quantity'] ?>" min="1"></td>
        <td>$ <?php echo $value['item_price'] ?></td>
      </tr>
      <?php
          }
          }

      ?>   

    </table>

    <div class="total-price">
      <table>
        <tr>
          <td>total</td>
          <td> $ <?php echo $total ?></td>
        </tr>
       <!-- <tr>
          <td>Tax</td>
          <td>$50</td>
        </tr>
        <tr>
          <td>Total</td>
          <td>$250</td>
        </tr> -->
      </table>
     <!---- <a href="#" class="checkout btn">تابع عملية الدفع</a>---->
    </div>

  </div>




 

    <script type="text/javascript">
      $('.minus-btn').on('click', function(e) {
    		e.preventDefault();
    		var $this = $(this);
    		var $input = $this.closest('div').find('input');
    		var value = parseInt($input.val());

    		if (value > 1) {
    			value = value - 1;
    		} else {
    			value = 0;
    		}

        $input.val(value);

    	});

    	$('.plus-btn').on('click', function(e) {
    		e.preventDefault();
    		var $this = $(this);
    		var $input = $this.closest('div').find('input');
    		var value = parseInt($input.val());

    		if (value < 100) {
      		value = value + 1;
    		} else {
    			value =100;
    		}

    		$input.val(value);
    	});

      $('.like-btn').on('click', function() {
        $(this).toggleClass('is-active');
      });
    </script>


  <?php
  include("part/footer.php");
  ?>
</body>


</html>