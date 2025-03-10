<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Players List</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>

<div class="header">
    <h1>⚽ My Dream Team</h1>
    <p>Welcome to <strong>My Dream Team</strong>, where you can explore a list of talented football players along with details about their teams.  
       Browse through the player profiles, check out their teams, and even listen to their national anthems. Enjoy the ultimate football experience! ⚡</p>
    <p>From goalkeepers to strikers, I bring you the best players from various teams. Find out their jersey numbers, nationalities,  
       home stadiums, and the coaches leading them to victory! 🌍🏆</p>
    <br>
</div>

<?php

$connect = mysqli_connect(
    'sql306.infinityfree.com',
    'if0_37424785',
    '8FnCc74ry5tO',
    'if0_37424785_myhome'
);


if (!$connect) {
    die("Connection failed: " . mysqli_connect_error());
}


$query = 'SELECT p.player_name, p.player_face, p.position, p.jersey_number, p.nationality, 
                 t.team_name, t.coach_name, t.stadium, t.code, t.logo, t.anthem
          FROM players p
          LEFT JOIN teams t ON p.team_id = t.team_id
          ORDER BY p.player_name';

$result = mysqli_query($connect, $query);

echo '<div class="container">';

while ($record = mysqli_fetch_assoc($result)) {
    echo '<div class="card">';

    
    if (!empty($record['player_face'])) {
        echo '<img class="player-face" src="images/'.$record['player_face'].'" alt="'.$record['player_name'].'">';
    }

    
    echo '<h2>'.$record['player_name'].'</h2>';
    echo '<p class="player-info">
         <strong>Position:</strong> '.$record['position'].'<br>
         <strong>Jersey #:</strong> '.$record['jersey_number'].'<br>
         <strong>Nationality:</strong> '.$record['nationality'].'
         </p>';

    
    if (!empty($record['team_name'])) {
        echo '<div class="team-info">';

        
        if (!empty($record['logo'])) {
            echo '<img class="team-logo" src="images/'.$record['logo'].'" alt="'.$record['team_name'].' Logo">';
        }

        echo '<h3>'.$record['team_name'].'</h3>';
        echo '</div>'; 

        echo '<p class="team-details">
             <strong>Coach:</strong> '.$record['coach_name'].'<br>
             <strong>Stadium:</strong> '.$record['stadium'].'<br>
             <strong>FIFA Code:</strong> '.$record['code'].'
             </p>';

     
        if (!empty($record['anthem'])) {
            $url = 'https://www.youtube.com/watch?v='.$record['anthem'];
            echo '<p><a class="anthem-link" href="'.$url.'" target="_blank">🎵 National Anthem</a></p>'; //https://stackoverflow.com/questions/31089940/insert-all-html-in-php/31089972#31089972
        }
    }

    echo '</div>'; 
}

echo '</div>'; 

mysqli_close($connect); 
?>

</body>
</html>
