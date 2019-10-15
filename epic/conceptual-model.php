<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8"/>
	<title>Phase 1</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>

<h1>Conceptual Model</h1>

<img src="ERD%202.jpg" alt="data-design-diagram" align="center">

<div class="center">
	<ul><u><strong>User</strong></u></ul>
	<li>userId (pk)</li>
	<li>userActivationToken</li>
	<li>userEmail</li>
	<li>userName</li>
	<li>userProfile</li>
</div>

<div class="center">
	<ul><u><strong>Review</strong></u></ul>
	<li>reviewId (pk)</li>
	<li>reviewUserId (fk)</li>
	<li>reviewContent</li>
	<li>reviewDateTime</li>
	<li>reviewLocation</li>
	<li>reviewRating</li>
</div>

<div class="center">
	<ul>Like</ul>
	<li>likeUserId (fk) </li>
	<li>likeReviewId (fk) </li>
	<li>likeDateTime</li>
</div>

</body>
</html>