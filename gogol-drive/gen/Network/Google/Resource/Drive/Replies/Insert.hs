{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Drive.Replies.Insert
    (
    -- * REST Resource
      RepliesInsertResource

    -- * Creating a Request
    , repliesInsert'
    , RepliesInsert'

    -- * Request Lenses
    , riQuotaUser
    , riPrettyPrint
    , riUserIP
    , riPayload
    , riKey
    , riFileId
    , riOAuthToken
    , riCommentId
    , riFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRepliesInsert@ which the
-- 'RepliesInsert'' request conforms to.
type RepliesInsertResource =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             "replies" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] CommentReply :>
                               Post '[JSON] CommentReply

-- | Creates a new reply to the given comment.
--
-- /See:/ 'repliesInsert'' smart constructor.
data RepliesInsert' = RepliesInsert'
    { _riQuotaUser   :: !(Maybe Text)
    , _riPrettyPrint :: !Bool
    , _riUserIP      :: !(Maybe Text)
    , _riPayload     :: !CommentReply
    , _riKey         :: !(Maybe Key)
    , _riFileId      :: !Text
    , _riOAuthToken  :: !(Maybe OAuthToken)
    , _riCommentId   :: !Text
    , _riFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riQuotaUser'
--
-- * 'riPrettyPrint'
--
-- * 'riUserIP'
--
-- * 'riPayload'
--
-- * 'riKey'
--
-- * 'riFileId'
--
-- * 'riOAuthToken'
--
-- * 'riCommentId'
--
-- * 'riFields'
repliesInsert'
    :: CommentReply -- ^ 'payload'
    -> Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesInsert'
repliesInsert' pRiPayload_ pRiFileId_ pRiCommentId_ =
    RepliesInsert'
    { _riQuotaUser = Nothing
    , _riPrettyPrint = True
    , _riUserIP = Nothing
    , _riPayload = pRiPayload_
    , _riKey = Nothing
    , _riFileId = pRiFileId_
    , _riOAuthToken = Nothing
    , _riCommentId = pRiCommentId_
    , _riFields = Nothing
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
riUserIP :: Lens' RepliesInsert' (Maybe Text)
riUserIP = lens _riUserIP (\ s a -> s{_riUserIP = a})

-- | Multipart request metadata.
riPayload :: Lens' RepliesInsert' CommentReply
riPayload
  = lens _riPayload (\ s a -> s{_riPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
riKey :: Lens' RepliesInsert' (Maybe Key)
riKey = lens _riKey (\ s a -> s{_riKey = a})

-- | The ID of the file.
riFileId :: Lens' RepliesInsert' Text
riFileId = lens _riFileId (\ s a -> s{_riFileId = a})

-- | OAuth 2.0 token for the current user.
riOAuthToken :: Lens' RepliesInsert' (Maybe OAuthToken)
riOAuthToken
  = lens _riOAuthToken (\ s a -> s{_riOAuthToken = a})

-- | The ID of the comment.
riCommentId :: Lens' RepliesInsert' Text
riCommentId
  = lens _riCommentId (\ s a -> s{_riCommentId = a})

-- | Selector specifying which fields to include in a partial response.
riFields :: Lens' RepliesInsert' (Maybe Text)
riFields = lens _riFields (\ s a -> s{_riFields = a})

instance GoogleAuth RepliesInsert' where
        authKey = riKey . _Just
        authToken = riOAuthToken . _Just

instance GoogleRequest RepliesInsert' where
        type Rs RepliesInsert' = CommentReply
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RepliesInsert'{..}
          = go _riFileId _riCommentId _riQuotaUser
              (Just _riPrettyPrint)
              _riUserIP
              _riFields
              _riKey
              _riOAuthToken
              (Just AltJSON)
              _riPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RepliesInsertResource)
                      r
                      u
