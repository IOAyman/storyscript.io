<template>
  <s-layout
    foreground="light"
    rounded
    padding="large"
    margin="large"
  >
    <s-container :padding="['large', 'normal']">
      <s-div
        :padding="['none', 'large']"
        size="full"
      >
        <h2 class="is-size-2 has-text-dark has-text-weight-bold">Storyscript Team</h2>
      </s-div>
      <s-div
        v-for="(member, idx) of members"
        :key="`team-list-${idx}`"
        :padding="['none', 'normal']"
        class="is-narrow"
      >
        <team-card :member="member" />
      </s-div>
    </s-container>
  </s-layout>
</template>

<script>
import TeamCard from '@/components/TeamCard'

export default {
  name: 'Team',
  components: { TeamCard },
  data: () => ({
    members: [{
      name: 'Steve Peak',
      picture: '//avatars.githubusercontent.com/u/2041757?s=460&v=4',
      position: 'CEO',
      socials: [{ type: 'twitter', url: '//twitter.com/iopeak' }, { type: 'github-circle', url: '//github.com/stevepeak' }]
    }, {
      name: 'Jude Pereira',
      picture: '//avatars.githubusercontent.com/u/747087?s=460&v=4',
      position: 'Platform Architect',
      socials: [{ type: 'twitter', url: '//twitter.com/judebpereira' }, { type: 'github-circle', url: '//github.com/judepereira' }]
    }, {
      name: 'Jean Barriere',
      picture: '//avatars.githubusercontent.com/u/11390722?s=460&v=4',
      position: 'Frontend Developer',
      socials: [{ type: 'twitter', url: '//twitter.com/j_barriere' }, { type: 'github-circle', url: '//github.com/jeanbarriere' }]
    }, {
      name: 'Ayda Oz',
      picture: '//ca.slack-edge.com/T882T2C72-UEF6K2R2R-a7ae5fbf1e10-460',
      position: 'Designer UI/UX',
      socials: [{ type: 'twitter', url: '//twitter.com/aydaoz' }]
    }, {
      name: 'Sebastian Wilzbach',
      picture: '//avatars.githubusercontent.com/u/4370550?s=400&v=4',
      position: 'Storyscript Developer',
      socials: [{ type: 'twitter', url: '//twitter.com/swilzbach' }, { type: 'github-circle', url: '//github.com/wilzbach' }]
    }, {
      name: 'Aurélien Arino',
      picture: '//avatars.githubusercontent.com/u/10957531?s=400&v=4',
      position: 'OMG Developer',
      socials: [{ type: 'github-circle', url: '//github.com/Arinono' }]
    }]
  })
}
</script>
