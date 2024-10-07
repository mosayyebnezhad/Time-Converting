// seconds to day / hour / minut / second



// 28-5-8-54




const secondToDate = (second: number): string => {



    const Days = Math.floor(second / 86400)
    const Hours = Math.floor((second / 3600) - (Days * 24))
    const Minutes = Math.floor((second / 60) - (Days * 24 * 60) - (Hours * 60))
    const Seconds = Math.floor(second - (Days * 86400) - (Hours * 3600) - (Minutes * 60))

    return `${Days}-${Hours}-${Minutes}-${Seconds}`


}


console.log(secondToDate(36485012))