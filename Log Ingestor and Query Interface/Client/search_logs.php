<?php

header('Content-Type: application/json');

include ('../db/db_connection.php');

$sql = "SELECT * FROM log_data";
$where = '';
$searchConditions = isset($_POST['searchConditions']) ? json_decode($_POST['searchConditions'], true) : [];

foreach ($searchConditions as $condition) {
    $column = $condition['column'];
    $value = $condition['value'];

    if ($column == 'global') {
        // Global search condition
        $globalSearchCondition = '';
        $columns = ['level', 'message', 'resourceId', 'timestamp', 'traceId', 'spanId', 'commit', 'parentResourceId'];

        foreach ($columns as $col) {
            $globalSearchCondition .= ($globalSearchCondition ? ' OR ' : '') . "LOWER(`$col`) LIKE LOWER('%$value%')";
        }

        $where .= ($where ? ' AND ' : '') . "($globalSearchCondition)";
    } else {
        // Dynamic filter search condition
        $where .= ($where ? ' AND ' : '') . "LOWER(`$column`) LIKE LOWER('$value%')";
    }
}

if ($where) {
    $sql .= " WHERE $where";
}

$result = $conn->query($sql);
$response = ['data' => []];

if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $response['data'][] = $row;
    }
}

$conn->close();
echo json_encode($response);

?>
