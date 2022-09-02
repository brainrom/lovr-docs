return {
  summary = 'Get the number of mipmap levels in the Texture.',
  description = 'Returns the number of mipmap levels in the Texture.',
  arguments = {},
  returns = {
    {
      name = 'mipmaps',
      type = 'number',
      description = 'The number of mipmap levels in the Texture.'
    }
  },
  related = {
    'lovr.graphics.newTexture',
    'Sampler:getMipmapRange',
    'Pass:mipmap'
  }
}
