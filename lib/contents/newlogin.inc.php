<?php
// be sure that this file not accessed directly
if (!defined('INDEX_AUTH')) {
die("can not access this file directly");
} elseif (INDEX_AUTH != 1) {
die("can not access this file directly");
}

require SIMBIO.'simbio_DB/simbio_dbop.inc.php';

// IP based access limitation
do_checkIP('opac');
do_checkIP('opac-member');
// required file
require LIB.'member_logon.inc.php';
// check if member already logged in
$is_member_login = utility::isMemberLogin();


if (isset($_GET['destination'])) {
    $destination = $_GET['destination'];
    if (isset($_GET['fid'])) {
        $destination .= '&fid='.$_GET['fid'];
    }
    if (isset($_GET['bid'])) {
        $destination .= '&bid='.$_GET['bid'];
    }
} else {
    $destination = FALSE;
}


// if there is member login action
if (isset($_POST['logMeIn']) && !$is_member_login) {
    $username = trim(strip_tags($_POST['memberID']));
    $password = trim(strip_tags($_POST['memberPassWord']));
    // check if username or password is empty
    if (!$username OR !$password) {
        echo '<div class="errorBox">'.__('Please fill your Username and Password to Login!').'</div>';
    } else {
        # <!-- Captcha form processing - start -->
        if ($sysconf['captcha']['member']['enable']) {
            if ($sysconf['captcha']['member']['type'] == 'recaptcha') {
                require_once LIB.$sysconf['captcha']['member']['folder'].'/'.$sysconf['captcha']['member']['incfile'];
                $privatekey = $sysconf['captcha']['member']['privatekey'];
                $resp = recaptcha_check_answer ($privatekey,
                    $_SERVER["REMOTE_ADDR"],
                    $_POST["g-recaptcha-response"]);

                if (!$resp->is_valid) {
                    // What happens when the CAPTCHA was entered incorrectly
                    session_unset();
                    header("location:index.php?p=member&captchaInvalid=true");
                    die();
                }
            } else if ($sysconf['captcha']['member']['type'] == 'others') {
                # other captchas here
            }
        }
        # <!-- Captcha form processing - end -->

        // regenerate session ID to prevent session hijacking
        session_regenerate_id(true);
        // create logon class instance
        $logon = new member_logon($username, $password, $sysconf['auth']['member']['method']);
        if ($sysconf['auth']['member']['method'] === 'LDAP') {
            $ldap_configs = $sysconf['auth']['member'];
        }
        if ($logon->valid($dbs)) {
            // write log
            utility::writeLogs($dbs, 'member', $username, 'Login', 'Login success for member '.$username.' from address '.$_SERVER['REMOTE_ADDR']);
            if ($destination) {
                header("location:$destination");
            } else {
                header('Location: index.php?p=member');
            }
            exit();
        } else {
            $_member_sql = sprintf('SELECT member_name FROM member
            WHERE mpasswd=MD5(\'%s\') AND member_id=\'%s\'',
                $dbs->escape_string(trim($password)), $dbs->escape_string(trim($username)));
            $_member_q = $dbs->query($_member_sql);
            if ($_member_q->num_rows > 0) {
                $_member_d = $_member_q->fetch_row();
                $msg  = '';
                $msg .= '<div class="panel panel-danger">';
                $msg .= '<div class="panel-heading">Hi, '. $_member_d[0] .'! '.__('Please update your password!').'</div>';
                $msg .= '<div class="panel-body">';
                $msg .= '<form method="post" action="index.php?p=member">';
                $msg .= '<div class="form-group">';
                $msg .= '<label for="isusername">'.__('Username').'</label>';
                $msg .= '<input type="text" class="form-control" id="isusername" name="isusername" placeholder="'.__('Username').'">';
                $msg .= '</div>';
                $msg .= '<div class="form-group">';
                $msg .= '<label for="isoldpassword">'.__('Current Password').'</label>';
                $msg .= '<input type="password" class="form-control" id="isoldpassword" name="isoldpassword" placeholder="'.__('Current Password').'">';
                $msg .= '</div>';
                $msg .= '<div class="form-group">';
                $msg .= '<label for="isnewpassword">'.__('New Password').'</label>';
                $msg .= '<input type="password" class="form-control" id="isnewpassword" name="isnewpassword" placeholder="'.__('New Password').'">';
                $msg .= '</div>';
                $msg .= '<div class="form-group">';
                $msg .= '<label for="isconfirmnewpassword">'.__('Confirm New Password').'</label>';
                $msg .= '<input type="password" class="form-control" id="isconfirmnewpassword" name="isconfirmnewpassword" placeholder="'.__('Confirm New Password').'">';
                $msg .= '</div>';
                $msg .= '</div>';
                $msg .= '<div class="panel-footer">';
                $msg .= '<button type="submit" name="renewPass" class="btn btn-success">'.__('Update').'</button>';
                $msg .= '</form></div></div>';
                simbio_security::destroySessionCookie($msg, MEMBER_COOKIES_NAME, SWB, false);
            } else {
                // write log
                utility::writeLogs($dbs, 'member', $username, 'Login', 'Login FAILED for member '.$username.' from address '.$_SERVER['REMOTE_ADDR']);
                // message
                $msg = '<div class="errorBox">'.__('Login FAILED! Wrong username or password!').'</div>';
                simbio_security::destroySessionCookie($msg, MEMBER_COOKIES_NAME, SWB, false);
            }
        }
    }
}

?>

<div id="loginForm">
    <noscript>
        <div style="font-weight: bold; color: #FF0000;"><?php echo __('Your browser does not support Javascript or Javascript is disabled. Application won\'t run without Javascript!'); ?><div>
    </noscript>
    <form action="index.php?p=newlogin&destination=<?php echo $destination; ?>" method="post" target="_blank">

        <?php
        if (isset($_GET['update']) && !empty($_GET['update'])) { ?>

            <?php if (isset($_COOKIE['token']) && $_GET['update'] === $_COOKIE['token']) { ?>
                <div class="heading1"><?php echo __('Current Password'); ?></div>
                <div class="login_input"><input type="password" name="currentPasswd" id="userName" class="login_input" /></div>
                <div class="heading1"><?php echo __('New Password'); ?></div>
                <div class="login_input"><input type="password" name="newPasswd" class="login_input" /></div>
                <div class="heading1"><?php echo __('Confirm New Password'); ?></div>
                <div class="login_input"><input type="password" name="newPasswd2" class="login_input" /></div>
                <!-- Captcha in form - start -->
                <?php if ($sysconf['captcha']['smc']['enable']) { ?>
                    <?php if ($sysconf['captcha']['smc']['type'] == "recaptcha") { ?>
                        <div class="captchaAdmin">
                            <?php
                            require_once LIB.$sysconf['captcha']['smc']['folder'].'/'.$sysconf['captcha']['smc']['incfile'];
                            $publickey = $sysconf['captcha']['smc']['publickey'];
                            echo recaptcha_get_html($publickey);
                            ?>
                        </div>
                        <!-- <div><input type="text" name="captcha_code" id="captcha-form" style="width: 80%;" /></div> -->
                        <?php
                    } elseif ($sysconf['captcha']['smc']['type'] == "others") {

                    }
                    #debugging
                    #echo SWB.'lib/'.$sysconf['captcha']['folder'].'/'.$sysconf['captcha']['webfile'];
                } ?>
                <!-- Captcha in form - end -->

                <div class="marginTop">
                    <input type="submit" name="updatePassword" value="<?php echo __('Update'); ?>" class="loginButton" />
                    <input type="button" value="Home" class="homeButton" onclick="javascript: location.href = 'index.php';" />
                </div>
            <?php } else { ?>
                <div class="alert alert-danger">Not valid token!</div>
                <a class="homeButton" href="index.php">Go Home</a>
            <?php } ?>
        <?php } else { ?>
            <a>Librarian Member Login</a><br><br>
            <div class="heading1"><?php echo __('Member ID'); ?></div>
            <div class="login_input"><input type="text" name="memberID" id="userName" class="login_input" /></div>
            <div class="heading1"><?php echo __('Password'); ?></div>
            <div class="login_input"><input type="password" name="memberPassWord" class="login_input" /></div>
            <!-- Captcha in form - start -->
            <?php if ($sysconf['captcha']['smc']['enable']) { ?>
                <?php if ($sysconf['captcha']['smc']['type'] == "recaptcha") { ?>
                    <div class="captchaAdmin">
                        <?php
                        require_once LIB.$sysconf['captcha']['smc']['folder'].'/'.$sysconf['captcha']['smc']['incfile'];
                        $publickey = $sysconf['captcha']['smc']['publickey'];
                        echo recaptcha_get_html($publickey);
                        ?>
                    </div>
                    <!-- <div><input type="text" name="captcha_code" id="captcha-form" style="width: 80%;" /></div> -->
                    <?php
                } elseif ($sysconf['captcha']['smc']['type'] == "others") {

                }
                #debugging
                #echo SWB.'lib/'.$sysconf['captcha']['folder'].'/'.$sysconf['captcha']['webfile'];
            } ?>
            <!-- Captcha in form - end -->

            <div class="marginTop">
                <input type="submit" name="logMeIn" value="<?php echo __('Login'); ?>" class="loginButton" />
                <input type="button" value="Home" class="homeButton" onclick="javascript: location.href = 'index.php';" />
            </div>
        <?php } ?>
    </form>
</div>
<script type="text/javascript">jQuery('#userName').focus();</script>

<?php
// main content
$main_content = ob_get_clean();

// page title
$page_title = __('Library Automation Login').' | '.$sysconf['library_name'];

if ($sysconf['template']['base'] == 'html') {
    // create the template object
    $template = new simbio_template_parser($sysconf['template']['dir'].'/'.$sysconf['template']['theme'].'/login_template.html');
    // assign content to markers
    $template->assign('<!--PAGE_TITLE-->', $page_title);
    $template->assign('<!--CSS-->', $sysconf['template']['css']);
    $template->assign('<!--MAIN_CONTENT-->', $main_content);
    // print out the template
    $template->printOut();
} else if ($sysconf['template']['base'] == 'php') {
    require_once $sysconf['template']['dir'].'/'.$sysconf['template']['theme'].'/login_template.inc.php';
}
exit();
