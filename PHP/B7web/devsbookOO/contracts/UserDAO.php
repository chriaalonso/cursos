<?php

interface UserDAO {
    public function findByToken($token);
    public function findByEmail($email);
    public function findById($id);
    public function update(User $u);
    public function insert(User $u);
}