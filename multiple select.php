<?php include 'config.php'; ?>
<?php include 'header.php'; ?>
<?php include 'navbar.php'; ?>
<?php 
if (isset($_POST['submit'])) {
	print_r($_POST['demo']);
	echo count($_POST['demo']);
	$arrs = '';
	for ($i=0; $i < count($_POST['demo']); $i++) { 

		$arrs .= "'".$_POST['demo'][$i]."'" . ",";
	}
	echo $arrs;
}
?>
<style>
.multiselect-container .multiselect-filter > .fa-search {
	z-index: 1;
	padding-left: 0.75rem;
	display: none;
}
.multiselect-container .multiselect-filter > input.multiselect-search {
	/* border: none; */
	border-bottom: 1px solid lightgrey;
	padding-left: 2rem;
	margin-bottom: 5px;
	width: 100%;
	margin-left: 0; 
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}
.multiselect-container .multiselect-option.dropdown-item, .multiselect-container .multiselect-group.dropdown-item, .multiselect-container .multiselect-all.dropdown-item, .multiselect-container .multiselect-option.dropdown-toggle, .multiselect-container .multiselect-group.dropdown-toggle, .multiselect-container .multiselect-all.dropdown-toggle {
	cursor: pointer;
	background: none;
	border: none;
}
label {
	display: inline-block;
	max-width: 100%;
	margin-bottom: 5px;
	font-weight: 700;
	padding-left: 10px;
}
.multiselect-container .multiselect-option.active:not(.multiselect-active-item-fallback), .multiselect-container .multiselect-group.active:not(.multiselect-active-item-fallback), .multiselect-container .multiselect-all.active:not(.multiselect-active-item-fallback), .multiselect-container .multiselect-option:not(.multiselect-active-item-fallback):active, .multiselect-container .multiselect-group:not(.multiselect-active-item-fallback):active, .multiselect-container .multiselect-all:not(.multiselect-active-item-fallback):active {
	background-color: white; 
	color: black;
}
</style>
<div class="container-fluid">
	<div class="right-part">
		<form action="" method="POST" action="<?php echo htmlspecialchars($_SERVER[" PHP_SELF "]);?>" role="form">
			<div class="form-group">
				<select class="form-control" id="demo" name="demo[]" multiple="multiple">
					<option value="Javascript">Javascript</option>
					<option value="Python">Python</option>
					<option value="LISP">LISP</option>
					<option value="C++">C++</option>
					<option value="jQuery">jQuery</option>
					<option value="Ruby">Ruby</option>
				</select>
			</div>
			<input type="submit" name="submit" value="Submit">
		</form>
		

	</div>
</div>
<script>
	$(function(){
		$('#demo').multiselect();
	});


	$('#demo').multiselect({

	// allows HTML content
	enableHTML: false,

  // CSS class of the multiselect button
  buttonClass: 'btn-info btn',

  // inherits the class of the button from the original select
  inheritClass: false,

  // width of the multiselect button
  buttonWidth: 'auto',

  // container that holds both the button as well as the dropdown
  buttonContainer: '<div class="btn-group" />',

  // places the dropdown on the right side
  dropRight: false,

  // places the dropdown on the top
  dropUp: false,

  // CSS class of the selected option
  selectedClass: 'active',

  // maximum height of the dropdown menu
  // if maximum height is exceeded a scrollbar will be displayed
  maxHeight: false,

  // includes Select All Option
  includeSelectAllOption: true,

  // shows the Select All Option if options are more than ...
  includeSelectAllIfMoreThan: 0,

  // Lable of Select All
  selectAllText: ' Select all',

  // the select all option is added as additional option within the select
  // o distinguish this option from the original options the value used for the select all option can be configured using the selectAllValue option.
  selectAllValue: 'multiselect-all',

  // control the name given to the select all option
  selectAllName: true,

  // if true, the number of selected options will be shown in parantheses when all options are seleted. 
  selectAllNumber: true,

  // setting both includeSelectAllOption and enableFiltering to true, the select all option does always select only the visible option
  // with setting selectAllJustVisible to false this behavior is changed such that always all options (irrespective of whether they are visible) are selected
  selectAllJustVisible: true,

  // enables filtering
  enableFiltering: true,

  // determines if is case sensitive when filtering
  enableCaseInsensitiveFiltering: true,

  // enables full value filtering
  enableFullValueFiltering: false,

  // if true, optgroup's will be clickable, allowing to easily select multiple options belonging to the same group
  enableClickableOptGroups: false,

  // enables collapsible OptGroups
  enableCollapsibleOptGroups: false,

  // collapses all OptGroups on init
  collapseOptGroupsByDefault: false,

  // placeholder of filter filed
  filterPlaceholder: 'Search',

  // possible options: 'text', 'value', 'both'
  filterBehavior: 'text',

  // includes clear button inside the filter filed
  includeFilterClearBtn: true,

  // prevents input change event
  preventInputChangeEvent: false,

  // message to display when no option is selected
  nonSelectedText: 'Select Person',

  // message to display if more than numberDisplayed options are selected
  nSelectedText: 'selected',

  // message to display if all options are selected
  allSelectedText: 'All selected',

  // determines if too many options would be displayed
  numberDisplayed: 3,

  // disables the multiselect if empty
  disableIfEmpty: false,

  // message to display if the multiselect is disabled
  disabledText: '',

  // the separator for the list of selected items for mouse-over
  delimiterText: ', ',

  // includes Reset Option
  includeResetOption: false,

  // includes Rest Divider
  includeResetDivider: false,

  // lable of Reset  Option
  resetText: 'Reset'
  
  
});


</script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#demo').multiselect({
			buttonText: function(options, select) {
				if (options.length == 0) {
					return this.nonSelectedText + ' <b class="caret"></b>';
				}
				else {
					if (options.length > this.numberDisplayed) {
						return options.length + ' ' + this.nSelectedText + ' <b class="caret"></b>';
					}
					else {
						var selected = '';
						options.each(function() {
							var label = ($(this).attr('label') !== undefined) ? $(this).attr('label') : $(this).html();

							selected += label + ', ';
						});
						return selected.substr(0, selected.length - 2) + ' <b class="caret"></b>';
					}
				}
			}
		});
	});
</script>
<?php include 'footer.php'; ?>
