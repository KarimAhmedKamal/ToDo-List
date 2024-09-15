package com.example.ToDoApp.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.ToDoApp.model.ToDo;
import com.example.ToDoApp.repo.IToDoRepo;

@Service
public class ToDoService {

	@Autowired
	IToDoRepo todoRepo;
	
	public List<ToDo> getAllToDoItems() {
		ArrayList<ToDo> todoList = new ArrayList<>();
		todoRepo.findAll().forEach(todo -> todoList.add(todo));
		return todoList;
	}
	
	public ToDo getToDoItemById(Long id) {
		return todoRepo.findById(id).get();
	}
	
	public Boolean updateStatus(Long id) {
		ToDo todo = getToDoItemById(id);
		todo.setStatus("Completed");
		return saveOrUpdateToDoItem(todo);
	}
	
	public Boolean saveOrUpdateToDoItem(ToDo todo) {
		ToDo updatedObj = todoRepo.save(todo);
		
		if (getToDoItemById(updatedObj.getId()) != null) {
			return true;
		}
		
		return false;
	}
	
	public Boolean deleteToDoItem (Long id) {
		todoRepo.deleteById(id);
		
		if (todoRepo.findById(id).isEmpty()) {
			return true;
		}
		return false;
		
	}
}
