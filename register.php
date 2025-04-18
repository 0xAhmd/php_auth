<?php

include 'db_connection.php';

if ($_SERVER['REQUEST_METHOD'] === "POST") {
    $email = trim($_POST['email']);
    $password = trim($_POST['password']);

    $query = $conn->prepare("SELECT * FROM users WHERE email = ?");
    $query->bind_param('s', $email);
    $query->execute();
    $results = $query->get_result();

    if ($results->num_rows > 0) {
        // Email already exists
        $query->close();
        $conn->close();
        header('Location: index.html?error=email_exists');
        exit();
    } else {
        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
        $insertQuery = $conn->prepare("INSERT INTO users (email, password) VALUES (?, ?)");
        $insertQuery->bind_param('ss', $email, $hashedPassword);

        if ($insertQuery->execute()) {
            $insertQuery->close();
            $query->close();
            $conn->close();
            // ✅ Redirect to login or success page
            header('Location: index.html?registered=success');
            exit();
        } else {
  //          echo "❌ Couldn't add user.";
        }
    }
} else {
//    echo "❌ Form was not submitted via POST.";
}

