{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Replies.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new reply to the given comment.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRepliesInsert@.
module Drive.Replies.Insert
    (
    -- * REST Resource
      RepliesInsertAPI

    -- * Creating a Request
    , repliesInsert
    , RepliesInsert

    -- * Request Lenses
    , riQuotaUser
    , riPrettyPrint
    , riUserIp
    , riKey
    , riFileId
    , riOauthToken
    , riCommentId
    , riFields
    , riAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRepliesInsert@ which the
-- 'RepliesInsert' request conforms to.
type RepliesInsertAPI =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             "replies" :> Post '[JSON] CommentReply

-- | Creates a new reply to the given comment.
--
-- /See:/ 'repliesInsert' smart constructor.
data RepliesInsert = RepliesInsert
    { _riQuotaUser   :: !(Maybe Text)
    , _riPrettyPrint :: !Bool
    , _riUserIp      :: !(Maybe Text)
    , _riKey         :: !(Maybe Text)
    , _riFileId      :: !Text
    , _riOauthToken  :: !(Maybe Text)
    , _riCommentId   :: !Text
    , _riFields      :: !(Maybe Text)
    , _riAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riQuotaUser'
--
-- * 'riPrettyPrint'
--
-- * 'riUserIp'
--
-- * 'riKey'
--
-- * 'riFileId'
--
-- * 'riOauthToken'
--
-- * 'riCommentId'
--
-- * 'riFields'
--
-- * 'riAlt'
repliesInsert
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesInsert
repliesInsert pRiFileId_ pRiCommentId_ =
    RepliesInsert
    { _riQuotaUser = Nothing
    , _riPrettyPrint = True
    , _riUserIp = Nothing
    , _riKey = Nothing
    , _riFileId = pRiFileId_
    , _riOauthToken = Nothing
    , _riCommentId = pRiCommentId_
    , _riFields = Nothing
    , _riAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
riQuotaUser :: Lens' RepliesInsert' (Maybe Text)
riQuotaUser
  = lens _riQuotaUser (\ s a -> s{_riQuotaUser = a})

-- | Returns response with indentations and line breaks.
riPrettyPrint :: Lens' RepliesInsert' Bool
riPrettyPrint
  = lens _riPrettyPrint
      (\ s a -> s{_riPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
riUserIp :: Lens' RepliesInsert' (Maybe Text)
riUserIp = lens _riUserIp (\ s a -> s{_riUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
riKey :: Lens' RepliesInsert' (Maybe Text)
riKey = lens _riKey (\ s a -> s{_riKey = a})

-- | The ID of the file.
riFileId :: Lens' RepliesInsert' Text
riFileId = lens _riFileId (\ s a -> s{_riFileId = a})

-- | OAuth 2.0 token for the current user.
riOauthToken :: Lens' RepliesInsert' (Maybe Text)
riOauthToken
  = lens _riOauthToken (\ s a -> s{_riOauthToken = a})

-- | The ID of the comment.
riCommentId :: Lens' RepliesInsert' Text
riCommentId
  = lens _riCommentId (\ s a -> s{_riCommentId = a})

-- | Selector specifying which fields to include in a partial response.
riFields :: Lens' RepliesInsert' (Maybe Text)
riFields = lens _riFields (\ s a -> s{_riFields = a})

-- | Data format for the response.
riAlt :: Lens' RepliesInsert' Text
riAlt = lens _riAlt (\ s a -> s{_riAlt = a})

instance GoogleRequest RepliesInsert' where
        type Rs RepliesInsert' = CommentReply
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RepliesInsert{..}
          = go _riQuotaUser _riPrettyPrint _riUserIp _riKey
              _riFileId
              _riOauthToken
              _riCommentId
              _riFields
              _riAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RepliesInsertAPI) r
                      u
