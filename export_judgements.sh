sqlite3 db/relevation.db "select judgementapp_query.qId, judgementapp_document.docId, judgementapp_judgement.relevance from judgementapp_query, judgementapp_document, judgementapp_judgement where judgementapp_judgement.query_id = judgementapp_query.id and judgementapp_judgement.document_id = judgementapp_document.id and relevance <> -1;" | sed "s/|/ /g" | sed -E "s/^([0-9]+) /\1 0 corpus\//g"