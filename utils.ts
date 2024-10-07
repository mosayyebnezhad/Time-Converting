interface IDate {
    Days: number
    Hours: number
    Minutes: number
    Seconds: number
}






const secondToDate = (second: number): IDate => {

    const Days = Math.floor(second / 86400)
    const Hours = Math.floor((second / 3600) - (Days * 24))
    const Minutes = Math.floor((second / 60) - (Days * 24 * 60) - (Hours * 60))
    const Seconds = Math.floor(second - (Days * 86400) - (Hours * 3600) - (Minutes * 60))



    const Export: IDate = {
        Days: Days,
        Hours: Hours,
        Minutes: Minutes,
        Seconds: Seconds,
    }
    return Export


}




const dateToSeconds = (date: IDate): number => {


    const Days = date.Days * 24 * 60 * 60
    const Hours = date.Hours * 60 * 60
    const Minutes = date.Minutes * 60
    const Seconds = date.Seconds

    const Export: number = Days + Hours + Minutes + Seconds

    return Export
}

console.log(dateToSeconds({
    Days: 422,
    Hours: 6,
    Minutes: 43,
    Seconds: 32,
}))