<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="basedefinition">
	<tiles:putAttribute name="content">
<div class="col-md-9">
			<ol class="breadcrumb">
                  <li><a href="">Home</a></li>
                  <li class="active">Category</li>
                </ol>
				<button style="margin-bottom: 20px;" class="btn btn-success btn-lg"
					data-toggle="modal" data-target="#myModal">
					<span style="margin-right: 5px; vertical-align: -2px;"
						class="glyphicon glyphicon-plus-sign"></span>Create New Inventory
				</button>

				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">New Inventory
									Details</h4>
							</div>
							<div class="modal-body">
								<form class="form-horizontal" role="form">
									<div class="form-group">
										<label for="" class="col-sm-3 control-label">Inventory Name</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="int_name" placeholder="Name">
										</div>
									</div>
									<div class="form-group">
										<label for="inputDetails" class="col-sm-3 control-label">Details</label>
										<div class="col-sm-9">
										<textarea class="form-control" id="int_details" rows="4"></textarea>	
										</div>
									</div>
									
								</form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary" onclick="doAjaxPost();">Create</button>
							</div>
						</div>
					</div>
				</div>
				<div class="panel panel-warning">
					<div class="panel-heading">Inventory Details</div>
					<table class="table table-hover table-condensed">
						<thead>
							<tr>
								<th>S No.</th>
								<th>Inventory Name</th>
								<th>Categories</th>
								<th>Items</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>JHKJHkhk</td>
								<td>Mark</td>
								<td>Otto</td>
								<td>@mdo</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			</div>
		</div>	
	<script type="text/javascript">
	function doAjaxPost() {

		var name = $('#int_name').val();
		var details = $('#int_details').val();

		$.ajax({
			type : "POST",
			url : "newinventory",
			data : {
				name : name,
				details : details
			},
			success : function(response) {
				$('#myModal').modal('hide');
				
			},
			error : function(e) {
				alert('Error: ' + e);
			}
		});
	}

	</script>	
	</tiles:putAttribute>
	</tiles:insertDefinition>
