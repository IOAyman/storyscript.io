<template>
  <s-footer
    dark
    class="footer-top-bordered"
  />
</template>

<script>
export default {
  name: 'Footer'
}
</script>

<style lang="scss">
.footer-top-bordered {
  border-top: 1px solid lighten($dark, 13.5%);
}
</style>
