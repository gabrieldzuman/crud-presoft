<template>
    <div>
      <h2>Lista de Tarefas</h2>
      <ul>
        <li v-for="task in tasks" :key="task.id">
          <strong>{{ task.title }}</strong> - {{ task.description }} - {{ task.dueDate }}
          <button @click="editTask(task)">Editar</button>
          <button @click="deleteTask(task.id)">Excluir</button>
          <button @click="toggleComplete(task)">{{ task.completed ? 'Desmarcar' : 'Concluir' }}</button>
        </li>
      </ul>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  
  export default {
    props: {
      tasks: Array,
    },
    methods: {
      editTask(task) {
        this.$emit('task-to-edit', task);
      },
      deleteTask(id) {
        axios.delete(`/api/tasks/${id}`).then(() => {
          this.$emit('task-updated');
        });
      },
      toggleComplete(task) {
        axios.put(`/api/tasks/${task.id}/complete`).then(() => {
          this.$emit('task-updated');
        });
      },
    },
  };
  </script>
  