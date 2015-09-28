{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Replies.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing reply.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.replies.update@.
module Network.Google.API.Drive.Replies.Update
    (
    -- * REST Resource
      RepliesUpdateAPI

    -- * Creating a Request
    , repliesUpdate'
    , RepliesUpdate'

    -- * Request Lenses
    , repQuotaUser
    , repPrettyPrint
    , repUserIp
    , repKey
    , repReplyId
    , repFileId
    , repOauthToken
    , repCommentId
    , repFields
    , repAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.replies.update which the
-- 'RepliesUpdate'' request conforms to.
type RepliesUpdateAPI =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             "replies" :>
               Capture "replyId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Put '[JSON] CommentReply

-- | Updates an existing reply.
--
-- /See:/ 'repliesUpdate'' smart constructor.
data RepliesUpdate' = RepliesUpdate'
    { _repQuotaUser   :: !(Maybe Text)
    , _repPrettyPrint :: !Bool
    , _repUserIp      :: !(Maybe Text)
    , _repKey         :: !(Maybe Text)
    , _repReplyId     :: !Text
    , _repFileId      :: !Text
    , _repOauthToken  :: !(Maybe Text)
    , _repCommentId   :: !Text
    , _repFields      :: !(Maybe Text)
    , _repAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'repQuotaUser'
--
-- * 'repPrettyPrint'
--
-- * 'repUserIp'
--
-- * 'repKey'
--
-- * 'repReplyId'
--
-- * 'repFileId'
--
-- * 'repOauthToken'
--
-- * 'repCommentId'
--
-- * 'repFields'
--
-- * 'repAlt'
repliesUpdate'
    :: Text -- ^ 'replyId'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesUpdate'
repliesUpdate' pRepReplyId_ pRepFileId_ pRepCommentId_ =
    RepliesUpdate'
    { _repQuotaUser = Nothing
    , _repPrettyPrint = True
    , _repUserIp = Nothing
    , _repKey = Nothing
    , _repReplyId = pRepReplyId_
    , _repFileId = pRepFileId_
    , _repOauthToken = Nothing
    , _repCommentId = pRepCommentId_
    , _repFields = Nothing
    , _repAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
repQuotaUser :: Lens' RepliesUpdate' (Maybe Text)
repQuotaUser
  = lens _repQuotaUser (\ s a -> s{_repQuotaUser = a})

-- | Returns response with indentations and line breaks.
repPrettyPrint :: Lens' RepliesUpdate' Bool
repPrettyPrint
  = lens _repPrettyPrint
      (\ s a -> s{_repPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
repUserIp :: Lens' RepliesUpdate' (Maybe Text)
repUserIp
  = lens _repUserIp (\ s a -> s{_repUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
repKey :: Lens' RepliesUpdate' (Maybe Text)
repKey = lens _repKey (\ s a -> s{_repKey = a})

-- | The ID of the reply.
repReplyId :: Lens' RepliesUpdate' Text
repReplyId
  = lens _repReplyId (\ s a -> s{_repReplyId = a})

-- | The ID of the file.
repFileId :: Lens' RepliesUpdate' Text
repFileId
  = lens _repFileId (\ s a -> s{_repFileId = a})

-- | OAuth 2.0 token for the current user.
repOauthToken :: Lens' RepliesUpdate' (Maybe Text)
repOauthToken
  = lens _repOauthToken
      (\ s a -> s{_repOauthToken = a})

-- | The ID of the comment.
repCommentId :: Lens' RepliesUpdate' Text
repCommentId
  = lens _repCommentId (\ s a -> s{_repCommentId = a})

-- | Selector specifying which fields to include in a partial response.
repFields :: Lens' RepliesUpdate' (Maybe Text)
repFields
  = lens _repFields (\ s a -> s{_repFields = a})

-- | Data format for the response.
repAlt :: Lens' RepliesUpdate' Alt
repAlt = lens _repAlt (\ s a -> s{_repAlt = a})

instance GoogleRequest RepliesUpdate' where
        type Rs RepliesUpdate' = CommentReply
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RepliesUpdate'{..}
          = go _repQuotaUser (Just _repPrettyPrint) _repUserIp
              _repKey
              _repReplyId
              _repFileId
              _repOauthToken
              _repCommentId
              _repFields
              (Just _repAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy RepliesUpdateAPI) r
                      u
