{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
module Network.Google.Resource.Drive.Replies.Update
    (
    -- * REST Resource
      RepliesUpdateResource

    -- * Creating a Request
    , repliesUpdate'
    , RepliesUpdate'

    -- * Request Lenses
    , repQuotaUser
    , repPrettyPrint
    , repUserIP
    , repPayload
    , repKey
    , repReplyId
    , repFileId
    , repOAuthToken
    , repCommentId
    , repFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRepliesUpdate@ method which the
-- 'RepliesUpdate'' request conforms to.
type RepliesUpdateResource =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             "replies" :>
               Capture "replyId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           Header "Authorization" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] CommentReply :>
                                 Put '[JSON] CommentReply

-- | Updates an existing reply.
--
-- /See:/ 'repliesUpdate'' smart constructor.
data RepliesUpdate' = RepliesUpdate'
    { _repQuotaUser   :: !(Maybe Text)
    , _repPrettyPrint :: !Bool
    , _repUserIP      :: !(Maybe Text)
    , _repPayload     :: !CommentReply
    , _repKey         :: !(Maybe AuthKey)
    , _repReplyId     :: !Text
    , _repFileId      :: !Text
    , _repOAuthToken  :: !(Maybe OAuthToken)
    , _repCommentId   :: !Text
    , _repFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'repQuotaUser'
--
-- * 'repPrettyPrint'
--
-- * 'repUserIP'
--
-- * 'repPayload'
--
-- * 'repKey'
--
-- * 'repReplyId'
--
-- * 'repFileId'
--
-- * 'repOAuthToken'
--
-- * 'repCommentId'
--
-- * 'repFields'
repliesUpdate'
    :: CommentReply -- ^ 'payload'
    -> Text -- ^ 'replyId'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesUpdate'
repliesUpdate' pRepPayload_ pRepReplyId_ pRepFileId_ pRepCommentId_ =
    RepliesUpdate'
    { _repQuotaUser = Nothing
    , _repPrettyPrint = True
    , _repUserIP = Nothing
    , _repPayload = pRepPayload_
    , _repKey = Nothing
    , _repReplyId = pRepReplyId_
    , _repFileId = pRepFileId_
    , _repOAuthToken = Nothing
    , _repCommentId = pRepCommentId_
    , _repFields = Nothing
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
repUserIP :: Lens' RepliesUpdate' (Maybe Text)
repUserIP
  = lens _repUserIP (\ s a -> s{_repUserIP = a})

-- | Multipart request metadata.
repPayload :: Lens' RepliesUpdate' CommentReply
repPayload
  = lens _repPayload (\ s a -> s{_repPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
repKey :: Lens' RepliesUpdate' (Maybe AuthKey)
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
repOAuthToken :: Lens' RepliesUpdate' (Maybe OAuthToken)
repOAuthToken
  = lens _repOAuthToken
      (\ s a -> s{_repOAuthToken = a})

-- | The ID of the comment.
repCommentId :: Lens' RepliesUpdate' Text
repCommentId
  = lens _repCommentId (\ s a -> s{_repCommentId = a})

-- | Selector specifying which fields to include in a partial response.
repFields :: Lens' RepliesUpdate' (Maybe Text)
repFields
  = lens _repFields (\ s a -> s{_repFields = a})

instance GoogleAuth RepliesUpdate' where
        _AuthKey = repKey . _Just
        _AuthToken = repOAuthToken . _Just

instance GoogleRequest RepliesUpdate' where
        type Rs RepliesUpdate' = CommentReply
        request = requestWith driveRequest
        requestWith rq RepliesUpdate'{..}
          = go _repFileId _repCommentId _repReplyId
              _repQuotaUser
              (Just _repPrettyPrint)
              _repUserIP
              _repFields
              _repKey
              _repOAuthToken
              (Just AltJSON)
              _repPayload
          where go
                  = clientBuild (Proxy :: Proxy RepliesUpdateResource)
                      rq
