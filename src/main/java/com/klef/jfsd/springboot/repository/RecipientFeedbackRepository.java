package com.klef.jfsd.springboot.repository;

import org.springframework.data.repository.CrudRepository;
import com.klef.jfsd.springboot.model.RecipientFeedback;

public interface RecipientFeedbackRepository extends CrudRepository<RecipientFeedback, Long> {
    // You can define additional query methods if necessary
}
