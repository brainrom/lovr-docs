return {
  tag = 'input',
  summary = 'Make a device go BZZZ!',
  description = [[
    Causes the device to vibrate with a custom strength, duration, and frequency, if possible.
  ]],
  arguments = {
    device = {
      type = 'Device',
      default = [['head']],
      description = 'The device to vibrate.'
    },
    strength = {
      type = 'number',
      default = '1',
      description = 'The strength of the vibration (amplitude), between 0 and 1.'
    },
    duration = {
      type = 'number',
      default = '.5',
      description = 'The duration of the vibration, in seconds.'
    },
    frequency = {
      type = 'number',
      default = '0',
      description = 'The frequency of the vibration, in hertz.  0 will use a default frequency.'
    }
  },
  returns = {
    vibrated = {
      type = 'boolean',
      description = 'Whether the vibration was successfully triggered by an active headset driver.'
    }
  },
  variants = {
    {
      arguments = { 'device', 'strength', 'duration', 'frequency' },
      returns = { 'vibrated' }
    }
  },
  notes = [[
    When using the `openvr` headset driver on an HTC Vive, the value for the `duration` currently
    must be less than .004 seconds.  Call this function several frames in a row for stronger or
    prolonged vibration patterns.

    On the Oculus Quest, devices can only be vibrated once per frame.  Any attempts after the first
    will return `false`.
  ]]
}
