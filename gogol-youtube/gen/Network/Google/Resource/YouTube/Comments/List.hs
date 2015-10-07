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
-- Module      : Network.Google.Resource.YouTube.Comments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of comments that match the API request parameters.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCommentsList@.
module Network.Google.Resource.YouTube.Comments.List
    (
    -- * REST Resource
      CommentsListResource

    -- * Creating a Request
    , commentsList'
    , CommentsList'

    -- * Request Lenses
    , comQuotaUser
    , comPart
    , comPrettyPrint
    , comUserIP
    , comKey
    , comId
    , comPageToken
    , comOAuthToken
    , comTextFormat
    , comMaxResults
    , comParentId
    , comFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCommentsList@ which the
-- 'CommentsList'' request conforms to.
type CommentsListResource =
     "comments" :>
       QueryParam "part" Text :>
         QueryParam "id" Text :>
           QueryParam "pageToken" Text :>
             QueryParam "textFormat" CommentsListTextFormat :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "parentId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] CommentListResponse

-- | Returns a list of comments that match the API request parameters.
--
-- /See:/ 'commentsList'' smart constructor.
data CommentsList' = CommentsList'
    { _comQuotaUser   :: !(Maybe Text)
    , _comPart        :: !Text
    , _comPrettyPrint :: !Bool
    , _comUserIP      :: !(Maybe Text)
    , _comKey         :: !(Maybe AuthKey)
    , _comId          :: !(Maybe Text)
    , _comPageToken   :: !(Maybe Text)
    , _comOAuthToken  :: !(Maybe OAuthToken)
    , _comTextFormat  :: !CommentsListTextFormat
    , _comMaxResults  :: !Word32
    , _comParentId    :: !(Maybe Text)
    , _comFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comQuotaUser'
--
-- * 'comPart'
--
-- * 'comPrettyPrint'
--
-- * 'comUserIP'
--
-- * 'comKey'
--
-- * 'comId'
--
-- * 'comPageToken'
--
-- * 'comOAuthToken'
--
-- * 'comTextFormat'
--
-- * 'comMaxResults'
--
-- * 'comParentId'
--
-- * 'comFields'
commentsList'
    :: Text -- ^ 'part'
    -> CommentsList'
commentsList' pComPart_ =
    CommentsList'
    { _comQuotaUser = Nothing
    , _comPart = pComPart_
    , _comPrettyPrint = True
    , _comUserIP = Nothing
    , _comKey = Nothing
    , _comId = Nothing
    , _comPageToken = Nothing
    , _comOAuthToken = Nothing
    , _comTextFormat = HTML
    , _comMaxResults = 20
    , _comParentId = Nothing
    , _comFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
comQuotaUser :: Lens' CommentsList' (Maybe Text)
comQuotaUser
  = lens _comQuotaUser (\ s a -> s{_comQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- comment resource properties that the API response will include.
comPart :: Lens' CommentsList' Text
comPart = lens _comPart (\ s a -> s{_comPart = a})

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
comKey :: Lens' CommentsList' (Maybe AuthKey)
comKey = lens _comKey (\ s a -> s{_comKey = a})

-- | The id parameter specifies a comma-separated list of comment IDs for the
-- resources that are being retrieved. In a comment resource, the id
-- property specifies the comment\'s ID.
comId :: Lens' CommentsList' (Maybe Text)
comId = lens _comId (\ s a -> s{_comId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken property
-- identifies the next page of the result that can be retrieved. Note: This
-- parameter is not supported for use in conjunction with the id parameter.
comPageToken :: Lens' CommentsList' (Maybe Text)
comPageToken
  = lens _comPageToken (\ s a -> s{_comPageToken = a})

-- | OAuth 2.0 token for the current user.
comOAuthToken :: Lens' CommentsList' (Maybe OAuthToken)
comOAuthToken
  = lens _comOAuthToken
      (\ s a -> s{_comOAuthToken = a})

-- | This parameter indicates whether the API should return comments
-- formatted as HTML or as plain text.
comTextFormat :: Lens' CommentsList' CommentsListTextFormat
comTextFormat
  = lens _comTextFormat
      (\ s a -> s{_comTextFormat = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set. Note: This parameter is not
-- supported for use in conjunction with the id parameter.
comMaxResults :: Lens' CommentsList' Word32
comMaxResults
  = lens _comMaxResults
      (\ s a -> s{_comMaxResults = a})

-- | The parentId parameter specifies the ID of the comment for which replies
-- should be retrieved. Note: YouTube currently supports replies only for
-- top-level comments. However, replies to replies may be supported in the
-- future.
comParentId :: Lens' CommentsList' (Maybe Text)
comParentId
  = lens _comParentId (\ s a -> s{_comParentId = a})

-- | Selector specifying which fields to include in a partial response.
comFields :: Lens' CommentsList' (Maybe Text)
comFields
  = lens _comFields (\ s a -> s{_comFields = a})

instance GoogleAuth CommentsList' where
        _AuthKey = comKey . _Just
        _AuthToken = comOAuthToken . _Just

instance GoogleRequest CommentsList' where
        type Rs CommentsList' = CommentListResponse
        request = requestWith youTubeRequest
        requestWith rq CommentsList'{..}
          = go (Just _comPart) _comId _comPageToken
              (Just _comTextFormat)
              (Just _comMaxResults)
              _comParentId
              _comQuotaUser
              (Just _comPrettyPrint)
              _comUserIP
              _comFields
              _comKey
              _comOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy CommentsListResource)
                      rq
