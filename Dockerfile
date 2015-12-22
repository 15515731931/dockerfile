#moosefs mfsmaster 
# @authc Jonathan
# @email "957600300@QQ.com"
#
#基于centos7镜像
FROM centos 
MAINTAINER Jonathan "957600300@QQ.com"
ADD ./RPM-GPG-KEY-MooseFS /etc/pki/rpm-gpg/
ADD ./MooseFS.repo /etc/yum.repos.d/
RUN yum -y --nogpgcheck  install moosefs-master moosefs-cgi moosefs-cgiserv
EXPORT 9425 
CMD mfsmaster start
