{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Replies.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing reply.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRepliesUpdate@.
module Drive.Replies.Update
    (
    -- * REST Resource
      RepliesUpdateAPI

    -- * Creating a Request
    , repliesUpdate
    , RepliesUpdate

    -- * Request Lenses
    , ruQuotaUser
    , ruPrettyPrint
    , ruUserIp
    , ruKey
    , ruReplyId
    , ruFileId
    , ruOauthToken
    , ruCommentId
    , ruFields
    , ruAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRepliesUpdate@ which the
-- 'RepliesUpdate' request conforms to.
type RepliesUpdateAPI =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             "replies" :>
               Capture "replyId" Text :> Put '[JSON] CommentReply

-- | Updates an existing reply.
--
-- /See:/ 'repliesUpdate' smart constructor.
data RepliesUpdate = RepliesUpdate
    { _ruQuotaUser   :: !(Maybe Text)
    , _ruPrettyPrint :: !Bool
    , _ruUserIp      :: !(Maybe Text)
    , _ruKey         :: !(Maybe Text)
    , _ruReplyId     :: !Text
    , _ruFileId      :: !Text
    , _ruOauthToken  :: !(Maybe Text)
    , _ruCommentId   :: !Text
    , _ruFields      :: !(Maybe Text)
    , _ruAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruQuotaUser'
--
-- * 'ruPrettyPrint'
--
-- * 'ruUserIp'
--
-- * 'ruKey'
--
-- * 'ruReplyId'
--
-- * 'ruFileId'
--
-- * 'ruOauthToken'
--
-- * 'ruCommentId'
--
-- * 'ruFields'
--
-- * 'ruAlt'
repliesUpdate
    :: Text -- ^ 'replyId'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesUpdate
repliesUpdate pRuReplyId_ pRuFileId_ pRuCommentId_ =
    RepliesUpdate
    { _ruQuotaUser = Nothing
    , _ruPrettyPrint = True
    , _ruUserIp = Nothing
    , _ruKey = Nothing
    , _ruReplyId = pRuReplyId_
    , _ruFileId = pRuFileId_
    , _ruOauthToken = Nothing
    , _ruCommentId = pRuCommentId_
    , _ruFields = Nothing
    , _ruAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ruQuotaUser :: Lens' RepliesUpdate' (Maybe Text)
ruQuotaUser
  = lens _ruQuotaUser (\ s a -> s{_ruQuotaUser = a})

-- | Returns response with indentations and line breaks.
ruPrettyPrint :: Lens' RepliesUpdate' Bool
ruPrettyPrint
  = lens _ruPrettyPrint
      (\ s a -> s{_ruPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ruUserIp :: Lens' RepliesUpdate' (Maybe Text)
ruUserIp = lens _ruUserIp (\ s a -> s{_ruUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ruKey :: Lens' RepliesUpdate' (Maybe Text)
ruKey = lens _ruKey (\ s a -> s{_ruKey = a})

-- | The ID of the reply.
ruReplyId :: Lens' RepliesUpdate' Text
ruReplyId
  = lens _ruReplyId (\ s a -> s{_ruReplyId = a})

-- | The ID of the file.
ruFileId :: Lens' RepliesUpdate' Text
ruFileId = lens _ruFileId (\ s a -> s{_ruFileId = a})

-- | OAuth 2.0 token for the current user.
ruOauthToken :: Lens' RepliesUpdate' (Maybe Text)
ruOauthToken
  = lens _ruOauthToken (\ s a -> s{_ruOauthToken = a})

-- | The ID of the comment.
ruCommentId :: Lens' RepliesUpdate' Text
ruCommentId
  = lens _ruCommentId (\ s a -> s{_ruCommentId = a})

-- | Selector specifying which fields to include in a partial response.
ruFields :: Lens' RepliesUpdate' (Maybe Text)
ruFields = lens _ruFields (\ s a -> s{_ruFields = a})

-- | Data format for the response.
ruAlt :: Lens' RepliesUpdate' Text
ruAlt = lens _ruAlt (\ s a -> s{_ruAlt = a})

instance GoogleRequest RepliesUpdate' where
        type Rs RepliesUpdate' = CommentReply
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RepliesUpdate{..}
          = go _ruQuotaUser _ruPrettyPrint _ruUserIp _ruKey
              _ruReplyId
              _ruFileId
              _ruOauthToken
              _ruCommentId
              _ruFields
              _ruAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RepliesUpdateAPI) r
                      u
