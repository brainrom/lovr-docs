return {
  tag = 'listener',
  summary = 'Get the doppler effect parameters.',
  description = [[
    Returns the parameters that control the simulated doppler effect: The effect intensity and the
    speed of sound.
  ]],
  arguments = {},
  returns = {
    {
      name = 'factor',
      type = 'number',
      description = 'The doppler effect scaling factor.'
    },
    {
      name = 'speedOfSound',
      type = 'number',
      description = 'The speed of sound, in meters per second.'
    }
  },
  notes = 'The default factor is 1 and the default speed of sound is 343.29.'
}
