package org.example.film.commons.custom;

import org.hibernate.engine.spi.SharedSessionContractImplementor;
import org.hibernate.id.IdentifierGenerator;
import org.modelmapper.internal.bytebuddy.utility.RandomString;

import java.io.Serializable;

public class RandomIdGenerator implements IdentifierGenerator {
    @Override
    public Serializable generate(SharedSessionContractImplementor session, Object object) {
        RandomString randomString = new RandomString(16);
        return randomString.nextString();
    }
}
