r
struct IDate {
    days: u32,
    hours: u32,
    minutes: u32,
    seconds: u32,
}

fn second_to_date(second: u32) -> IDate {
    let days = second / 86400;
    let hours = (second / 3600) % 24;
    let minutes = (second / 60) % 60;
    let seconds = second % 60;

    IDate {
        days,
        hours,
        minutes,
        seconds,
    }
}

