select 
	pageview_url as pageviews,
	count(distinct website_session_id) as sessions
from website_pageviews
group by 1;
