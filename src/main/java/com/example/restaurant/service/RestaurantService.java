package com.example.restaurant.service;

import com.example.restaurant.domain.Restaurant;
import com.example.restaurant.domain.RestaurantRepository;
import com.example.restaurant.domain.RestaurantRequestDto;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@RequiredArgsConstructor
@Service
public class RestaurantService {
    @Autowired
    private final RestaurantRepository repo;

    //맛집 DB 저장
    public Restaurant addRestaurant(RestaurantRequestDto dto){
        Restaurant restaurant = new Restaurant(dto);
        return repo.save(restaurant);
    }

    //맛집 상세페이지 조회
    public List<Restaurant> getRestaurant(String restaurant_id){
        List<Restaurant> restaurantList = repo.findAll();
        List<Restaurant> result = new ArrayList<>();

        for(Restaurant r : restaurantList){
            if(r.getRestaurant_id().equals(restaurant_id)){
                result.add(r);
            }
        }
        return result;
    }
}
