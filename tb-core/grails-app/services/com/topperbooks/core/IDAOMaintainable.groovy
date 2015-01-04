package com.topperbooks.core

public interface IDAOMaintainable<T> {
    public T create(def object)
    public T merge(def object)
}