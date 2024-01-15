<?php

include ('../db/db_connection.php');  


// Retrieve JSON data from the POST request
$jsonData = file_get_contents("php://input");

// Decode JSON data
$data = json_decode($jsonData, true);

// Check if decoding was successful
if ($data !== null) {
    // Access individual fields with checks
    $level = isset($data['level']) ? $data['level'] : null;
    $message = isset($data['message']) ? $data['message'] : null;
    $resourceId = isset($data['resourceId']) ? $data['resourceId'] : null;
    $timestamp = isset($data['timestamp']) ? $data['timestamp'] : null;
    $traceId = isset($data['traceId']) ? $data['traceId'] : null;
    $spanId = isset($data['spanId']) ? $data['spanId'] : null;
    $commit = isset($data['commit']) ? $data['commit'] : null;
    $parentResourceId = isset($data['metadata']['parentResourceId']) ? $data['metadata']['parentResourceId'] : null;

    // Convert timestamp to a valid format (you can adjust this based on your needs)
    $timestamp = ($timestamp !== null) ? date('Y-m-d H:i:s', strtotime($timestamp)) : null;

    // Prepare and execute SQL statement to insert data into table
    $stmt = $conn->prepare("INSERT INTO log_data (level, message, resourceId, timestamp, traceId, spanId, commit, parentResourceId) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssssss", $level, $message, $resourceId, $timestamp, $traceId, $spanId, $commit, $parentResourceId);
    $stmt->execute();

    echo "Data inserted successfully";
} else {
    // Handle JSON decoding error
    echo "Send data using this URL http://localhost:8080/DYTE%20Assignment/ingest.php";
}

?>
