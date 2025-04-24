<?php
// project added to github and now we can tracking version control
// doing the same thing check the submession type and fetch user typed data 
include 'db_connection.php';


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = trim($_POST['email']);
    $password = trim($_POST['password']);


    // prepare the query and find if the user is exists 



    $query = $conn->prepare("select * from users where email = ?");
    $query->bind_param("s", $email); // ✅ This line binds the email to the query

    $query->execute();
    $results = $query->get_result();

    // check response and password validation 

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $email = trim($_POST['email']);
        $password = trim($_POST['password']);

        $query = $conn->prepare("SELECT * FROM users WHERE email = ?");
        $query->bind_param("s", $email);
        $query->execute();
        $results = $query->get_result();

        if ($results->num_rows > 0) {
            $user = $results->fetch_assoc();
            if (password_verify($password, $user['password'])) {
                session_start();
                $_SESSION['user_id'] = $user['id'];
                $_SESSION['user_email'] = $user['email'];
          //  echo"Loged";
                header("Location: dashboard/index.html");
                exit;
            } else {
                // echo "Incorrect password.";
            }
        } else {
           // echo "User not found. Please create an account.";
        }

        $query->close();
        $conn->close();
    }

}


