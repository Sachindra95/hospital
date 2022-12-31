<footer class="p-4 bg-white rounded-lg shadow md:px-6 md:py-8 ">
	<div class="sm:flex sm:items-center sm:justify-between">
		<a href="https://flowbite.com/" class="flex items-center mb-4 sm:mb-0">
			<img src="./assets/images/logo.jpg" class="mr-3 h-8" alt="Flowbite Logo" />
		</a>
		<ul class="flex flex-wrap items-center mb-6 text-sm text-gray-500 sm:mb-0 ">
			<li>
				<a href="#" class="mr-4 hover:underline md:mr-6 ">About</a>
			</li>
			<li>
				<a href="#" class="mr-4 hover:underline md:mr-6">Privacy Policy</a>
			</li>
			<li>
				<a href="#" class="mr-4 hover:underline md:mr-6 ">Licensing</a>
			</li>
			<li>
				<a href="#" class="hover:underline">Contact</a>
			</li>
			<li>
				<a href="">
					<address>
						<address class="">
							<?php
							$ret = mysqli_query($con, "select * from tblpage where PageType='contactus' ");
							while ($row = mysqli_fetch_array($ret)) {
							?>
								<?php echo $row['PageDescription']; ?> <br>
								Phone: <?php echo $row['MobileNumber']; ?> <br>
								Email: <a href="mailto:<?php echo $row['Email']; ?>" class=""><?php echo $row['Email']; ?></a><br>
								Timing: <?php echo $row['OpenningTime']; ?>
						</address>

					<?php } ?>
					</address>
				</a>
			</li>
		</ul>
	</div>
	<hr class="my-6 border-gray-200 sm:mx-auto  lg:my-8" />
	<span class="block text-sm text-gray-500 sm:text-center ">© 2022 <a href="https://flowbite.com/" class="hover:underline">Flowbite™</a>. All Rights Reserved.
	</span>
</footer>