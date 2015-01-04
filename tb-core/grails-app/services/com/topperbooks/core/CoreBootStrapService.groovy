package com.topperbooks.core

import com.topper.books.core.Category
import com.topper.books.core.ContactSource
import com.topper.books.core.ContactType
import com.topper.books.core.SubCategory
import com.topper.books.core.User
import groovy.util.logging.Slf4j
import org.apache.shiro.crypto.hash.Sha256Hash

/**
 * CoreBootStrapService
 * A service class encapsulates the core business logic of a Grails application
 */
@Slf4j
class CoreBootStrapService {

    CategoryService categoryService
    SubCategoryService subCategoryService
    ContactSourceService contactSourceService
    ContactTypeService contactTypeService



    void createAdminUser(){
        User user = new User()

        user.username = 'admin'
        user.passwordHash = 'admin'
        user.permissions = ['*:*']

        user.validate()

        if(user.hasErrors()){
            log.error("Validation Error while creating user"+user.errors)
        }else {
            user.save flush: true
        }

        user = new User(username: "user123", passwordHash: "password")
        user.addToPermissions("*:*")
        user.save flush: true

    }

    void populateContactCategory(){
        populateVendorCategory()
    }

    void populateVendorCategory(){
        Category category = new Category()
        category.name = "Territorial"
        category.description = "Vendor to the owner company."
        category.validate()
        category.subcategories = populateVendorSubCategories()
        categoryService.create(category)
    }

    Set<SubCategory> populateVendorSubCategories(){
        Set<SubCategory> vendorSubCategories = []
        SubCategory subCategory = new SubCategory()
        subCategory.name = 'Local'
        subCategory.description = 'local vendors that supply in local areas.'
//        subCategoryService.create(subCategory)
        vendorSubCategories.add(subCategory)
        subCategory = new SubCategory()
        subCategory.name = 'National'
        subCategory.description = 'national vendors that supply in  whole country.'
//        subCategoryService.create(subCategory)
        vendorSubCategories.add(subCategory)

        subCategory = new SubCategory()
        subCategory.name = 'International'
        subCategory.description = 'International vendors that supply in  different countries.'
//        subCategoryService.create(subCategory)
        vendorSubCategories.add(subCategory)

        return vendorSubCategories
    }

    void populateContactSource(){
        ContactSource contactSource = new ContactSource()
        contactSource.name = "Internet"
        contactSource.description = "Contacts that has been recieved from internet"
        contactSource.sequence = 1
        contactSourceService.create(contactSource)

         contactSource = new ContactSource()
        contactSource.name = "Campaign"
        contactSource.description = "Contacts that has been received through campaigns run."
        contactSource.sequence = 2
        contactSourceService.create(contactSource)

        contactSource = new ContactSource()
        contactSource.name = "Internal sources"
        contactSource.description = "Contacts that has been received through campaigns run."
        contactSource.sequence = 3
        contactSourceService.create(contactSource)
    }

    void populateContactType(){
        ContactType contactType = new ContactType()
        contactType.name = 'Vendor'
        contactType.description = 'A vendor type to the owning side.'
        contactTypeService.create(contactType)

        contactType = new ContactType()
        contactType.name = 'Customer'
        contactType.description = 'A vendor type to the owning side.'
        contactTypeService.create(contactType)

        contactType = new ContactType()
        contactType.name = 'Internal'
        contactType.description = 'A vendor type to the owning side.'
        contactTypeService.create(contactType)
    }

}
