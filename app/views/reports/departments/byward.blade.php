@extends("layout")
@section("content")
	<style>
		.datatable> tbody > tr > td:first-child
		{
		    position: absolute;
		    display: block;
		    background-color: #F2F2F2;
		    /*height:100%;*/
		    width: 170px!important;
		    border: 0px!important;
		

		}
				.datatable>thead:first-child>tr:first-child>td:first-child
		{
		    position: absolute;
		    display: inline-block;
		    background-color:#F2F2F2;
		    /*height:100%;8*/
		    width: 170px!important;
		
		}

		.datatable>thead>tr:last-child>td:last-child
		{
		    width: 170px!important;
		}
		.datatable>tbody>tr:last-child>td:last-child
		{
		    width: 170px!important;
		}
		
		.datatable> tbody > tr > td:nth-child(2)
		{
		    padding-left:170px !important;


		}
		.datatable> thead > tr > td:nth-child(2)
		{
		    padding-left:170px !important;


		}

		
	</style>
	<div>
		<ol class="breadcrumb">
		  <li><a href="{{{URL::route('user.home')}}}">{{trans('messages.home')}}</a></li>
		  <li><a href="{{ URL::route('reports.patient.index') }}">{{ Lang::choice('messages.report', 2) }}</a></li>
		  <li class="active">{{trans('messages.departmental-report')}}</li>
		</ol>
	</div>

	<div class='container-fluid'>
		<div class='row'>
			<div class='col-lg-12'>
				{{ Form::open(array('route' => array('reports.department'), 'class' => 'form-inline', 'role' => 'form', 'method' => 'POST', 'style' => 'display:inline')) }}
					<div class='row'>
						<div class="col-sm-3">
					    	<div class="row">
								<div class="col-sm-2">
								    {{ Form::label('year', 'Year') }}
								</div>
								<div class="col-sm-2">
								    {{ Form::select('year', $years, isset($input['year'])?$input['year']:date('Y'), 
							                array('class' => 'form-control')) }}
						        </div>
							</div>
						</div>
						<div class="col-sm-4">
					    	<div class="row">
								<div class="col-sm-4">
								    {{ Form::label('lab_section', 'Lab Section') }}
								</div>
								<div class="col-sm-3">
								    {{ Form::select('lab_section', $category_names, isset($input['lab_section'])?$input['lab_section']:$category->name, array('class' => 'form-control')) }}
						        </div>
							</div>
						</div>
						<div class="col-sm-2">
						  	{{ Form::button("<span class='glyphicon glyphicon-filter'></span> ".trans('messages.view'), 
				                array('class' => 'btn btn-info', 'id' => 'filter', 'type' => 'submit')) }}
				        </div>
					</div>
				{{ Form::close() }}
			</div>
		</div>
	</div>

	<br>

	@if (Session::has('message'))
		<div class="alert alert-info">{{ trans(Session::get('message')) }}</div>
	@endif

	<div class="panel panel-primary">
		<div class="panel-heading ">
			<span class="glyphicon glyphicon-user"></span>
			{{trans('messages.department-report')}}
		</div>
		<?php $wards = array_unique($wards);?>
		<div class="panel-body">
			@include("reportHeader")
			<b>{{'As of'.' '.date('d-m-Y')}}</b>
			<hr>
			<div class="table-responsive" style="width: 100%; overflow-x: scroll;">
				@if(count($wards))
				<table class="datatable table table-striped table-hover table-condensed">
					<thead>
						<tr>
							<td><b>TESTS</b></td><td align='center' colspan="{{count($wards)}}"><b>WARDS</b></td>
						</tr>
					</thead>
					<tbody>
						@foreach($period as $dt)
								<tr>
									<td ><b>{{$dt->format('F')}}</b></td>
									@foreach($wards as $ward)
										<?php $ward = str_replace(' ', '', $ward);?>
										<td align='center'><b>{{$ward}}</b></td>
									@endforeach
									<td align='center'><b>TOTAL</b></td>
									<td><b>AvgTurnAroundTime</b></td>
								</tr>
							@foreach($category->testTypes as $test_type)
								<tr>
									<td>{{$test_type->name}}</td>
									<?php $total = 0;?>
									@foreach($wards as $ward)
										<td align='center'>{{$data[$test_type->name][$dt->format('M')][$ward]}}</td>
										<?php $total +=$data[$test_type->name][$dt->format('M')][$ward];?>
									@endforeach
									<td align='center'><b>{{$total}}</b></td>
									<td>{{$tat[$test_type->name][$dt->format('M')]}}</td>
								</tr>
							@endforeach
						@endforeach	
					</tbody>
				</table>
			
			

				@else
					<p align='center'>There are no tests in the {{$category->name}} Lab Section to display.</p>
				@endif
			</div>
			<br>
				
			<!--table for critical values-->
			@if(count($critical_wards))
				<p align='center'><b>CRITICAL VALUES</b></p>
				<div class="table-responsive" style="width: 100%; overflow-x: scroll;">
					
					<table class="datatable table table-striped table-hover table-condensed table-sm">
						
							<tr>
								<td>&nbsp;</td>
								@foreach($critical_wards as $critical_ward)
									<td align='center'><b>{{$critical_ward}}</b></td>
								@endforeach
								<td align='center'><b>TOTAL</b></td>
							</tr>
						</thead>
						<tbody>
						
							@foreach($critical_measures as $critical_measure)

								<tr>
									<td>
										<b>{{$critical_measure}}</b>
									</td>
									<td colspan="{{count($critical_wards)+1}}">&nbsp;</td>
								</tr>
								<tr>
									<td>- High</td>
									<?php 
										$total_high = 0;
										$total_low = 0;
									?>
									@foreach($critical_wards as $critical_ward)
										<td align='center'>{{isset($critical_values[$critical_measure][$critical_ward]['high'])?$critical_values[$critical_measure][$critical_ward]['high']:0}}</td>
										<?php if(isset($critical_values[$critical_measure][$critical_ward]['high'])){ $total_high += $critical_values[$critical_measure][$critical_ward]['high'];}?>
									@endforeach
									<td align='center'><b>{{$total_high}}</b></td>
								</tr>
								<tr>
									<td>- Low</td>
									@foreach($critical_wards as $critical_ward)
										<td align='center'>{{isset($critical_values[$critical_measure][$critical_ward]['low'])?$critical_values[$critical_measure][$critical_ward]['low']:0}}</td>
										<?php if(isset($critical_values[$critical_measure][$critical_ward]['low'])){ $total_low += $critical_values[$critical_measure][$critical_ward]['low'];}?>
									@endforeach
									<td align='center'><b>{{$total_low}}</b></td>
								</tr>
							@endforeach
						</tbody>	
					</table>
				</div>
			@endif
			<!--end table for critical values-->
			
			<br>
			<!--table for rejected samples-->
			@if(count($rejected_wards))
				<p align='center'><b>REJECTED SAMPLES</b></p>
				<div class="table-responsive" style="width: 100%; overflow-x: scroll;">	
					<table class="table table-striped table-hover table-condensed table-sm">
						<thead>
							<tr>
								<td>&nbsp;</td>
								@foreach($rejected_wards as $rejected_ward)
									<td align='center'><b>{{$rejected_ward}}</b></td>
								@endforeach
								<td align='center'><b>TOTAL</b></td>
							</tr>
						</thead>
						<tbody>
							
							@foreach($rejection_reasons as $rejection_reason)
							<?php $total = 0;?>
								<tr>
									<td><b>{{$rejection_reason}}</b></td>
									@foreach($rejected_wards as $rejected_ward)
										<td align='center'>{{isset($rejected_specimens[$rejection_reason][$rejected_ward])?$rejected_specimens[$rejection_reason][$rejected_ward]:0}}</td>
										<?php if(isset($rejected_specimens[$rejection_reason][$rejected_ward])){$total += $rejected_specimens[$rejection_reason][$rejected_ward];} ?>
									@endforeach
									<td align='center'><b>{{$total}}</b></td>
								</tr>
							@endforeach
						</tbody>
					</table>
				</div>
			@endif
				<!--end of table for rejected samples-->

			<?php //echo $patients->links(); 
			Session::put('SOURCE_URL', URL::full());?>
		</div>
	</div>
@stop