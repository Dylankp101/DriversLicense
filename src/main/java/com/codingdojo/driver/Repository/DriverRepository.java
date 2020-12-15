package com.codingdojo.driver.Repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.codingdojo.driver.Models.Person;

@Repository
public interface DriverRepository extends CrudRepository<Person, Long> {
    List<Person> findAll();

}

