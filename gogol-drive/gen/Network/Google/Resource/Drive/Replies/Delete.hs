{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Drive.Replies.Delete
    (
    -- * REST Resource
      RepliesDeleteResource

    -- * Creating a Request
    , repliesDelete'
    , RepliesDelete'

    -- * Request Lenses
    , rddQuotaUser
    , rddPrettyPrint
    , rddUserIp
    , rddKey
    , rddReplyId
    , rddFileId
    , rddOauthToken
    , rddCommentId
    , rddFields
    , rddAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRepliesDelete@ which the
-- 'RepliesDelete'' request conforms to.
type RepliesDeleteResource =
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
                             QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a reply.
--
-- /See:/ 'repliesDelete'' smart constructor.
data RepliesDelete' = RepliesDelete'
    { _rddQuotaUser   :: !(Maybe Text)
    , _rddPrettyPrint :: !Bool
    , _rddUserIp      :: !(Maybe Text)
    , _rddKey         :: !(Maybe Text)
    , _rddReplyId     :: !Text
    , _rddFileId      :: !Text
    , _rddOauthToken  :: !(Maybe Text)
    , _rddCommentId   :: !Text
    , _rddFields      :: !(Maybe Text)
    , _rddAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rddQuotaUser'
--
-- * 'rddPrettyPrint'
--
-- * 'rddUserIp'
--
-- * 'rddKey'
--
-- * 'rddReplyId'
--
-- * 'rddFileId'
--
-- * 'rddOauthToken'
--
-- * 'rddCommentId'
--
-- * 'rddFields'
--
-- * 'rddAlt'
repliesDelete'
    :: Text -- ^ 'replyId'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesDelete'
repliesDelete' pRddReplyId_ pRddFileId_ pRddCommentId_ =
    RepliesDelete'
    { _rddQuotaUser = Nothing
    , _rddPrettyPrint = True
    , _rddUserIp = Nothing
    , _rddKey = Nothing
    , _rddReplyId = pRddReplyId_
    , _rddFileId = pRddFileId_
    , _rddOauthToken = Nothing
    , _rddCommentId = pRddCommentId_
    , _rddFields = Nothing
    , _rddAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rddQuotaUser :: Lens' RepliesDelete' (Maybe Text)
rddQuotaUser
  = lens _rddQuotaUser (\ s a -> s{_rddQuotaUser = a})

-- | Returns response with indentations and line breaks.
rddPrettyPrint :: Lens' RepliesDelete' Bool
rddPrettyPrint
  = lens _rddPrettyPrint
      (\ s a -> s{_rddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rddUserIp :: Lens' RepliesDelete' (Maybe Text)
rddUserIp
  = lens _rddUserIp (\ s a -> s{_rddUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rddKey :: Lens' RepliesDelete' (Maybe Text)
rddKey = lens _rddKey (\ s a -> s{_rddKey = a})

-- | The ID of the reply.
rddReplyId :: Lens' RepliesDelete' Text
rddReplyId
  = lens _rddReplyId (\ s a -> s{_rddReplyId = a})

-- | The ID of the file.
rddFileId :: Lens' RepliesDelete' Text
rddFileId
  = lens _rddFileId (\ s a -> s{_rddFileId = a})

-- | OAuth 2.0 token for the current user.
rddOauthToken :: Lens' RepliesDelete' (Maybe Text)
rddOauthToken
  = lens _rddOauthToken
      (\ s a -> s{_rddOauthToken = a})

-- | The ID of the comment.
rddCommentId :: Lens' RepliesDelete' Text
rddCommentId
  = lens _rddCommentId (\ s a -> s{_rddCommentId = a})

-- | Selector specifying which fields to include in a partial response.
rddFields :: Lens' RepliesDelete' (Maybe Text)
rddFields
  = lens _rddFields (\ s a -> s{_rddFields = a})

-- | Data format for the response.
rddAlt :: Lens' RepliesDelete' Alt
rddAlt = lens _rddAlt (\ s a -> s{_rddAlt = a})

instance GoogleRequest RepliesDelete' where
        type Rs RepliesDelete' = ()
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RepliesDelete'{..}
          = go _rddQuotaUser (Just _rddPrettyPrint) _rddUserIp
              _rddKey
              _rddReplyId
              _rddFileId
              _rddOauthToken
              _rddCommentId
              _rddFields
              (Just _rddAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RepliesDeleteResource)
                      r
                      u
