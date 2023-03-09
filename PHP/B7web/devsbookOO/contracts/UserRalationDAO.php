<?php

interface UserRelationDAO {
    public function insert(UserRelation $u);
    public function getFollowing($id);
    public function getFollowers($id);
}