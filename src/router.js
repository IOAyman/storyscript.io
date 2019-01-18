import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/views/HomeNew'

Vue.use(Router)

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/about',
      name: 'about',
      meta: { noNav: true },
      component: () => import('@/views/AboutNew')
    },
    {
      path: '/contact',
      name: 'contact',
      meta: { noNav: true },
      component: () => import('@/views/Contact')
    },
    {
      path: '/redirect',
      name: 'redirect',
      component: () => import('@/views/Redirect')
    },
    {
      path: '*',
      name: 'not-found',
      meta: { darkNav: true },
      component: () => import('@/views/NotFound')
    }
  ]
})
