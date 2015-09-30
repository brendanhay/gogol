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
    , rllUserIp
    , rllKey
    , rllPageToken
    , rllFileId
    , rllOauthToken
    , rllCommentId
    , rllMaxResults
    , rllIncludeDeleted
    , rllFields
    , rllAlt
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
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "maxResults" Int32 :>
                             QueryParam "includeDeleted" Bool :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :>
                                   Get '[JSON] CommentReplyList

-- | Lists all of the replies to a comment.
--
-- /See:/ 'repliesList'' smart constructor.
data RepliesList' = RepliesList'
    { _rllQuotaUser      :: !(Maybe Text)
    , _rllPrettyPrint    :: !Bool
    , _rllUserIp         :: !(Maybe Text)
    , _rllKey            :: !(Maybe Text)
    , _rllPageToken      :: !(Maybe Text)
    , _rllFileId         :: !Text
    , _rllOauthToken     :: !(Maybe Text)
    , _rllCommentId      :: !Text
    , _rllMaxResults     :: !Int32
    , _rllIncludeDeleted :: !Bool
    , _rllFields         :: !(Maybe Text)
    , _rllAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rllQuotaUser'
--
-- * 'rllPrettyPrint'
--
-- * 'rllUserIp'
--
-- * 'rllKey'
--
-- * 'rllPageToken'
--
-- * 'rllFileId'
--
-- * 'rllOauthToken'
--
-- * 'rllCommentId'
--
-- * 'rllMaxResults'
--
-- * 'rllIncludeDeleted'
--
-- * 'rllFields'
--
-- * 'rllAlt'
repliesList'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesList'
repliesList' pRllFileId_ pRllCommentId_ =
    RepliesList'
    { _rllQuotaUser = Nothing
    , _rllPrettyPrint = True
    , _rllUserIp = Nothing
    , _rllKey = Nothing
    , _rllPageToken = Nothing
    , _rllFileId = pRllFileId_
    , _rllOauthToken = Nothing
    , _rllCommentId = pRllCommentId_
    , _rllMaxResults = 20
    , _rllIncludeDeleted = False
    , _rllFields = Nothing
    , _rllAlt = JSON
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
rllUserIp :: Lens' RepliesList' (Maybe Text)
rllUserIp
  = lens _rllUserIp (\ s a -> s{_rllUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rllKey :: Lens' RepliesList' (Maybe Text)
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
rllOauthToken :: Lens' RepliesList' (Maybe Text)
rllOauthToken
  = lens _rllOauthToken
      (\ s a -> s{_rllOauthToken = a})

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

-- | Data format for the response.
rllAlt :: Lens' RepliesList' Alt
rllAlt = lens _rllAlt (\ s a -> s{_rllAlt = a})

instance GoogleRequest RepliesList' where
        type Rs RepliesList' = CommentReplyList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RepliesList'{..}
          = go _rllQuotaUser (Just _rllPrettyPrint) _rllUserIp
              _rllKey
              _rllPageToken
              _rllFileId
              _rllOauthToken
              _rllCommentId
              (Just _rllMaxResults)
              (Just _rllIncludeDeleted)
              _rllFields
              (Just _rllAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RepliesListResource)
                      r
                      u
