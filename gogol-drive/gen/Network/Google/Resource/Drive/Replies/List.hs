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
-- Module      : Network.Google.Resource.Drive.Replies.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all of the replies to a comment.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveRepliesList@.
module Network.Google.Resource.Drive.Replies.List
    (
    -- * REST Resource
      RepliesListResource

    -- * Creating a Request
    , repliesList'
    , RepliesList'

    -- * Request Lenses
    , rllQuotaUser
    , rllPrettyPrint
    , rllUserIP
    , rllKey
    , rllPageToken
    , rllFileId
    , rllOAuthToken
    , rllCommentId
    , rllMaxResults
    , rllIncludeDeleted
    , rllFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveRepliesList@ which the
-- 'RepliesList'' request conforms to.
type RepliesListResource =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           Capture "commentId" Text :>
             "replies" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   QueryParam "includeDeleted" Bool :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] CommentReplyList

-- | Lists all of the replies to a comment.
--
-- /See:/ 'repliesList'' smart constructor.
data RepliesList' = RepliesList'
    { _rllQuotaUser      :: !(Maybe Text)
    , _rllPrettyPrint    :: !Bool
    , _rllUserIP         :: !(Maybe Text)
    , _rllKey            :: !(Maybe AuthKey)
    , _rllPageToken      :: !(Maybe Text)
    , _rllFileId         :: !Text
    , _rllOAuthToken     :: !(Maybe OAuthToken)
    , _rllCommentId      :: !Text
    , _rllMaxResults     :: !Int32
    , _rllIncludeDeleted :: !Bool
    , _rllFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rllQuotaUser'
--
-- * 'rllPrettyPrint'
--
-- * 'rllUserIP'
--
-- * 'rllKey'
--
-- * 'rllPageToken'
--
-- * 'rllFileId'
--
-- * 'rllOAuthToken'
--
-- * 'rllCommentId'
--
-- * 'rllMaxResults'
--
-- * 'rllIncludeDeleted'
--
-- * 'rllFields'
repliesList'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesList'
repliesList' pRllFileId_ pRllCommentId_ =
    RepliesList'
    { _rllQuotaUser = Nothing
    , _rllPrettyPrint = True
    , _rllUserIP = Nothing
    , _rllKey = Nothing
    , _rllPageToken = Nothing
    , _rllFileId = pRllFileId_
    , _rllOAuthToken = Nothing
    , _rllCommentId = pRllCommentId_
    , _rllMaxResults = 20
    , _rllIncludeDeleted = False
    , _rllFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rllQuotaUser :: Lens' RepliesList' (Maybe Text)
rllQuotaUser
  = lens _rllQuotaUser (\ s a -> s{_rllQuotaUser = a})

-- | Returns response with indentations and line breaks.
rllPrettyPrint :: Lens' RepliesList' Bool
rllPrettyPrint
  = lens _rllPrettyPrint
      (\ s a -> s{_rllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rllUserIP :: Lens' RepliesList' (Maybe Text)
rllUserIP
  = lens _rllUserIP (\ s a -> s{_rllUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rllKey :: Lens' RepliesList' (Maybe AuthKey)
rllKey = lens _rllKey (\ s a -> s{_rllKey = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
rllPageToken :: Lens' RepliesList' (Maybe Text)
rllPageToken
  = lens _rllPageToken (\ s a -> s{_rllPageToken = a})

-- | The ID of the file.
rllFileId :: Lens' RepliesList' Text
rllFileId
  = lens _rllFileId (\ s a -> s{_rllFileId = a})

-- | OAuth 2.0 token for the current user.
rllOAuthToken :: Lens' RepliesList' (Maybe OAuthToken)
rllOAuthToken
  = lens _rllOAuthToken
      (\ s a -> s{_rllOAuthToken = a})

-- | The ID of the comment.
rllCommentId :: Lens' RepliesList' Text
rllCommentId
  = lens _rllCommentId (\ s a -> s{_rllCommentId = a})

-- | The maximum number of replies to include in the response, used for
-- paging.
rllMaxResults :: Lens' RepliesList' Int32
rllMaxResults
  = lens _rllMaxResults
      (\ s a -> s{_rllMaxResults = a})

-- | If set, all replies, including deleted replies (with content stripped)
-- will be returned.
rllIncludeDeleted :: Lens' RepliesList' Bool
rllIncludeDeleted
  = lens _rllIncludeDeleted
      (\ s a -> s{_rllIncludeDeleted = a})

-- | Selector specifying which fields to include in a partial response.
rllFields :: Lens' RepliesList' (Maybe Text)
rllFields
  = lens _rllFields (\ s a -> s{_rllFields = a})

instance GoogleAuth RepliesList' where
        authKey = rllKey . _Just
        authToken = rllOAuthToken . _Just

instance GoogleRequest RepliesList' where
        type Rs RepliesList' = CommentReplyList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RepliesList'{..}
          = go _rllFileId _rllCommentId _rllPageToken
              (Just _rllMaxResults)
              (Just _rllIncludeDeleted)
              _rllQuotaUser
              (Just _rllPrettyPrint)
              _rllUserIP
              _rllFields
              _rllKey
              _rllOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RepliesListResource)
                      r
                      u
