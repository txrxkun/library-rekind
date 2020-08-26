<?php

/**
 *
 * Copyright (C) 2007,2008  Arie Nugraha (dicarve@yahoo.com)
 * Modified for Excel output (C) 2010 by Wardiyono (wynerst@gmail.com)
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 *
 */

/* Library Member List */

// key to authenticate
define('INDEX_AUTH', '1');

// main system configuration
require '../../../../sysconfig.inc.php';
// IP based access limitation
require LIB . 'ip_based_access.inc.php';
do_checkIP('smc');
do_checkIP('smc-reporting');
// start the session
require SB . 'admin/default/session.inc.php';
require SB . 'admin/default/session_check.inc.php';
// privileges checking
$can_read = utility::havePrivilege('reporting', 'r');
$can_write = utility::havePrivilege('reporting', 'w');

if (!$can_read) {
    die('<div class="errorBox">' . __('You don\'t have enough privileges to access this area!') . '</div>');
}

require SIMBIO . 'simbio_GUI/template_parser/simbio_template_parser.inc.php';
require SIMBIO . 'simbio_GUI/table/simbio_table.inc.php';
require SIMBIO . 'simbio_GUI/paging/simbio_paging.inc.php';
require SIMBIO . 'simbio_GUI/form_maker/simbio_form_element.inc.php';
require SIMBIO . 'simbio_DB/datagrid/simbio_dbgrid.inc.php';
require MDLBS . 'reporting/report_dbgrid.inc.php';

$page_title = 'Members Report';
$reportView = false;
$num_recs_show = 20;
if (isset($_GET['reportView'])) {
    $reportView = true;
}

if (!$reportView) {
?>
    <!-- filter -->
    <fieldset>
        <div class="per_title">
            <h2><?php echo __('Log View File (Ebook)'); ?></h2>
        </div>
        <div class="infoBox">
            <?php echo __('Report Filter'); ?>
        </div>
        <div class="sub_section">
            <!-- <form method="get" action="<?php echo $_SERVER['PHP_SELF']; ?>" target="reportView"> -->
            <form method="get" action="<?php echo $_SERVER['PHP_SELF']; ?>" target="reportView">
                <div id="filterForm">
                    <div class="divRow">
                        <div class="divRowLabel"><?php echo __('Title Ebook'); ?></div>
                        <div class="divRowContent">
                            <?php echo simbio_form_element::textField('text', 'title', '', 'style="width: 50%"'); ?>
                        </div>
                    </div>
                    <div class="divRow">
                        <div class="divRowLabel"><?php echo __('Member ID') . '/' . __('Member Name'); ?></div>
                        <div class="divRowContent">
                            <?php echo simbio_form_element::textField('text', 'id_name', '', 'style="width: 50%"'); ?>
                        </div>
                    </div>
                    <div class="divRow">
                        <div class="divRowLabel"><?php echo __('Sex'); ?></div>
                        <div class="divRowContent">
                            <?php
                            $gender_chbox[0] = array('ALL', __('ALL'));
                            $gender_chbox[1] = array('1', __('Male'));
                            $gender_chbox[2] = array('2', __('Female'));
                            echo simbio_form_element::radioButton('gender', $gender_chbox, 'ALL');
                            ?>
                        </div>
                    </div>
                    <div class="divRow">
                        <div class="divRowLabel"><?php echo __('Log Date From'); ?></div>
                        <div class="divRowContent">
                            <?php echo simbio_form_element::dateField('startDate', '2000-01-01'); ?>
                        </div>
                    </div>
                    <div class="divRow">
                        <div class="divRowLabel"><?php echo __('Log Date Until'); ?></div>
                        <div class="divRowContent">
                            <?php echo simbio_form_element::dateField('untilDate', date('Y-m-d')); ?>
                        </div>
                    </div>
                </div>
                <div style="padding-top: 10px; clear: both;">
                    <input type="button" name="moreFilter" value="<?php echo __('Show More Filter Options'); ?>" />
                    <input type="submit" name="applyFilter" value="<?php echo __('Apply Filter'); ?>" />
                    <input type="hidden" name="reportView" value="true" />
                </div>
            </form>
    </fieldset>
    <!-- filter end -->
    <div class="dataListHeader" style="padding: 3px;"><span id="pagingBox"></span></div>
    <iframe name="reportView" id="reportView" src="<?php echo $_SERVER['PHP_SELF'] . '?reportView=true'; ?>" frameborder="0" style="width: 100%; height: 500px;"></iframe>
<?php
} else {
    ob_start();
    // table spec
    $table_spec = 'ebook_log AS e
        LEFT JOIN member AS m ON m.member_id = e.member_id
        LEFT JOIN biblio AS b ON b.biblio_id = e.biblio_id
        LEFT JOIN gender AS g ON g.gender_id = m.gender
        ';
    
    // create datagrid
    $reportgrid = new report_datagrid();
    $reportgrid->setSQLColumn(
        'b.title AS \'' . __('Title Ebook') . '\'',
        'm.member_id AS \'' . __('ID') . '\'',
        'm.member_name AS \'' . __('Name') . '\'',
        'm.member_email AS \'' . __('Email') . '\'',
        'g.gender AS \'' . __('Gender') . '\'',
        'e.log_date AS \'' . __('Log Date') . '\''
    );
    // 'e.log_id AS \''.__('View').'\'')
    $reportgrid->setSQLorder('e.log_id DESC');

    // is there any search
    $criteria = 'e.log_id IS NOT NULL ';
    if (isset($_GET['title']) and !empty($_GET['title'])) {
        $keyword = $dbs->escape_string(trim($_GET['title']));
        $words = explode(' ', $keyword);
        if (count($words) > 1) {
            $concat_sql = ' AND (';
            foreach ($words as $word) {
                $concat_sql .= " (b.title LIKE '%$word%' OR b.isbn_issn LIKE '%$word%') AND";
            }
            // remove the last AND
            $concat_sql = substr_replace($concat_sql, '', -3);
            $concat_sql .= ') ';
            $criteria .= $concat_sql;
        } else {
            $criteria .= ' AND (b.title LIKE \'%' . $keyword . '%\' OR b.isbn_issn LIKE \'%' . $keyword . '%\')';
        }
    }

    // if (isset($_GET['member_type']) and !empty($_GET['member_type'])) {
    //     $mtype = intval($_GET['member_type']);
    //     $criteria .= ' AND m.member_type_id =' . $mtype;
    // }
    if (isset($_GET['id_name']) and !empty($_GET['id_name'])) {
        $id_name = $dbs->escape_string($_GET['id_name']);
        $criteria .= ' AND (m.member_id LIKE \'%' . $id_name . '%\' OR m.member_name LIKE \'%' . $id_name . '%\')';
    }
    if (isset($_GET['gender']) and $_GET['gender'] != 'ALL') {
        $gender = intval($_GET['gender']);
        $criteria .= ' AND m.gender=' . $gender;
    }
    //  date
    if (isset($_GET['startDate']) and isset($_GET['untilDate'])) {
        $criteria .= ' AND (TO_DAYS(e.log_date) BETWEEN TO_DAYS(\'' . $_GET['startDate'] . '\') AND
            TO_DAYS(\'' . $_GET['untilDate'] . '\'))';
    }
    if (isset($_GET['recsEachPage'])) {
        $recsEachPage = (int) $_GET['recsEachPage'];
        $num_recs_show = ($recsEachPage >= 20 && $recsEachPage <= 200) ? $recsEachPage : $num_recs_show;
    }
    $reportgrid->setSQLCriteria($criteria);

    // put the result into variables
    echo $reportgrid->createDataGrid($dbs, $table_spec, $num_recs_show);

    echo '<script type="text/javascript">' . "\n";
    echo 'parent.$(\'#pagingBox\').html(\'' . str_replace(array("\n", "\r", "\t"), '', $reportgrid->paging_set) . '\');' . "\n";
    echo '</script>';
    $xlsquery = 'SELECT b.title  AS \'' . __('Ebook') . '\'' .
        ', m.member_id AS \'' . __('ID') . '\'' .
        ', m.member_name AS \'' . __('\Name') . '\'' .
        ', m.member_email AS \'' . __('Email') . '\'' .
        ', m.gender AS \'' . __('Gender') . '\'' .
        ', e.log_date AS \'' . __('Log Date') . '\' FROM ' . $table_spec . ' WHERE ' . $criteria;

    unset($_SESSION['xlsdata']);
    $_SESSION['xlsquery'] = $xlsquery;
    $_SESSION['tblout'] = "member_list";

    echo '<a href="../xlsoutput.php" class="button">' . __('Export to spreadsheet format') . '</a>';
    $content = ob_get_clean();
    // include the page template
    require SB . '/admin/' . $sysconf['admin_template']['dir'] . '/printed_page_tpl.php';
}
