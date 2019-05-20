<template>
  <s-layout padding="large">
    <s-container>
      <div class="get-started-picture">
        <img
          src="~@/assets/img/bg/bg-get-started.png"
          alt="picture"
        >
      </div>
      <s-div size="full">
        <ul class="steps is-vertical is-hollow is-dashed">
          <li>
            <s-div
              size="10"
              class="is-offset-2"
            >
              <s-div size="full">
                <h2 class="is-size-2 has-text-weight-semibold has-text-gray-2">Let's Get started</h2>
              </s-div>
            </s-div>
          </li>
          <li
            v-for="(item, idx) in items"
            ref="list"
            :key="`list-get-started-${_uid}-${idx}`"
            :class="['steps-segment', {'is-active': idx === curItem }]"
            padding="2x"
          >
            <span class="steps-marker">
              <icon-get-started :idx="idx" />
            </span>
            <s-div
              size="10"
              padding="min"
              class="steps-content is-offset-2"
            >
              <s-div
                padding="small"
                size="12"
              >
                <p class="is-size-6 has-text-weight-semibold">{{ item.title }}</p>
              </s-div>
              <s-div
                size="three-quarters"
                padding="normal"
              >
                <pre><code>{{ item.code }}</code></pre>
              </s-div>
              <s-div size="two-thirds">
                <p class="is-size-7 has-line-height-6 has-text-gray-2">{{ item.small }}</p>
              </s-div>
            </s-div>
          </li>
          <li>
            <s-div
              size="10"
              class="is-offset-2"
            >
              <s-div size="three-quarters">
                <div class="s-card-box">
                  <s-level>
                    <h5
                      slot="left"
                      class="is-size-5 has-text-dark has-text-weight-semibold"
                    >Blog: What is Storyscript ?</h5>
                    <template slot="right">
                      <span class="separator" />
                      <s-button
                        :url="{ href: '//storyscript.io/blog/', target: '_blank' }"
                        link
                        arrow
                      >
                        Read on Medium
                      </s-button>
                    </template>
                  </s-level>
                </div>
              </s-div>
            </s-div>
          </li>
        </ul>
      </s-div>
    </s-container>
  </s-layout>
</template>

<script>
import IconGetStarted from '@/components/IconGetStarted'

export default {
  name: 'GetStarted',
  components: { IconGetStarted },
  data: () => ({
    curItem: 0,
    items: [{
      title: 'Hello, world 👋Meet Storyscript, your Kubernetes native DSL.',
      code: 'when http server listen path:\'/\' as req\n    req write content: \'Hello, world!\'',
      small: 'Serverless http endpoints, websockets, cron jobs, pubsub, event pubsub, and streaming. It’s all supported.'
    }, {
      title: 'String together microservices and functions in a serverless way.',
      code: 'when http server listen path:\'/hello\' as req\n    output = github lookup username:\'stevepeak\'\n    req write content:output',
      small: 'Storyscript is strong-typed and packed with variable mutations to move data between services with high transparency.'
    }, {
      title: 'Connect the old...',
      code: 'when http server listen path:\'/hello\' as req\n .   output = github lookup username:\'stevepeak\'\n    SomethingLegacy action input:output\n    req write content:output',
      small: 'First-class support for the Open Microservice Guide, OpenAPI, and AsyncAPI. Expose the API; no migration, no refactoring necessary.'
    }, {
      title: '...with the new.',
      code: 'when http server listen path:\'/hello\' as req\n    output = github lookup username:\'stevepeak\'\n    SomethingLegacy action input:output\n  ...\n    req write content:output',
      small: 'Take advantage of machine-learning, knative, and serverless with ease.'
    }, {
      title: 'Zero-devop deployments into Kubernetes 🚀',
      code: 'story deploy',
      small: '🎉Amazing! You just deployed your first application with Storyscript; generating a robust Kubernetes microservice architecture. Yes, that’s it. Grab a coffee, you did great! ☕'
    }]
  }),
  mounted: function () {
    document.onscroll = this.scrollEvent
  },
  methods: {
    scrollEvent: function () {
      if (!this.$refs.list) return
      let pos = document.documentElement.scrollTop - this.$el.offsetTop + window.innerHeight / 2
      let scrollpos = 0
      let idx = 0
      for (let listitem of this.$refs.list) {
        scrollpos += listitem.scrollHeight
        const lastitem = this.$refs.list.indexOf(listitem) === this.$refs.list.length - 1
        if (pos < scrollpos || lastitem) {
          idx = this.$refs.list.indexOf(listitem)
          break
        }
      }
      if (idx !== this.curItem) {
        this.$nextTick(() => {
          this.curItem = idx
        })
      }
      // console.log(document.documentElement.scrollTop, this.$el.scrollHeight, this.$refs.list[2].scrollHeight)
    }
  }
}
</script>

<style lang="scss">
.steps-segment:not(:last-child) {
  padding-bottom: 3rem;
}

.get-started-picture {
  position: absolute;
  right: -5rem;
  width: 20rem;
  @include mobile {
    display: none;
  }
}

.s-card-box {
  border-radius: 0.25rem;
  background-color: rgba(nth($grays, 4), 0.15);
  border-left: 0.25rem solid $primary;
  padding: 0.5rem 2rem;
  @include touch {
    .level {
      flex-direction: column;
    }
  }
  .level-right .level-item {
    position: relative;
  }
  .separator {
    background-color: rgba(nth($grays, 4), 0.5);
    height: 100%;
    width: 2px;
    display: block;
    position: absolute;
    left: -2.5rem;
    @include touch {
      display: none;
    }
  }
}
</style>
