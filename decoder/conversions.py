"""Explicit mission conversions; no eval or external dependencies."""
import math

def ruby_round(value, digits):
    if not math.isfinite(value):
        raise ValueError('Cannot convert non-finite telemetry')
    if isinstance(value, int):
        return value
    scale=10.0 ** digits
    scaled=abs(value)*scale
    rounded=math.floor(scaled+0.5)
    if (scaled+0.5)-rounded > 1.0-1e-9:
        rounded+=1
    return math.copysign(rounded/scale,value)

def conversion_00(value):
    return ruby_round(((-0.07669* value)+195.6307), 4)

def conversion_01(value):
    return ruby_round(((0.0009775 * value)), 4)

def conversion_02(value):
    return ruby_round(((0.001327547 * value)), 4)

def conversion_03(value):
    return ruby_round(((0.001328 * value)), 4)

def conversion_04(value):
    return ruby_round(((0.002066632361 * value)), 4)

def conversion_05(value):
    return ruby_round(((0.004311 * value)), 4)

def conversion_06(value):
    return ruby_round(((0.00488* value)), 4)

def conversion_07(value):
    return ruby_round(((0.005865 * value)), 4)

def conversion_08(value):
    return ruby_round(((0.006239 * value)), 4)

def conversion_09(value):
    return ruby_round(((0.00681988679 * value)), 4)

def conversion_10(value):
    return ruby_round(((0.008978 * value)), 4)

def conversion_11(value):
    return ruby_round(((0.008993 * value)), 4)

def conversion_12(value):
    return ruby_round(((0.008993157 * value)), 4)

def conversion_13(value):
    return ruby_round(((0.0099706 * value)), 4)

def conversion_14(value):
    return ruby_round(((0.01 * value)), 2)

def conversion_15(value):
    return ruby_round(((0.01 * value)), 4)

def conversion_16(value):
    return ruby_round(((0.01349 * value)), 4)

def conversion_17(value):
    return ruby_round(((0.014662757 * value)), 4)

def conversion_18(value):
    return ruby_round(((0.0322581 * value)), 4)

def conversion_19(value):
    return ruby_round(((0.1 * value)), 1)

def conversion_20(value):
    return ruby_round(((0.3152* value)), 4)

def conversion_21(value):
    return ruby_round(((0.372434 * value)-273.15), 4)

def conversion_22(value):
    return ruby_round(((0.372434* value)-273.15), 4)

def conversion_23(value):
    return ruby_round(((0.397600 * value)-238.57), 4)

def conversion_24(value):
    return ruby_round(((0.4964 * value)-273.15), 4)

def conversion_25(value):
    return ruby_round(((1.327547 * value)), 4)

def conversion_26(value):
    return ruby_round(((1.59725 * value)), 4)

def conversion_27(value):
    return ruby_round(((14.662757 * value)), 4)

def conversion_28(value):
    return ruby_round(((2100 - ((3300.0 * value)/1023))/10.9), 2)

def conversion_29(value):
    return ruby_round(((value * -0.5 -22 )), 4)

def conversion_30(value):
    return ruby_round(((value * 38.15)), 4)

def conversion_31(value):
    return ruby_round(((value * value * 0.00005887)), 4)

def conversion_32(value):
    return ruby_round(((value - 4294967296 if value >= 2147483648 else value) / 1073741824.0), 6)

def conversion_33(value):
    return ruby_round((-75.0 + value * (200.0 / 255.0)), 4)

def conversion_34(value):
    return (350000 + value * 256)

def conversion_35(value):
    return ruby_round((value / 10.0), 1)

def conversion_36(value):
    return ruby_round((value / 100.0), 2)

def conversion_37(value):
    return ruby_round((value / 10000.0), 4)

def conversion_38(value):
    return ruby_round((value / 326.8 + 20), 4)

def conversion_39(value):
    return (3276.7 if value == 32767 else ruby_round(value * 0.1, 1))

def conversion_40(value):
    return "0x%02X | A1=%d/%d A2=%d/%d A3=%d/%d A4=%d/%d (S=stow,B=burn)" % (value, value&1, (value>>1)&1, (value>>2)&1, (value>>3)&1, (value>>4)&1, (value>>5)&1, (value>>6)&1, (value>>7)&1,)

def conversion_41(value):
    return "0x%04X | A1=%d/%d/%d A2=%d/%d/%d A3=%d/%d/%d A4=%d/%d/%d (S=stow,T=tout,B=burn) | IG=%d INDB=%d ARM=%d" % (value, (value>>15)&1, (value>>14)&1, (value>>13)&1, (value>>11)&1, (value>>10)&1, (value>>9)&1, (value>>7)&1, (value>>6)&1, (value>>5)&1, (value>>3)&1, (value>>2)&1, (value>>1)&1, (value>>8)&1, (value>>4)&1, value&1,)

CONVERSIONS = {
    '((-0.07669* value)+195.6307).round(4)': conversion_00,
    '((0.0009775 * value)).round(4)': conversion_01,
    '((0.001327547 * value)).round(4)': conversion_02,
    '((0.001328 * value)).round(4)': conversion_03,
    '((0.002066632361 * value)).round(4)': conversion_04,
    '((0.004311 * value)).round(4)': conversion_05,
    '((0.00488* value)).round(4)': conversion_06,
    '((0.005865 * value)).round(4)': conversion_07,
    '((0.006239 * value)).round(4)': conversion_08,
    '((0.00681988679 * value)).round(4)': conversion_09,
    '((0.008978 * value)).round(4)': conversion_10,
    '((0.008993 * value)).round(4)': conversion_11,
    '((0.008993157 * value)).round(4)': conversion_12,
    '((0.0099706 * value)).round(4)': conversion_13,
    '((0.01 * value)).round(2)': conversion_14,
    '((0.01 * value)).round(4)': conversion_15,
    '((0.01349 * value)).round(4)': conversion_16,
    '((0.014662757 * value)).round(4)': conversion_17,
    '((0.0322581 * value)).round(4)': conversion_18,
    '((0.1 * value)).round(1)': conversion_19,
    '((0.3152* value)).round(4)': conversion_20,
    '((0.372434 * value)-273.15).round(4)': conversion_21,
    '((0.372434* value)-273.15).round(4)': conversion_22,
    '((0.397600 * value)-238.57).round(4)': conversion_23,
    '((0.4964 * value)-273.15).round(4)': conversion_24,
    '((1.327547 * value)).round(4)': conversion_25,
    '((1.59725 * value)).round(4)': conversion_26,
    '((14.662757 * value)).round(4)': conversion_27,
    '((2100 - ((3300.0 * value)/1023))/10.9).round(2)': conversion_28,
    '((value * -0.5 -22 )).round(4)': conversion_29,
    '((value * 38.15)).round(4)': conversion_30,
    '((value * value * 0.00005887)).round(4)': conversion_31,
    '((value >= 2147483648 ? value - 4294967296 : value) / 1073741824.0).round(6)': conversion_32,
    '(-75.0 + value * (200.0 / 255.0)).round(4)': conversion_33,
    '(350000 + value * 256)': conversion_34,
    '(value / 10.0).round(1)': conversion_35,
    '(value / 100.0).round(2)': conversion_36,
    '(value / 10000.0).round(4)': conversion_37,
    '(value / 326.8 + 20).round(4)': conversion_38,
    '(value == 32767) ? 3276.7 : (value * 0.1).round(1)': conversion_39,
    'sprintf("0x%02X | A1=%d/%d A2=%d/%d A3=%d/%d A4=%d/%d (S=stow,B=burn)", value, value&1, (value>>1)&1, (value>>2)&1, (value>>3)&1, (value>>4)&1, (value>>5)&1, (value>>6)&1, (value>>7)&1)': conversion_40,
    'sprintf("0x%04X | A1=%d/%d/%d A2=%d/%d/%d A3=%d/%d/%d A4=%d/%d/%d (S=stow,T=tout,B=burn) | IG=%d INDB=%d ARM=%d", value, (value>>15)&1, (value>>14)&1, (value>>13)&1, (value>>11)&1, (value>>10)&1, (value>>9)&1, (value>>7)&1, (value>>6)&1, (value>>5)&1, (value>>3)&1, (value>>2)&1, (value>>1)&1, (value>>8)&1, (value>>4)&1, value&1)': conversion_41,
}
