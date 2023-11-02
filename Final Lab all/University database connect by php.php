<?php
$serverName = "DESKTOP-SNLQ279\\SQLEXPRESS"; // Your SQL Server name
$connectionOptions = array(
    "Database" => "University",
    "TrustServerCertificate" => true
);

$conn = sqlsrv_connect($serverName, $connectionOptions);

if ($conn === false) {
    die("Connection failed: " . print_r(sqlsrv_errors(), true));
}

$query = "SELECT * FROM student";
$stmt = sqlsrv_query($conn, $query);

if ($stmt === false) {
    die("Query failed: " . print_r(sqlsrv_errors(), true));
}

$students = [];
while ($row = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) {
    $students[] = $row;
}

sqlsrv_close($conn);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Student Details</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h2>Student Details</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Dept. Name</th>
            <th>Tot Credit</th>
        </tr>
        <?php foreach ($students as $student) { ?>
            <tr>
                <td><?php echo $student['id']; ?></td>
                <td><?php echo $student['name']; ?></td>
                <td><?php echo $student['dept_name']; ?></td>
                <td><?php echo $student['tot_cred']; ?></td>
            </tr>
        <?php } ?>
    </table>
</body>
</html>
