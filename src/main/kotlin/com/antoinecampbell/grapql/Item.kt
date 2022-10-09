package com.antoinecampbell.grapql

import org.springframework.data.querydsl.QuerydslPredicateExecutor
import org.springframework.data.repository.CrudRepository
import org.springframework.graphql.data.GraphQlRepository
import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id

@Entity
data class Item(
    @Id @GeneratedValue(strategy = GenerationType.AUTO) var id: Long,
    var name: String,
    var description: String?
)

@GraphQlRepository
interface ItemRepository : CrudRepository<Item, Long>, QuerydslPredicateExecutor<Item>
