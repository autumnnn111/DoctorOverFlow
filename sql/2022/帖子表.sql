set name utf8;

create table `t_post_list`(
    `id` bigint(20) unsigned not null AUTO_INCREMENT,
    `title` varchar(10) not null default '' comment '帖子标题',
    `detail` varchar(1024) not null default '' comment '帖子详情',
    `author` varchar(4) not null default 'system' comment '帖子作者',
    `status` int(4) not null default 0 comment '帖子状态',
    `createTime` timestamp NULL DEFAULT NULL COMMENT '创建时间',
    `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最近更新时间',
    `deleteTime` timestamp NULL DEFAULT NULL COMMENT '删除时间(软删除)',
)