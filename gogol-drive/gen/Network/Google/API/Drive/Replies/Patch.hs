{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Replies.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing reply. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.replies.patch@.
module Network.Google.API.Drive.Replies.Patch
    (
    -- * REST Resource
      RepliesPatchAPI

    -- * Creating a Request
    , repliesPatch'
    , RepliesPatch'

    -- * Request Lenses
    , rpQuotaUser
    , rpPrettyPrint
    , rpUserIp
    , rpKey
    , rpReplyId
    , rpFileId
    , rpOauthToken
    , rpCommentId
    , rpFields
    , rpAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.replies.patch which the
-- 'RepliesPatch'' request conforms to.
type RepliesPatchAPI =
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
                             QueryParam "alt" Alt :> Patch '[JSON] CommentReply

-- | Updates an existing reply. This method supports patch semantics.
--
-- /See:/ 'repliesPatch'' smart constructor.
data RepliesPatch' = RepliesPatch'
    { _rpQuotaUser   :: !(Maybe Text)
    , _rpPrettyPrint :: !Bool
    , _rpUserIp      :: !(Maybe Text)
    , _rpKey         :: !(Maybe Text)
    , _rpReplyId     :: !Text
    , _rpFileId      :: !Text
    , _rpOauthToken  :: !(Maybe Text)
    , _rpCommentId   :: !Text
    , _rpFields      :: !(Maybe Text)
    , _rpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpQuotaUser'
--
-- * 'rpPrettyPrint'
--
-- * 'rpUserIp'
--
-- * 'rpKey'
--
-- * 'rpReplyId'
--
-- * 'rpFileId'
--
-- * 'rpOauthToken'
--
-- * 'rpCommentId'
--
-- * 'rpFields'
--
-- * 'rpAlt'
repliesPatch'
    :: Text -- ^ 'replyId'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesPatch'
repliesPatch' pRpReplyId_ pRpFileId_ pRpCommentId_ =
    RepliesPatch'
    { _rpQuotaUser = Nothing
    , _rpPrettyPrint = True
    , _rpUserIp = Nothing
    , _rpKey = Nothing
    , _rpReplyId = pRpReplyId_
    , _rpFileId = pRpFileId_
    , _rpOauthToken = Nothing
    , _rpCommentId = pRpCommentId_
    , _rpFields = Nothing
    , _rpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpQuotaUser :: Lens' RepliesPatch' (Maybe Text)
rpQuotaUser
  = lens _rpQuotaUser (\ s a -> s{_rpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpPrettyPrint :: Lens' RepliesPatch' Bool
rpPrettyPrint
  = lens _rpPrettyPrint
      (\ s a -> s{_rpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpUserIp :: Lens' RepliesPatch' (Maybe Text)
rpUserIp = lens _rpUserIp (\ s a -> s{_rpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpKey :: Lens' RepliesPatch' (Maybe Text)
rpKey = lens _rpKey (\ s a -> s{_rpKey = a})

-- | The ID of the reply.
rpReplyId :: Lens' RepliesPatch' Text
rpReplyId
  = lens _rpReplyId (\ s a -> s{_rpReplyId = a})

-- | The ID of the file.
rpFileId :: Lens' RepliesPatch' Text
rpFileId = lens _rpFileId (\ s a -> s{_rpFileId = a})

-- | OAuth 2.0 token for the current user.
rpOauthToken :: Lens' RepliesPatch' (Maybe Text)
rpOauthToken
  = lens _rpOauthToken (\ s a -> s{_rpOauthToken = a})

-- | The ID of the comment.
rpCommentId :: Lens' RepliesPatch' Text
rpCommentId
  = lens _rpCommentId (\ s a -> s{_rpCommentId = a})

-- | Selector specifying which fields to include in a partial response.
rpFields :: Lens' RepliesPatch' (Maybe Text)
rpFields = lens _rpFields (\ s a -> s{_rpFields = a})

-- | Data format for the response.
rpAlt :: Lens' RepliesPatch' Alt
rpAlt = lens _rpAlt (\ s a -> s{_rpAlt = a})

instance GoogleRequest RepliesPatch' where
        type Rs RepliesPatch' = CommentReply
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RepliesPatch'{..}
          = go _rpQuotaUser (Just _rpPrettyPrint) _rpUserIp
              _rpKey
              _rpReplyId
              _rpFileId
              _rpOauthToken
              _rpCommentId
              _rpFields
              (Just _rpAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy RepliesPatchAPI) r
                      u
