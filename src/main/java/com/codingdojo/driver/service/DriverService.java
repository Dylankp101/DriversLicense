package com.codingdojo.driver.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.driver.Models.License;
import com.codingdojo.driver.Models.Person;
import com.codingdojo.driver.Repository.DriverRepository;
import com.codingdojo.driver.Repository.LicenseRepository;

@Service
public class DriverService {

	@Autowired
	private DriverRepository driverRepository;
	@Autowired
	private LicenseRepository licenseRepository;
    public List<Person> all() {
        return driverRepository.findAll();
    }
    public List<License> Lall() {
        return licenseRepository.findAll();
    }
    public Person create(Person person) {
        return driverRepository.save(person);
    }
    public License createL(License license) {
        System.out.println(license);

        return licenseRepository.save(license);
    }
    public Person delete(Long id) {
        driverRepository.deleteById(id);
		return null;
    }
    public Person find(Long id) {
        Optional<Person> optionalDriver = driverRepository.findById(id);
        if(optionalDriver.isPresent()) {
            return optionalDriver.get();
        } else {
            return null;
        }
    }
    public License findL(Long id) {
        Optional<License> optionalL = licenseRepository.findById(id);
        if(optionalL.isPresent()) {
            return optionalL.get();
        } else {
            return null;
        }
    }

 }

