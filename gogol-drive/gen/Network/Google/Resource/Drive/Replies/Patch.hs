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
-- Module      : Network.Google.Resource.Drive.Replies.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing reply. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRepliesPatch@.
module Network.Google.Resource.Drive.Replies.Patch
    (
    -- * REST Resource
      RepliesPatchResource

    -- * Creating a Request
    , repliesPatch'
    , RepliesPatch'

    -- * Request Lenses
    , rpQuotaUser
    , rpPrettyPrint
    , rpUserIP
    , rpCommentReply
    , rpKey
    , rpReplyId
    , rpFileId
    , rpOAuthToken
    , rpCommentId
    , rpFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRepliesPatch@ which the
-- 'RepliesPatch'' request conforms to.
type RepliesPatchResource =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             "replies" :>
               Capture "replyId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] CommentReply :>
                                 Patch '[JSON] CommentReply

-- | Updates an existing reply. This method supports patch semantics.
--
-- /See:/ 'repliesPatch'' smart constructor.
data RepliesPatch' = RepliesPatch'
    { _rpQuotaUser    :: !(Maybe Text)
    , _rpPrettyPrint  :: !Bool
    , _rpUserIP       :: !(Maybe Text)
    , _rpCommentReply :: !CommentReply
    , _rpKey          :: !(Maybe Key)
    , _rpReplyId      :: !Text
    , _rpFileId       :: !Text
    , _rpOAuthToken   :: !(Maybe OAuthToken)
    , _rpCommentId    :: !Text
    , _rpFields       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpQuotaUser'
--
-- * 'rpPrettyPrint'
--
-- * 'rpUserIP'
--
-- * 'rpCommentReply'
--
-- * 'rpKey'
--
-- * 'rpReplyId'
--
-- * 'rpFileId'
--
-- * 'rpOAuthToken'
--
-- * 'rpCommentId'
--
-- * 'rpFields'
repliesPatch'
    :: CommentReply -- ^ 'CommentReply'
    -> Text -- ^ 'replyId'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesPatch'
repliesPatch' pRpCommentReply_ pRpReplyId_ pRpFileId_ pRpCommentId_ =
    RepliesPatch'
    { _rpQuotaUser = Nothing
    , _rpPrettyPrint = True
    , _rpUserIP = Nothing
    , _rpCommentReply = pRpCommentReply_
    , _rpKey = Nothing
    , _rpReplyId = pRpReplyId_
    , _rpFileId = pRpFileId_
    , _rpOAuthToken = Nothing
    , _rpCommentId = pRpCommentId_
    , _rpFields = Nothing
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
rpUserIP :: Lens' RepliesPatch' (Maybe Text)
rpUserIP = lens _rpUserIP (\ s a -> s{_rpUserIP = a})

-- | Multipart request metadata.
rpCommentReply :: Lens' RepliesPatch' CommentReply
rpCommentReply
  = lens _rpCommentReply
      (\ s a -> s{_rpCommentReply = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpKey :: Lens' RepliesPatch' (Maybe Key)
rpKey = lens _rpKey (\ s a -> s{_rpKey = a})

-- | The ID of the reply.
rpReplyId :: Lens' RepliesPatch' Text
rpReplyId
  = lens _rpReplyId (\ s a -> s{_rpReplyId = a})

-- | The ID of the file.
rpFileId :: Lens' RepliesPatch' Text
rpFileId = lens _rpFileId (\ s a -> s{_rpFileId = a})

-- | OAuth 2.0 token for the current user.
rpOAuthToken :: Lens' RepliesPatch' (Maybe OAuthToken)
rpOAuthToken
  = lens _rpOAuthToken (\ s a -> s{_rpOAuthToken = a})

-- | The ID of the comment.
rpCommentId :: Lens' RepliesPatch' Text
rpCommentId
  = lens _rpCommentId (\ s a -> s{_rpCommentId = a})

-- | Selector specifying which fields to include in a partial response.
rpFields :: Lens' RepliesPatch' (Maybe Text)
rpFields = lens _rpFields (\ s a -> s{_rpFields = a})

instance GoogleAuth RepliesPatch' where
        authKey = rpKey . _Just
        authToken = rpOAuthToken . _Just

instance GoogleRequest RepliesPatch' where
        type Rs RepliesPatch' = CommentReply
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RepliesPatch'{..}
          = go _rpQuotaUser (Just _rpPrettyPrint) _rpUserIP
              _rpKey
              _rpReplyId
              _rpFileId
              _rpOAuthToken
              _rpCommentId
              _rpFields
              (Just AltJSON)
              _rpCommentReply
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RepliesPatchResource)
                      r
                      u
