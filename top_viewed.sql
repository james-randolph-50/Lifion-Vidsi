SELECT 
    subscribers.username as User, video.title as Video, video.play_count as Views
FROM
    subscribers
JOIN
  subscribers on subscriber_sub_id = subscribers.sub_id
JOIN
  videos on video_vid_id = videos.vid_id
GROUP BY
  videos.title, subscribers.username
ORDER BY Views DESC LIMIT 20;