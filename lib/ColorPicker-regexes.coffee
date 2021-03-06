# ----------------------------------------------------------------------------
#  ColorPicker: Regexes
# ----------------------------------------------------------------------------

    module.exports = [
        # Matches HEX + A: eg
        # rgba(#fff, 0.3) and rgba(#000000, .8)
        { type: 'hexa', regex: /(rgba\(((\#[a-f0-9]{6}|\#[a-f0-9]{3}))\s*,\s*(0|1|0*\.\d+)\))/ig }

        # Matches RGB + A: eg.
        # rgba(0, 99, 199, 0.3)
        { type: 'rgba', regex: /(rgba\(((([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\s*,\s*([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\s*,\s*([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])))\s*,\s*(0|1|0*\.\d+)\))/ig }

        # Matches RGB: eg.
        # rgb(0, 99, 199)
        { type: 'rgb', regex: /(rgb\(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\s*,\s*([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\s*,\s*([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\))/ig }

        # Matches HEX:
        # eg. #000 and #ffffff
        { type: 'hex', regex: /(\#[a-f0-9]{6}|\#[a-f0-9]{3})/ig }
    ]
