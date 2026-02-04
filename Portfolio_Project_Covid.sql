
select *
from dbo.CovidDeaths;

select * from covidvaccination;

--Total cases vs total deaths

select location,date,total_cases as Total_cases,total_deaths as Total_deaths,
(total_deaths/total_cases)*100 as Death_Percentage
from coviddeaths
WHERE continent is not null
order by location;

--Total cases vs Population
-- shows what percentage of population got covid

select location,date,population,total_cases as Total_cases, (total_cases/population)*100 as Death_percentage
from coviddeaths
WHERE continent is not null;

-- Countries with highest infection rate compared to population

	select location,population,max(total_cases) as Total_cases, max((total_cases/population))*100 as Percentage_population_Infected
	from coviddeaths
	WHERE continent is not null
	group by location,population
	order by 4 desc;

--	countries with highest death count per population


	select location,max(total_deaths) as Total_deaths_count
	from dbo.covidDeaths
	WHERE continent is not null
	group by location
	order by 2 desc;

	-- Lets break things down by cointinent

	select continent,max(total_deaths) as Death_count
	from coviddeaths
	where continent is not null
	group by continent
	order by 2 desc;

	-- Global number

select date,sum(new_cases) as Total_cases,sum(new_deaths) as Total_deaths,sum(new_deaths)/sum(new_cases)*100 as Death_Percentage
from CovidDeaths
where continent is not null
group by date
order by 1,2;

Select * from covidvaccination;
select * from coviddeaths;


--looking at total populations vs  vaccination


select cd.continent,cd.date, cd.location, cd.population,cv.new_vaccinations,
sum(convert(int,cv.new_vaccinations)) over (partition by cd.location order by cd.date) as Rolling_people_vaccinated
from coviddeaths CD
join covidvaccination CV
on CD.location = CV.location
and CD.date = CV.date
where cd.continent is not null 
order by 3,2


--use CTE( What percentage of a country’s population has been vaccinated)

with vaccinated_percentage as (
select cd.continent,cd.date, cd.location, cd.population,cv.new_vaccinations,
sum(convert(int,cv.new_vaccinations)) over (partition by cd.location order by cd.date) as Rolling_people_vaccinated
from coviddeaths CD
join covidvaccination CV
on CD.location = CV.location
and CD.date = CV.date
where cd.continent is not null 
)
select *,(Rolling_people_vaccinated/population)*100 as Percent_vaccination
from vaccinated_percentage
;







