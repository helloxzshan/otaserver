/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2014/7/16 14:47:00                           */
/*==============================================================*/


drop table if exists file_info;

drop table if exists update_info;

/*==============================================================*/
/* Table: file_info                                             */
/*==============================================================*/
create table file_info
(
   file_id              int not null,
   update_id            text,
   name                 text,
   local                text,
   md5                  text,
   url                  text,
   primary key (file_id)
);

/*==============================================================*/
/* Table: update_info                                           */
/*==============================================================*/
create table update_info
(
   update_id            int not null,
   android_version      text,
   device_name          text,
   board_name           text,
   firmware_id          text,
   description          text,
   update_type          int,
   firmware_pid         text,
   primary key (update_id)
);

alter table file_info add constraint FK_Reference_1 foreign key (update_id)
      references update_info (update_id) on delete restrict on update restrict;

