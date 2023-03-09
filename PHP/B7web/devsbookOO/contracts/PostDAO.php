<?php

interface PostDAO {
    public function insert(Post $p);
    public function getUserFeed($id_user);
    public function getHomeFeed($id_user);
    public function getPhotosFrom($id_user);
}