drop table if exists `like`;
drop table if exists review;
drop table if exists user;

create table user (
	userID binary(16) not null,
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
	reviewContent BLOB not null,
	reviewDateTime datetime (6) not null,
	reviewLocation varchar (28) not null,
	reviewRating varchar (1) not null,
	primary key(reviewId)
);

create table `like` (
   likeId binary (16) not null,
	likeUserId binary(16) not null,
	likeReviewId binary(16) not null,
	likeDateTime datetime(6) not null,
	primary key(likeId),
	foreign key (likeUserId) references user(userID),
	foreign key (likeReviewId) references review(reviewId)
);


