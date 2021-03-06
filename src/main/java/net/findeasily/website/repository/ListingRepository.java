package net.findeasily.website.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import net.findeasily.website.entity.Listing;

public interface ListingRepository extends JpaRepository<Listing, String>, JpaSpecificationExecutor<Listing> {
    Listing getByContactType(String contactType);

    List<Listing> getByOwnerId(String ownerId);

    Listing getById(String id);
}