<?php
	//include("./includes/session_check.php");
	include("./includes/connection.php");
?>
<script src="./js/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#duration").change(function(){
				if($("#duration").val()==1){
					$("#show_duration").html("<option value=''>Select Month</option>"+
					"<option value='01'>January</option>"+
					"<option value='02'>February</option>"+
					"<option value='03'>March</option>"+
					"<option value='04'>April</option>"+
					"<option value='05'>May</option>"+
					"<option value='06'>June</option>"+
					"<option value='07'>July</option>"+
					"<option value='08'>August</option>"+
					"<option value='09'>September</option>"+
					"<option value='10'>October</option>"+
					"<option value='11'>November</option>"+
					"<option value='12'>December</option>")
				}
				else if($("#duration").val()==2){
					$("#show_duration").html("<option value=''>Select Year</option>");
					for(i=2000;i<=2021;i++){
						$("#show_duration").html($("#show_duration").html()+
						"<option value='"+i+"'>"+i+"</option>");
					}
				}
				else{
					$("#show_duration").html("<option value=''>Select Duration First</option>");
				}
			});
			$("#btn_print").click(function(){
				$("#btn_print").hide();
				$("#menus").hide();
				window.print();
				$("#btn_print").show();
				$("#menus").show();
			});
			$("body").ready(function(){
				if($("td#no_data").html() == " "){
					$("td#no_data").html("0");
				}
			});
		});
	</script>

		<div style="width:600px; margin:0px auto;">
			<!--<select id="duration">
				<option value="0">Select Durations</option>
				<option value="1">Monthly</option>
				<option value="2">Yearly</option>
			</select>
			<select id="show_duration">
				<option value="">Select Duration First</option>
			</select>-->
			<h1>Donations & Distributions</h1><hr>
			<table>
			<tr>
				<th>Category</th>
				<th>Donations</th>
				<th>Distributions</th>
			</tr>
			<?php
				$sql = "SELECT * FROM categories";
				$result = mysqli_query($con,$sql);
				while($rs = mysqli_fetch_array($result)){
					?>
					<tr>
						<td><?php echo $rs['name']; ?></td>
					<?php
					$donate_sql = "SELECT sum(items) FROM donation WHERE category_id='".$rs['category_id']."'";
					$donate_result = mysqli_query($con,$donate_sql);
					$donate_rs = mysqli_fetch_array($donate_result);
					?>
					<td id="no_data"><?php echo $donate_rs['sum(items)']; ?></td>
					<?php
					$distribute_sql = "SELECT sum(counts) FROM distributions WHERE category_id='".$rs['category_id']."'";
					$distribute_result = mysqli_query($con,$distribute_sql);
					$distribute_rs = mysqli_fetch_array($distribute_result);
					?>
					<td id="no_data"> <?php echo $distribute_rs['sum(counts)']; ?></td>
					<?php
				}
			?>
			</table>
			<!--<button>Download</button>-->
			<button id="btn_print">Print</button>
		</div>