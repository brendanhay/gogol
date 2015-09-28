{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Replies.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all of the replies to a comment.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.replies.list@.
module Network.Google.API.Drive.Replies.List
    (
    -- * REST Resource
      RepliesListAPI

    -- * Creating a Request
    , repliesList'
    , RepliesList'

    -- * Request Lenses
    , rQuotaUser
    , rPrettyPrint
    , rUserIp
    , rKey
    , rPageToken
    , rFileId
    , rOauthToken
    , rCommentId
    , rMaxResults
    , rIncludeDeleted
    , rFields
    , rAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.replies.list which the
-- 'RepliesList'' request conforms to.
type RepliesListAPI =
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
    { _rQuotaUser      :: !(Maybe Text)
    , _rPrettyPrint    :: !Bool
    , _rUserIp         :: !(Maybe Text)
    , _rKey            :: !(Maybe Text)
    , _rPageToken      :: !(Maybe Text)
    , _rFileId         :: !Text
    , _rOauthToken     :: !(Maybe Text)
    , _rCommentId      :: !Text
    , _rMaxResults     :: !Int32
    , _rIncludeDeleted :: !Bool
    , _rFields         :: !(Maybe Text)
    , _rAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rUserIp'
--
-- * 'rKey'
--
-- * 'rPageToken'
--
-- * 'rFileId'
--
-- * 'rOauthToken'
--
-- * 'rCommentId'
--
-- * 'rMaxResults'
--
-- * 'rIncludeDeleted'
--
-- * 'rFields'
--
-- * 'rAlt'
repliesList'
    :: Text -- ^ 'fileId'
    -> Text -- ^ 'commentId'
    -> RepliesList'
repliesList' pRFileId_ pRCommentId_ =
    RepliesList'
    { _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rUserIp = Nothing
    , _rKey = Nothing
    , _rPageToken = Nothing
    , _rFileId = pRFileId_
    , _rOauthToken = Nothing
    , _rCommentId = pRCommentId_
    , _rMaxResults = 20
    , _rIncludeDeleted = False
    , _rFields = Nothing
    , _rAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rQuotaUser :: Lens' RepliesList' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' RepliesList' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIp :: Lens' RepliesList' (Maybe Text)
rUserIp = lens _rUserIp (\ s a -> s{_rUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' RepliesList' (Maybe Text)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
rPageToken :: Lens' RepliesList' (Maybe Text)
rPageToken
  = lens _rPageToken (\ s a -> s{_rPageToken = a})

-- | The ID of the file.
rFileId :: Lens' RepliesList' Text
rFileId = lens _rFileId (\ s a -> s{_rFileId = a})

-- | OAuth 2.0 token for the current user.
rOauthToken :: Lens' RepliesList' (Maybe Text)
rOauthToken
  = lens _rOauthToken (\ s a -> s{_rOauthToken = a})

-- | The ID of the comment.
rCommentId :: Lens' RepliesList' Text
rCommentId
  = lens _rCommentId (\ s a -> s{_rCommentId = a})

-- | The maximum number of replies to include in the response, used for
-- paging.
rMaxResults :: Lens' RepliesList' Int32
rMaxResults
  = lens _rMaxResults (\ s a -> s{_rMaxResults = a})

-- | If set, all replies, including deleted replies (with content stripped)
-- will be returned.
rIncludeDeleted :: Lens' RepliesList' Bool
rIncludeDeleted
  = lens _rIncludeDeleted
      (\ s a -> s{_rIncludeDeleted = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' RepliesList' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

-- | Data format for the response.
rAlt :: Lens' RepliesList' Alt
rAlt = lens _rAlt (\ s a -> s{_rAlt = a})

instance GoogleRequest RepliesList' where
        type Rs RepliesList' = CommentReplyList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u RepliesList'{..}
          = go _rQuotaUser (Just _rPrettyPrint) _rUserIp _rKey
              _rPageToken
              _rFileId
              _rOauthToken
              _rCommentId
              (Just _rMaxResults)
              (Just _rIncludeDeleted)
              _rFields
              (Just _rAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy RepliesListAPI) r u
