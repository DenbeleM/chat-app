<?php error_reporting(0);

$parts = explode('/', __FILE__);
$filename = $parts[count($parts) - 1];

if (strpos($_SERVER["SCRIPT_URI"], $filename) !== false) {
	exit("illegal method");
}
?>
<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav metismenu" id="side-menu">
            <li class="nav-header">
                <div class="dropdown profile-element"> 
				<span><img alt="image" class="img-circle" src="<?= $profilePicture ?>" width="50px" height="50px"></span>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="clear"> 
							<span class="block m-t-xs"> 
								<strong class="font-bold"><?= $userName ?></strong>
                             </span> 
								
							 </span> 
					</a>
                
                </div>
                <div class="logo-element">
                    VN
                </div>
            </li>
			<li class="<?= $homeChatMenu ?>">
                <a href="<?= $_HOME_FILE ?>"><i class="fa fa-home"></i> <span class="nav-label">Home</span></a>
            </li>
			
			<?php if($inLogin): ?>
			<li class="<?= $accountMenu ?>">
                <a href="account.php"><i class="fa fa-user-o"></i> <span class="nav-label">Account</span></a>
            </li>
			<?php endif; ?>
			
			<li class="<?= $createRoomMenu ?>">
                <a href="create_room.php"><i class="fa fa-plus"></i> <span class="nav-label">Create room</span></a>
            </li>
			
            <li class="<?= $myRoomMenu ?>">
				<a href="my_room.php"><i class="fa fa-th-large"></i> <span class="nav-label">My room</span></a>
            </li>
			
			<?php if($inLogin): if($isAdmin): if($adminArea !== "active"):?>
			
			<li class="">
                <a href="secret_admin.php"><i class="fa fa-cogs"></i> <span class="nav-label">Admin Area</span></a>
            </li>
			<?php else: ?>
			<li class="active">
                <a href="secret_admin.php"><i class="fa fa-cogs"></i> <span class="nav-label">Admin Area</span> <span class="fa arrow"></span></a>
                <ul class="nav nav-second-level collapse" style="">
                    <li><a href="#room_control">Group Control</a></li>
                    <li><a href="#user_control">User Control</a></li>
                </ul>
            </li>


			<?php endif;endif; ?>
 			<li>
                <a href="logout.php"><span class="nav-label"><i class="fa fa-sign-out"></i> Logout</span></a>
            </li>
			<?php endif; ?>
        </ul>
    </div>
</nav>
