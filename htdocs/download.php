<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
   <title>FFmpeg Download and CVS</title>
</head>

<body BGCOLOR="#FFFFFF">

<h2>FFmpeg Download and CVS</h2>

<?php require ('navbar.html'); ?>

<h3>Getting FFmpeg</h3>
FFmpeg has always been a very experimental and developer-driven project. It
is a key component in many multimedia projects and has new features added
constantly. New, official "releases" are few and far between. In short,
if you want to work with FFmpeg, you are advised to go along with CVS
development rather than relying on formal releases. CVS snapshots work 
really well 99% of the time so people are not afraid to use them.

<h3>FFmpeg CVS</h3>
Note that the FFmpeg CVS repository is hosted by
<a href="http://www.mplayerhq.hu">the MPlayer project</a>, rather than by
Sourceforge, for... historical reasons. In order to use the standard CVS
client to check out the source code:

<br>
<pre>
  cvs -z9 -d:pserver:anonymous@mplayerhq.hu:/cvsroot/ffmpeg co ffmpeg
</pre>
<br>

Alternatively, you can use 
<b><a href="http://www1.mplayerhq.hu/cgi-bin/cvsweb.cgi/?cvsroot=FFMpeg">the
FFmpeg CVSweb interface</a></b> to browse the source tree online.

<p>
Further,
<strike>
<a href="http://mplayerhq.hu/MPlayer/cvs/">an archive of recent CVS snapshots are also available</a>
</strike>
for download.
(The link is currently down until we have set up the new project server.)


<h3>Formal Releases</h3>
If you prefer a formal release, please see
<a href="http://sourceforge.net/project/showfiles.php?group_id=16082">FFmpeg's Sourceforce file release page</a>.
Never ask for help or report bugs if you are using a formal release instead
of CVS.

<p>

<?php require ('navbar-footer.html'); ?>

</body>
</html>
