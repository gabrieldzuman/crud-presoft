<template>
    <div>
      <h1>Gerenciamento de Tarefas</h1>
      <TaskForm @task-added="fetchTasks" />
      <TaskList :tasks="tasks" @task-updated="fetchTasks" />
    </div>
  </template>
  
  <script>
  import TaskForm from '../components/TaskForm.vue';
  import TaskList from '../components/TaskList.vue';
  import axios from 'axios';
  
  export default {
    components: {
      TaskForm,
      TaskList,
    },
    data() {
      return {
        tasks: [],
      };
    },
    methods: {
      fetchTasks() {
        axios.get('/api/tasks').then(response => {
          this.tasks = response.data;
        });
      },
    },
    mounted() {
      this.fetchTasks();
    },
  };
  </script>
  