package main

import "math"

type IDate struct {
	Days    int
	Hours   int
	Minutes int
	Seconds int
}

func secondToDate(second int) IDate {
	Days := int(math.Floor(float64(second) / 86400))
	Hours := int(math.Floor(float64(second)/3600 - float64(Days)*24))
	Minutes := int(math.Floor(float64(second)/60 - float64(Days)*24*60 - float64(Hours)*60))
	Seconds := int(math.Floor(float64(second) - float64(Days)*86400 - float64(Hours)*3600 - float64(Minutes)*60))

	return IDate{
		Days:    Days,
		Hours:   Hours,
		Minutes: Minutes,
		Seconds: Seconds,
	}
}

