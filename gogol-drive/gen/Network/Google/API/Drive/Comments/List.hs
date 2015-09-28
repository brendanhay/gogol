{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Comments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a file\'s comments.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.comments.list@.
module Network.Google.API.Drive.Comments.List
    (
    -- * REST Resource
      CommentsListAPI

    -- * Creating a Request
    , commentsList'
    , CommentsList'

    -- * Request Lenses
    , clQuotaUser
    , clPrettyPrint
    , clUserIp
    , clKey
    , clUpdatedMin
    , clPageToken
    , clFileId
    , clOauthToken
    , clMaxResults
    , clIncludeDeleted
    , clFields
    , clAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.comments.list which the
-- 'CommentsList'' request conforms to.
type CommentsListAPI =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "updatedMin" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Int32 :>
                           QueryParam "includeDeleted" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Get '[JSON] CommentList

-- | Lists a file\'s comments.
--
-- /See:/ 'commentsList'' smart constructor.
data CommentsList' = CommentsList'
    { _clQuotaUser      :: !(Maybe Text)
    , _clPrettyPrint    :: !Bool
    , _clUserIp         :: !(Maybe Text)
    , _clKey            :: !(Maybe Text)
    , _clUpdatedMin     :: !(Maybe Text)
    , _clPageToken      :: !(Maybe Text)
    , _clFileId         :: !Text
    , _clOauthToken     :: !(Maybe Text)
    , _clMaxResults     :: !Int32
    , _clIncludeDeleted :: !Bool
    , _clFields         :: !(Maybe Text)
    , _clAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clUserIp'
--
-- * 'clKey'
--
-- * 'clUpdatedMin'
--
-- * 'clPageToken'
--
-- * 'clFileId'
--
-- * 'clOauthToken'
--
-- * 'clMaxResults'
--
-- * 'clIncludeDeleted'
--
-- * 'clFields'
--
-- * 'clAlt'
commentsList'
    :: Text -- ^ 'fileId'
    -> CommentsList'
commentsList' pClFileId_ =
    CommentsList'
    { _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clUserIp = Nothing
    , _clKey = Nothing
    , _clUpdatedMin = Nothing
    , _clPageToken = Nothing
    , _clFileId = pClFileId_
    , _clOauthToken = Nothing
    , _clMaxResults = 20
    , _clIncludeDeleted = False
    , _clFields = Nothing
    , _clAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' CommentsList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' CommentsList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clUserIp :: Lens' CommentsList' (Maybe Text)
clUserIp = lens _clUserIp (\ s a -> s{_clUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' CommentsList' (Maybe Text)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | Only discussions that were updated after this timestamp will be
-- returned. Formatted as an RFC 3339 timestamp.
clUpdatedMin :: Lens' CommentsList' (Maybe Text)
clUpdatedMin
  = lens _clUpdatedMin (\ s a -> s{_clUpdatedMin = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
clPageToken :: Lens' CommentsList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | The ID of the file.
clFileId :: Lens' CommentsList' Text
clFileId = lens _clFileId (\ s a -> s{_clFileId = a})

-- | OAuth 2.0 token for the current user.
clOauthToken :: Lens' CommentsList' (Maybe Text)
clOauthToken
  = lens _clOauthToken (\ s a -> s{_clOauthToken = a})

-- | The maximum number of discussions to include in the response, used for
-- paging.
clMaxResults :: Lens' CommentsList' Int32
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})

-- | If set, all comments and replies, including deleted comments and replies
-- (with content stripped) will be returned.
clIncludeDeleted :: Lens' CommentsList' Bool
clIncludeDeleted
  = lens _clIncludeDeleted
      (\ s a -> s{_clIncludeDeleted = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' CommentsList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | Data format for the response.
clAlt :: Lens' CommentsList' Alt
clAlt = lens _clAlt (\ s a -> s{_clAlt = a})

instance GoogleRequest CommentsList' where
        type Rs CommentsList' = CommentList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u CommentsList'{..}
          = go _clQuotaUser (Just _clPrettyPrint) _clUserIp
              _clKey
              _clUpdatedMin
              _clPageToken
              _clFileId
              _clOauthToken
              (Just _clMaxResults)
              (Just _clIncludeDeleted)
              _clFields
              (Just _clAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsListAPI) r
                      u
