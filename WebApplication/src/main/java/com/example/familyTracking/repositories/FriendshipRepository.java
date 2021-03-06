package com.example.familyTracking.repositories;

import com.example.familyTracking.model.Friendship;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface FriendshipRepository extends CrudRepository<Friendship,Integer> {

    @Query(value = "SELECT accepted FROM friendship WHERE (id = ?1 );",
    nativeQuery =  true)
    boolean AccessId(Integer id);

@Query(value = "SELECT id FROM friendship WHERE ((id1=?1 and id2=?2) or (id2=?1 and id1=?2));",
    nativeQuery = true)
    List<Integer> getIDbyIdId(Integer id1, Integer id2);


@Query(value = "SELECT id FROM friendship WHERE (id1=?1  or id2=?1 );",
        nativeQuery = true)
        List <Integer>findByIds(Integer id1);
}