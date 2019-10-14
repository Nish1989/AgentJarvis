<div class="modal fade text-center" id="LAMPModalCenter" tabindex="-1"
	role="dialog" aria-labelledby="LAMPModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title text-primary" id="LAMPModalLongTitle">LAMP
					- Stack Summery</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">

				<br>

				<p class="text-primary">
					<b> Target Environment Details</b>
				</p>
				<table class="table table-bordered border-primary"
					style="margin-top: 2%; margin-bottom: 2%;">
					<thead>
						<tr class="thead-light">
							<th scope="col">Organization</th>
							<th scope="col">Project</th>
							<th scope="col">Region</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">No Organisation</th>
							<td>cloudglobaldelivery-1000135575</td>
							<td>us-central1</td>
						</tr>

					</tbody>
				</table>


				<p class="text-primary">
					<b> LAMP Stack Details</b>
				</p>
				<table class="table table-bordered border-primary"
					style="margin-top: 2%; margin-bottom: 2%;">
					<thead>
						<tr class="thead-light">
							<th scope="col">Stack</th>
							<th scope="col">Description</th>
							<th scope="col">VMs</th>
							<th scope="col">Machine type</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">Linux</th>
							<td>Operating System</td>
							<td rowspan="3">1</td>
							<td rowspan="3">n1-standard-1</td>
						</tr>
						<tr>
							<th scope="row">Apache</th>
							<td>Web Server</td>
						</tr>
						<tr>
							<th scope="row">Perl, PHP or Python</th>
							<td>Scripting languages</td>
						</tr>
						<tr>
							<th scope="row">MySQL</th>
							<td>Database Server</td>
							<td>1</td>
							<td>n1-standard-1</td>
						</tr>
						<tr class="thead-light">
							<th scope="row" colspan="2">Total VMs</th>
							<th colspan="2">2</th>
						</tr>

					</tbody>
				</table>

				Estimated costs: <span class="text-danger"><b>
						$13.61/month</b></span>
			</div>
			<div class="modal-footer">
				<form id="myForm" action="trigger" method="post">
					<input type="hidden" name="stack" id="stack" value="LAMP" />
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Launch</button>
				</form>
			</div>
		</div>
	</div>
</div>
