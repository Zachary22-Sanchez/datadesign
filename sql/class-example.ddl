drop table if exists `like`;
drop table if exists review;
drop table if exists user;

create table user (
	userId binary(16) not null,
	userActivationToken char(32),
	userEmail varchar(255) not null,
	userName varchar(128) not null,
	unique(userEmail),
	unique(userName),
	primary key(userId)
);


create table review (
	reviewId binary(16) not null,
	reviewUserId varchar (48) not null,
	reviewContent blob not null,
	reviewDateTime datetime (6) not null,
	reviewLocation varchar (28) not null,
	reviewRating int,
	primary key(reviewId)
);

create table `like` (
	likeUserId binary(16) not null,
	likeReviewId binary(16) not null,
	likeDateTime datetime(6) not null,
	foreign key (likeUserId) references user(userID),
	foreign key (likeReviewId) references review(reviewId)
);


