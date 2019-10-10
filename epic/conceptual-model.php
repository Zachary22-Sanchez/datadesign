<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8"/>
	<title>Phase 1</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>

<h1>Conceptual Model</h1>

<img src="data-design-diagram.jpg" alt="data-design-diagram" align="left">

<div align="center">
	<ul><u><strong>user</strong></u></ul>
	<li>userID (pk)</li>
	<li>userActivationToken</li>
	<li>userEmail</li>
	<li>userName</li>
	<li>userProfile</li>
</div>

<div align="center">
	<ul><u><strong>review</strong></u></ul>
	<li>reviewId (fk)</li>
	<li>reviewUserId (pk)</li>
	<li>reviewContent</li>
	<li>reviewDateTime</li>
	<li>reviewLocation</li>
	<li>reviewPhotos</li>
	<li>reviewRating</li>
</div>

<div align="center">
	<ul><u><strong>like</strong></u></ul>
	<li>likeProfileId</li>
	<li>likeUserId</li>
	<li>likeReviewId</li>
	<li>likeDateTime</li>
</div>

</body>
</html>