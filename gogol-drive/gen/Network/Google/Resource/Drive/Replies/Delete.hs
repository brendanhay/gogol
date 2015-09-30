{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Replies.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a reply.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRepliesDelete@.
module Drive.Replies.Delete
    (
    -- * REST Resource
      RepliesDeleteAPI

    -- * Creating a Request
    , repliesDelete
    , RepliesDelete

    -- * Request Lenses
    , rdQuotaUser
    , rdPrettyPrint
    , rdUserIp
    , rdKey
    , rdReplyId
    , rdFileId
    , rdOauthToken
    , rdCommentId
    , rdFields
    , rdAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRepliesDelete@ which the
-- 'RepliesDelete' request conforms to.
type RepliesDeleteAPI =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             "replies" :>
               Capture "replyId" Text :> Delete '[JSON] ()

-- | Deletes a reply.
--
-- /See:/ 'repliesDelete' smart constructor.
data RepliesDelete = RepliesDelete
    { _rdQuotaUser   :: !(Maybe Text)
    , _rdPrettyPrint :: !Bool
    , _rdUserIp      :: !(Maybe Text)
    , _rdKey         :: !(Maybe Text)
    , _rdReplyId     :: !Text
    , _rdFileId      :: !Text
    , _rdOauthToken  :: !(Maybe Text)
    , _rdCommentId   :: !Text
    , _rdFields      :: !(Maybe Text)
    , _rdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdQuotaUser'
--
-- * 'rdPrettyPrint'
--
-- * 'rdUserIp'
--
-- * 'rdKey'
--
-- * 'rdReplyId'
--
-- * 'rdFileId'
--
-- * 'rdOauthToken'
--
-- * 'rdCommentId'
--
-- * 'rdFields'
--
-- * 'rdAlt'
repliesDelete
    :: Text -- ^ 'replyId'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesDelete
repliesDelete pRdReplyId_ pRdFileId_ pRdCommentId_ =
    RepliesDelete
    { _rdQuotaUser = Nothing
    , _rdPrettyPrint = True
    , _rdUserIp = Nothing
    , _rdKey = Nothing
    , _rdReplyId = pRdReplyId_
    , _rdFileId = pRdFileId_
    , _rdOauthToken = Nothing
    , _rdCommentId = pRdCommentId_
    , _rdFields = Nothing
    , _rdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rdQuotaUser :: Lens' RepliesDelete' (Maybe Text)
rdQuotaUser
  = lens _rdQuotaUser (\ s a -> s{_rdQuotaUser = a})

-- | Returns response with indentations and line breaks.
rdPrettyPrint :: Lens' RepliesDelete' Bool
rdPrettyPrint
  = lens _rdPrettyPrint
      (\ s a -> s{_rdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rdUserIp :: Lens' RepliesDelete' (Maybe Text)
rdUserIp = lens _rdUserIp (\ s a -> s{_rdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rdKey :: Lens' RepliesDelete' (Maybe Text)
rdKey = lens _rdKey (\ s a -> s{_rdKey = a})

-- | The ID of the reply.
rdReplyId :: Lens' RepliesDelete' Text
rdReplyId
  = lens _rdReplyId (\ s a -> s{_rdReplyId = a})

-- | The ID of the file.
rdFileId :: Lens' RepliesDelete' Text
rdFileId = lens _rdFileId (\ s a -> s{_rdFileId = a})

-- | OAuth 2.0 token for the current user.
rdOauthToken :: Lens' RepliesDelete' (Maybe Text)
rdOauthToken
  = lens _rdOauthToken (\ s a -> s{_rdOauthToken = a})

-- | The ID of the comment.
rdCommentId :: Lens' RepliesDelete' Text
rdCommentId
  = lens _rdCommentId (\ s a -> s{_rdCommentId = a})

-- | Selector specifying which fields to include in a partial response.
rdFields :: Lens' RepliesDelete' (Maybe Text)
rdFields = lens _rdFields (\ s a -> s{_rdFields = a})

-- | Data format for the response.
rdAlt :: Lens' RepliesDelete' Text
rdAlt = lens _rdAlt (\ s a -> s{_rdAlt = a})

instance GoogleRequest RepliesDelete' where
        type Rs RepliesDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RepliesDelete{..}
          = go _rdQuotaUser _rdPrettyPrint _rdUserIp _rdKey
              _rdReplyId
              _rdFileId
              _rdOauthToken
              _rdCommentId
              _rdFields
              _rdAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RepliesDeleteAPI) r
                      u
