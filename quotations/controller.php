<?php
// This file contains a bridge between the view and the model and redirects back to the proper page
// with after processing whatever form this codew absorbs. This is the C in MVC, the Controller.
//
// Authors: Rick Mercer and Hassanain Jamal
// 
// TODO: Add control the new expected behavior to
// register
// log in
// flag one quote
// unflag all quotes
// log out
//
require_once './DataBaseAdaptor.php';

if (isset ($_POST ['author']) && isset ($_POST ['quote'])) {
    $author = $_POST ['author'];
    $quote = $_POST ['quote'];
    $myDatabaseFunctions->addNewQuote($quote, $author);
    header("Location: ./index.php?mode=showQuotes");
} elseif (isset ($_POST ['action']) && isset ($_POST ['ID'])) {
    $action = $_POST ['action'];
    $ID = $_POST ['ID'];
    if ($action === 'increase') {
        $myDatabaseFunctions->raiseRating($ID);
    }
    if ($action === 'decrease') {
        $myDatabaseFunctions->lowerRating($ID);
    }
    if ($action === 'flag') {
        $myDatabaseFunctions->flag($ID);
    }

    header("Location: ./index.php?mode=showQuotes");
} elseif (isset ($_POST ['action']) && isset ($_POST ['username']) && isset ($_POST ['password'])) {
    $action = $_POST ['action'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    if ($action === 'register') {
        $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
        $myDatabaseFunctions->addNewUser($username, $password);
        header("Location: ./index.php?mode=showQuotes");
    }
    if ($action === 'login') {
        if ($myDatabaseFunctions->checkUser($username, $password) == 1) {
            echo "success";
        } else {
            echo "fail";
        }
    }

} elseif (isset ($_POST ['action'])) {
    $action = $_POST ['action'];
    if ($action === 'unFlag') {
        $myDatabaseFunctions->unFlagAll();
    }
    header("Location: ./index.php?mode=showQuotes");
}
?>