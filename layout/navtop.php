<?php error_reporting(0);

$parts = explode('/', __FILE__);
$filename = $parts[count($parts) - 1];

if (strpos($_SERVER["SCRIPT_URI"], $filename) !== false) {
	exit("illegal method");
}
?>
<div class="row border-bottom">
<nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
<div class="navbar-header">
	<a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
	<form role="search" class="navbar-form-custom" action="<?= $_CHAT_FILE ?>">
		<div class="form-group">
			<input type="text" placeholder="Join room chat now..." class="form-control" name="room_id">
		</div>
	</form>
</div>
	<ul class="nav navbar-top-links navbar-right">
		<li>
			<span class="m-r-sm text-muted welcome-message">Welcome you to ...</span>
		</li>
		<li>
			<a href="logout.php">
				<i class="fa fa-sign-out"></i> Log out
			</a>
		</li>
	</ul>

</nav>
</div>
