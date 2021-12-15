package com.reseausocial.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.reseausocial.model.FileEntity;

@Repository
public interface FileRepository extends JpaRepository<FileEntity, String> {
}
