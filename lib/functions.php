<?php
require_once __DIR__ . '/../class/database.php';
$connection = new Database();
function dd($var)
{echo "<pre style='direction: ltr'>";var_dump($var);exit();}
function get_user_ip() {
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        return $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        return $_SERVER['HTTP_X_FORWARDED_FOR'];
    } else {
        return $_SERVER['REMOTE_ADDR'];
    }
}
function update_visitors($id = null, $table_name = null, $ip = null)
{
    global $connection;
    if ($id !== null && $table_name !== null) {
        $query = "UPDATE `$table_name` SET visitor = counter + 1 WHERE id = ?";
        $stmt = $connection->prepare($query);
        $stmt->bindValue(1, $id);
        $stmt->execute();
    } elseif ($ip !== null)
    {
        $query = "SELECT * FROM `ip` WHERE ip = ?";
        $stmt = $connection->prepare($query);
        $stmt->bindValue(1, $ip);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($row)
        {
            $query = "UPDATE `ip` SET counter = counter + 1 WHERE ip = ?";
            $stmt = $connection->prepare($query);
            $stmt->bindValue(1, $ip);
            $stmt->execute();
        } else {
            $query = "INSERT INTO `ip` (ip, counter) VALUES (?, 1)";
            $stmt = $connection->prepare($query);
            $stmt->bindValue(1, $ip);
            $stmt->execute();
        }
    }
}
?>