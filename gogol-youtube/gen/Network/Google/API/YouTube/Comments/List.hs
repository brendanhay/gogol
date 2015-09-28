{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.Comments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of comments that match the API request parameters.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.comments.list@.
module Network.Google.API.YouTube.Comments.List
    (
    -- * REST Resource
      CommentsListAPI

    -- * Creating a Request
    , commentsList'
    , CommentsList'

    -- * Request Lenses
    , clQuotaUser
    , clPart
    , clPrettyPrint
    , clUserIp
    , clKey
    , clId
    , clPageToken
    , clOauthToken
    , clTextFormat
    , clMaxResults
    , clParentId
    , clFields
    , clAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.comments.list which the
-- 'CommentsList'' request conforms to.
type CommentsListAPI =
     "comments" :>
       QueryParam "quotaUser" Text :>
         QueryParam "part" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "id" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "textFormat" CommentsList'TextFormat :>
                         QueryParam "maxResults" Nat :>
                           QueryParam "parentId" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Get '[JSON] CommentListResponse

-- | Returns a list of comments that match the API request parameters.
--
-- /See:/ 'commentsList'' smart constructor.
data CommentsList' = CommentsList'
    { _clQuotaUser   :: !(Maybe Text)
    , _clPart        :: !Text
    , _clPrettyPrint :: !Bool
    , _clUserIp      :: !(Maybe Text)
    , _clKey         :: !(Maybe Text)
    , _clId          :: !(Maybe Text)
    , _clPageToken   :: !(Maybe Text)
    , _clOauthToken  :: !(Maybe Text)
    , _clTextFormat  :: !CommentsList'TextFormat
    , _clMaxResults  :: !Nat
    , _clParentId    :: !(Maybe Text)
    , _clFields      :: !(Maybe Text)
    , _clAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clQuotaUser'
--
-- * 'clPart'
--
-- * 'clPrettyPrint'
--
-- * 'clUserIp'
--
-- * 'clKey'
--
-- * 'clId'
--
-- * 'clPageToken'
--
-- * 'clOauthToken'
--
-- * 'clTextFormat'
--
-- * 'clMaxResults'
--
-- * 'clParentId'
--
-- * 'clFields'
--
-- * 'clAlt'
commentsList'
    :: Text -- ^ 'part'
    -> CommentsList'
commentsList' pClPart_ =
    CommentsList'
    { _clQuotaUser = Nothing
    , _clPart = pClPart_
    , _clPrettyPrint = True
    , _clUserIp = Nothing
    , _clKey = Nothing
    , _clId = Nothing
    , _clPageToken = Nothing
    , _clOauthToken = Nothing
    , _clTextFormat = FormatHTML
    , _clMaxResults = 20
    , _clParentId = Nothing
    , _clFields = Nothing
    , _clAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clQuotaUser :: Lens' CommentsList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- comment resource properties that the API response will include.
clPart :: Lens' CommentsList' Text
clPart = lens _clPart (\ s a -> s{_clPart = a})

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

-- | The id parameter specifies a comma-separated list of comment IDs for the
-- resources that are being retrieved. In a comment resource, the id
-- property specifies the comment\'s ID.
clId :: Lens' CommentsList' (Maybe Text)
clId = lens _clId (\ s a -> s{_clId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken property
-- identifies the next page of the result that can be retrieved. Note: This
-- parameter is not supported for use in conjunction with the id parameter.
clPageToken :: Lens' CommentsList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | OAuth 2.0 token for the current user.
clOauthToken :: Lens' CommentsList' (Maybe Text)
clOauthToken
  = lens _clOauthToken (\ s a -> s{_clOauthToken = a})

-- | This parameter indicates whether the API should return comments
-- formatted as HTML or as plain text.
clTextFormat :: Lens' CommentsList' CommentsList'TextFormat
clTextFormat
  = lens _clTextFormat (\ s a -> s{_clTextFormat = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set. Note: This parameter is not
-- supported for use in conjunction with the id parameter.
clMaxResults :: Lens' CommentsList' Natural
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})
      . _Nat

-- | The parentId parameter specifies the ID of the comment for which replies
-- should be retrieved. Note: YouTube currently supports replies only for
-- top-level comments. However, replies to replies may be supported in the
-- future.
clParentId :: Lens' CommentsList' (Maybe Text)
clParentId
  = lens _clParentId (\ s a -> s{_clParentId = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' CommentsList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | Data format for the response.
clAlt :: Lens' CommentsList' Alt
clAlt = lens _clAlt (\ s a -> s{_clAlt = a})

instance GoogleRequest CommentsList' where
        type Rs CommentsList' = CommentListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentsList'{..}
          = go _clQuotaUser (Just _clPart)
              (Just _clPrettyPrint)
              _clUserIp
              _clKey
              _clId
              _clPageToken
              _clOauthToken
              (Just _clTextFormat)
              (Just _clMaxResults)
              _clParentId
              _clFields
              (Just _clAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsListAPI) r
                      u
