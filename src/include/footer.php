<footer id="Contact Us" class="p-4 bg-white rounded-lg shadow md:px-6 md:py-8 font-normal">
	<div class="sm:flex sm:items-center sm:justify-between">
		<a class="flex items-center mb-4 sm:mb-0">
			<img src="./assets/images/logo.jpg" class="mr-3 h-8" alt="Logo" />
		</a>
		<ul class="flex flex-wrap items-center mb-6 text-sm text-gray-500 sm:mb-0 ">
			<li>
				<a href="#" class="mr-4 hover:underline md:mr-6 ">About</a>
			</li>
			<li>
				<a href="#Privacy_Policy" class="mr-4 hover:underline md:mr-6">Privacy Policy</a>
			</li>
			<li>
				<a href="#Licensing" class="mr-4 hover:underline md:mr-6 ">Licensing</a>
			</li>
			<li>
				<a href="#contact_us" class="hover:underline">Contact</a>
			</li>
		</ul>
		<div>
			<address class="font-normal">
				<?php
				$ret = mysqli_query($con, "select * from tblpage where PageType='contactus' ");
				while ($row = mysqli_fetch_array($ret)) {
				?>
					<?php echo $row['PageDescription']; ?> <br>
					Phone: <?php echo $row['MobileNumber']; ?> <br>
					Email: <a href="mailto:<?php echo $row['Email']; ?>" class=""><?php echo $row['Email']; ?></a><br>
					Timing: <?php echo $row['OpenningTime']; ?>
				<?php } ?>
			</address>

		</div>
	</div>
</footer>