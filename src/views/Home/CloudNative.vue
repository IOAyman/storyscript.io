<template>
  <s-layout margin="large">
    <s-container centered-v>
      <s-div size="7">
        <img
          src="~@/assets/img/bg/cloudnative-diagram.png"
          srcset="~@/assets/img/bg/cloudnative-diagram@2x.png 2x, ~@/assets/img/bg/cloudnative-diagram@3x.png 3x"
          alt=""
        >
      </s-div>
      <s-div
        size="4"
        padding="large"
      >
        <s-text
          :padding="['none', '1x']"
          head="3"
        >Cloud-native runtime</s-text>
        <s-text
          :padding="['none', 'normal']"
          p="1"
        >Storyscript runs collection of many services working together in the cloud.</s-text>
        <s-button
          :url="{ href:'//docs.storyscript.io', target:'_blank' }"
          link
          arrow
        >View Docs</s-button>
      </s-div>
    </s-container>
  </s-layout>
</template>

<script>
export default {
  name: 'CloudNative'
}
</script>
