package com.codingdojo.driver.Repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.codingdojo.driver.Models.License;

@Repository
public interface LicenseRepository extends CrudRepository<License, Long> {
	List<License> findAll();

}
