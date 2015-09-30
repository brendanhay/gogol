{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module YouTube.Comments.List
    (
    -- * REST Resource
      CommentsListAPI

    -- * Creating a Request
    , commentsList
    , CommentsList

    -- * Request Lenses
    , cllQuotaUser
    , cllPart
    , cllPrettyPrint
    , cllUserIp
    , cllKey
    , cllId
    , cllPageToken
    , cllOauthToken
    , cllTextFormat
    , cllMaxResults
    , cllParentId
    , cllFields
    , cllAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCommentsList@ which the
-- 'CommentsList' request conforms to.
type CommentsListAPI =
     "comments" :>
       QueryParam "part" Text :>
         QueryParam "id" Text :>
           QueryParam "pageToken" Text :>
             QueryParam "textFormat" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "parentId" Text :>
                   Get '[JSON] CommentListResponse

-- | Returns a list of comments that match the API request parameters.
--
-- /See:/ 'commentsList' smart constructor.
data CommentsList = CommentsList
    { _cllQuotaUser   :: !(Maybe Text)
    , _cllPart        :: !Text
    , _cllPrettyPrint :: !Bool
    , _cllUserIp      :: !(Maybe Text)
    , _cllKey         :: !(Maybe Text)
    , _cllId          :: !(Maybe Text)
    , _cllPageToken   :: !(Maybe Text)
    , _cllOauthToken  :: !(Maybe Text)
    , _cllTextFormat  :: !Text
    , _cllMaxResults  :: !Word32
    , _cllParentId    :: !(Maybe Text)
    , _cllFields      :: !(Maybe Text)
    , _cllAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cllQuotaUser'
--
-- * 'cllPart'
--
-- * 'cllPrettyPrint'
--
-- * 'cllUserIp'
--
-- * 'cllKey'
--
-- * 'cllId'
--
-- * 'cllPageToken'
--
-- * 'cllOauthToken'
--
-- * 'cllTextFormat'
--
-- * 'cllMaxResults'
--
-- * 'cllParentId'
--
-- * 'cllFields'
--
-- * 'cllAlt'
commentsList
    :: Text -- ^ 'part'
    -> CommentsList
commentsList pCllPart_ =
    CommentsList
    { _cllQuotaUser = Nothing
    , _cllPart = pCllPart_
    , _cllPrettyPrint = True
    , _cllUserIp = Nothing
    , _cllKey = Nothing
    , _cllId = Nothing
    , _cllPageToken = Nothing
    , _cllOauthToken = Nothing
    , _cllTextFormat = "FORMAT_HTML"
    , _cllMaxResults = 20
    , _cllParentId = Nothing
    , _cllFields = Nothing
    , _cllAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cllQuotaUser :: Lens' CommentsList' (Maybe Text)
cllQuotaUser
  = lens _cllQuotaUser (\ s a -> s{_cllQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- comment resource properties that the API response will include.
cllPart :: Lens' CommentsList' Text
cllPart = lens _cllPart (\ s a -> s{_cllPart = a})

-- | Returns response with indentations and line breaks.
cllPrettyPrint :: Lens' CommentsList' Bool
cllPrettyPrint
  = lens _cllPrettyPrint
      (\ s a -> s{_cllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cllUserIp :: Lens' CommentsList' (Maybe Text)
cllUserIp
  = lens _cllUserIp (\ s a -> s{_cllUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cllKey :: Lens' CommentsList' (Maybe Text)
cllKey = lens _cllKey (\ s a -> s{_cllKey = a})

-- | The id parameter specifies a comma-separated list of comment IDs for the
-- resources that are being retrieved. In a comment resource, the id
-- property specifies the comment\'s ID.
cllId :: Lens' CommentsList' (Maybe Text)
cllId = lens _cllId (\ s a -> s{_cllId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken property
-- identifies the next page of the result that can be retrieved. Note: This
-- parameter is not supported for use in conjunction with the id parameter.
cllPageToken :: Lens' CommentsList' (Maybe Text)
cllPageToken
  = lens _cllPageToken (\ s a -> s{_cllPageToken = a})

-- | OAuth 2.0 token for the current user.
cllOauthToken :: Lens' CommentsList' (Maybe Text)
cllOauthToken
  = lens _cllOauthToken
      (\ s a -> s{_cllOauthToken = a})

-- | This parameter indicates whether the API should return comments
-- formatted as HTML or as plain text.
cllTextFormat :: Lens' CommentsList' Text
cllTextFormat
  = lens _cllTextFormat
      (\ s a -> s{_cllTextFormat = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set. Note: This parameter is not
-- supported for use in conjunction with the id parameter.
cllMaxResults :: Lens' CommentsList' Word32
cllMaxResults
  = lens _cllMaxResults
      (\ s a -> s{_cllMaxResults = a})

-- | The parentId parameter specifies the ID of the comment for which replies
-- should be retrieved. Note: YouTube currently supports replies only for
-- top-level comments. However, replies to replies may be supported in the
-- future.
cllParentId :: Lens' CommentsList' (Maybe Text)
cllParentId
  = lens _cllParentId (\ s a -> s{_cllParentId = a})

-- | Selector specifying which fields to include in a partial response.
cllFields :: Lens' CommentsList' (Maybe Text)
cllFields
  = lens _cllFields (\ s a -> s{_cllFields = a})

-- | Data format for the response.
cllAlt :: Lens' CommentsList' Text
cllAlt = lens _cllAlt (\ s a -> s{_cllAlt = a})

instance GoogleRequest CommentsList' where
        type Rs CommentsList' = CommentListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentsList{..}
          = go _cllQuotaUser (Just _cllPart) _cllPrettyPrint
              _cllUserIp
              _cllKey
              _cllId
              _cllPageToken
              _cllOauthToken
              (Just _cllTextFormat)
              (Just _cllMaxResults)
              _cllParentId
              _cllFields
              _cllAlt
          where go
                  = clientWithRoute (Proxy :: Proxy CommentsListAPI) r
                      u
