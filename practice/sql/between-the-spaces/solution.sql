SELECT msg_id, 
LEN(content) - LEN(REPLACE(content, ' ', '')) + 1 AS word_count
FROM chat_msgs
;
