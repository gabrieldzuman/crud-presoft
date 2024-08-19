<template>
    <div>
      <h2>{{ isEdit ? 'Editar Tarefa' : 'Adicionar Nova Tarefa' }}</h2>
      <form @submit.prevent="submitTask">
        <input type="text" v-model="task.title" placeholder="Título" required />
        <textarea v-model="task.description" placeholder="Descrição"></textarea>
        <input type="date" v-model="task.dueDate" required />
        <button type="submit">{{ isEdit ? 'Atualizar' : 'Adicionar' }}</button>
      </form>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  
  export default {
    props: {
      taskToEdit: Object,
    },
    data() {
      return {
        task: {
          title: '',
          description: '',
          dueDate: '',
        },
        isEdit: false,
      };
    },
    watch: {
      taskToEdit: {
        immediate: true,
        handler(newTask) {
          if (newTask) {
            this.task = { ...newTask };
            this.isEdit = true;
          }
        },
      },
    },
    methods: {
      submitTask() {
        if (this.isEdit) {
          axios.put(`/api/tasks/${this.task.id}`, this.task).then(() => {
            this.$emit('task-updated');
            this.resetForm();
          });
        } else {
          axios.post('/api/tasks', this.task).then(() => {
            this.$emit('task-added');
            this.resetForm();
          });
        }
      },
      resetForm() {
        this.task = {
          title: '',
          description: '',
          dueDate: '',
        };
        this.isEdit = false;
      },
    },
  };
  </script>
  