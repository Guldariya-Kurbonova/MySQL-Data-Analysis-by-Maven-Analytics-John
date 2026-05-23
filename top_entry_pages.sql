CREATE TEMP TABLE temp_user_table AS 
	select 
		website_session_id as users,
		min(website_pageview_id) as first_interaction
from website_pageviews
where created_at < '2012-06-12'
group by 1


select 
	wp.pageview_url as landing_page,
	count(tu.users) as counts
from temp_user_table as tu
left join website_pageviews as wp
on tu.first_interaction = wp.website_pageview_id
group by 1
order by counts desc;
