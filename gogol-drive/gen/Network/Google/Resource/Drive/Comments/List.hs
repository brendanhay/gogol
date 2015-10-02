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
-- Module      : Network.Google.Resource.Drive.Comments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a file\'s comments.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveCommentsList@.
module Network.Google.Resource.Drive.Comments.List
    (
    -- * REST Resource
      CommentsListResource

    -- * Creating a Request
    , commentsList'
    , CommentsList'

    -- * Request Lenses
    , comQuotaUser
    , comPrettyPrint
    , comUserIP
    , comKey
    , comUpdatedMin
    , comPageToken
    , comFileId
    , comOAuthToken
    , comMaxResults
    , comIncludeDeleted
    , comFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveCommentsList@ which the
-- 'CommentsList'' request conforms to.
type CommentsListResource =
     "files" :>
       Capture "fileId" Text :>
         "comments" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "updatedMin" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "maxResults" Int32 :>
                           QueryParam "includeDeleted" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] CommentList

-- | Lists a file\'s comments.
--
-- /See:/ 'commentsList'' smart constructor.
data CommentsList' = CommentsList'
    { _comQuotaUser      :: !(Maybe Text)
    , _comPrettyPrint    :: !Bool
    , _comUserIP         :: !(Maybe Text)
    , _comKey            :: !(Maybe Key)
    , _comUpdatedMin     :: !(Maybe Text)
    , _comPageToken      :: !(Maybe Text)
    , _comFileId         :: !Text
    , _comOAuthToken     :: !(Maybe OAuthToken)
    , _comMaxResults     :: !Int32
    , _comIncludeDeleted :: !Bool
    , _comFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comQuotaUser'
--
-- * 'comPrettyPrint'
--
-- * 'comUserIP'
--
-- * 'comKey'
--
-- * 'comUpdatedMin'
--
-- * 'comPageToken'
--
-- * 'comFileId'
--
-- * 'comOAuthToken'
--
-- * 'comMaxResults'
--
-- * 'comIncludeDeleted'
--
-- * 'comFields'
commentsList'
    :: Text -- ^ 'fileId'
    -> CommentsList'
commentsList' pComFileId_ =
    CommentsList'
    { _comQuotaUser = Nothing
    , _comPrettyPrint = True
    , _comUserIP = Nothing
    , _comKey = Nothing
    , _comUpdatedMin = Nothing
    , _comPageToken = Nothing
    , _comFileId = pComFileId_
    , _comOAuthToken = Nothing
    , _comMaxResults = 20
    , _comIncludeDeleted = False
    , _comFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
comQuotaUser :: Lens' CommentsList' (Maybe Text)
comQuotaUser
  = lens _comQuotaUser (\ s a -> s{_comQuotaUser = a})

-- | Returns response with indentations and line breaks.
comPrettyPrint :: Lens' CommentsList' Bool
comPrettyPrint
  = lens _comPrettyPrint
      (\ s a -> s{_comPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
comUserIP :: Lens' CommentsList' (Maybe Text)
comUserIP
  = lens _comUserIP (\ s a -> s{_comUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
comKey :: Lens' CommentsList' (Maybe Key)
comKey = lens _comKey (\ s a -> s{_comKey = a})

-- | Only discussions that were updated after this timestamp will be
-- returned. Formatted as an RFC 3339 timestamp.
comUpdatedMin :: Lens' CommentsList' (Maybe Text)
comUpdatedMin
  = lens _comUpdatedMin
      (\ s a -> s{_comUpdatedMin = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
comPageToken :: Lens' CommentsList' (Maybe Text)
comPageToken
  = lens _comPageToken (\ s a -> s{_comPageToken = a})

-- | The ID of the file.
comFileId :: Lens' CommentsList' Text
comFileId
  = lens _comFileId (\ s a -> s{_comFileId = a})

-- | OAuth 2.0 token for the current user.
comOAuthToken :: Lens' CommentsList' (Maybe OAuthToken)
comOAuthToken
  = lens _comOAuthToken
      (\ s a -> s{_comOAuthToken = a})

-- | The maximum number of discussions to include in the response, used for
-- paging.
comMaxResults :: Lens' CommentsList' Int32
comMaxResults
  = lens _comMaxResults
      (\ s a -> s{_comMaxResults = a})

-- | If set, all comments and replies, including deleted comments and replies
-- (with content stripped) will be returned.
comIncludeDeleted :: Lens' CommentsList' Bool
comIncludeDeleted
  = lens _comIncludeDeleted
      (\ s a -> s{_comIncludeDeleted = a})

-- | Selector specifying which fields to include in a partial response.
comFields :: Lens' CommentsList' (Maybe Text)
comFields
  = lens _comFields (\ s a -> s{_comFields = a})

instance GoogleAuth CommentsList' where
        authKey = comKey . _Just
        authToken = comOAuthToken . _Just

instance GoogleRequest CommentsList' where
        type Rs CommentsList' = CommentList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u CommentsList'{..}
          = go _comQuotaUser (Just _comPrettyPrint) _comUserIP
              _comKey
              _comUpdatedMin
              _comPageToken
              _comFileId
              _comOAuthToken
              (Just _comMaxResults)
              (Just _comIncludeDeleted)
              _comFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsListResource)
                      r
                      u
