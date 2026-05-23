select 
	pageview_url as pageviews,
	count(distinct website_pageview_id) as sessions
from website_pageviews
group by 1;
