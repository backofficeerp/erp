$(document)
		.ready(
				function() {
					var educationTable = $('#educationTable').DataTable(
					{
						
						"paging":   false,
				        "ordering": false,
				        "info":     false,
				        "searching": false
						    
					}		
					);
					var experienceTable = $('#experienceTable').DataTable(
					{
						
						"paging":   false,
				        "ordering": false,
				        "info":     false,
				        "searching": false
						
					}		
					);
					var counter = 0;

					// Add delete and select row for education table
					$('#addEducationRow').on(
							'click',
							function() {
								counter = educationTable.rows().count();
								counter++;

								educationTable.row.add(
										[
												'<input type="text" class="form-control" name="degree_'
														+ counter + '">',
												'<input type="text" class="form-control" name="institution_'
														+ counter + '">',
												'<input type="text" class="form-control" name="percentage_'
														+ counter + '">',
												'<input type="text" class="form-control" name="year_'
														+ counter + '">' ])
										.draw(false);

							});

					$('#educationTable tbody').on(
							'click',
							'tr',
							function() {
								if ($(this).hasClass('selected')) {
									$(this).removeClass('selected');
								} else {
									educationTable.$('tr.selected')
											.removeClass('selected');
									$(this).addClass('selected');
								}
							});

					$('#deleteEducationRow').click(function() {
						educationTable.row('.selected').remove().draw(false);
					});

					// Add delete and select row for experience table
					$('#addExperienceRow')
							.on(
									'click',
									function() {
										counter = experienceTable.rows()
												.count();
										counter++;

										experienceTable.row
												.add(
														[
																'<div class="input-group"><span class="input-group-addon">Year</span><select class="form-control" name="experienceYear_' + counter +'"><option>0</option><option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option> </select><span class="input-group-addon">Month</span><select class="form-control" name="experienceMonth_' + counter +'"><option>0</option><option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option><option>11</option></select></div>',
																'<input type="text" class="form-control" name="companyName_'
																		+ counter
																		+ '">',
																'<input type="text" class="form-control" name="referenceName_'
																		+ counter
																		+ '">',
																'<input type="text" class="form-control" name="mobile_'
																		+ counter
																		+ '">' ])
												.draw(false);

									});

					$('#experienceTable tbody').on(
							'click',
							'tr',
							function() {
								if ($(this).hasClass('selected')) {
									$(this).removeClass('selected');
								} else {
									experienceTable.$('tr.selected')
											.removeClass('selected');
									$(this).addClass('selected');
								}
							});

					$('#deleteExperienceRow').click(function() {
						experienceTable.row('.selected').remove().draw(false);
					});

					// attaching and sending the hidden input with row count
					// value, of data
					// table along with form submit
					$("#createEmployeeForm").submit(
							function(eventObj) {

								$('<input />').attr('type', 'hidden').attr(
										'name', "educationTableRowCount").attr(
										'value', educationTable.rows().count())
										.appendTo('#createEmployeeForm');

								$('<input />').attr('type', 'hidden').attr(
										'name', "experienceTableRowCount")
										.attr('value',
												experienceTable.rows().count())
										.appendTo('#createEmployeeForm');

								return true;
							});

					// Automatically add a first row of data
					/*$('#addEducationRow').click();
					$('#addExperienceRow').click();*/
				});