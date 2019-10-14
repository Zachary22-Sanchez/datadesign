drop table if exists `like`;
drop table if exists review;
drop table if exists user;

create table user (
	userID binary(16) not null,
	userActivationToken char(32),
	userEmail varchar(255) not null,
	userName varchar(128) not null,
	userProfile char(97) not null,
	unique(userId),
	unique(userEmail),
	index(userEmail),
	primary key(userId)
);


create table review (
	reviewId binary(16) not null,
	reviewUserId varchar (48) not null,
	reviewContent varchar (250) not null,
	reviewDateTime datetime (6) not null,
	reviewLocation varchar (28) not null,
	reviewPhotos varchar (255),
	reviewRating varchar (300) not null,
	primary key(reviewUserId)
);

create table `like` (
	likeUserId binary(16) not null,
	likeReviewId binary(16) not null,
	likeDateTime datetime(6) not null,
	foreign key(likeUserId) references user(userId)
);


