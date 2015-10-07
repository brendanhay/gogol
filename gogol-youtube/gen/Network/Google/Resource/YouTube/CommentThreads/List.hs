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
-- Module      : Network.Google.Resource.YouTube.CommentThreads.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of comment threads that match the API request parameters.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeCommentThreadsList@.
module Network.Google.Resource.YouTube.CommentThreads.List
    (
    -- * REST Resource
      CommentThreadsListResource

    -- * Creating a Request
    , commentThreadsList'
    , CommentThreadsList'

    -- * Request Lenses
    , ctlQuotaUser
    , ctlPart
    , ctlPrettyPrint
    , ctlModerationStatus
    , ctlUserIP
    , ctlSearchTerms
    , ctlChannelId
    , ctlAllThreadsRelatedToChannelId
    , ctlVideoId
    , ctlKey
    , ctlId
    , ctlPageToken
    , ctlOAuthToken
    , ctlOrder
    , ctlTextFormat
    , ctlMaxResults
    , ctlFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeCommentThreadsList@ method which the
-- 'CommentThreadsList'' request conforms to.
type CommentThreadsListResource =
     "commentThreads" :>
       QueryParam "part" Text :>
         QueryParam "moderationStatus"
           CommentThreadsListModerationStatus
           :>
           QueryParam "searchTerms" Text :>
             QueryParam "channelId" Text :>
               QueryParam "allThreadsRelatedToChannelId" Text :>
                 QueryParam "videoId" Text :>
                   QueryParam "id" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "order" CommentThreadsListOrder :>
                         QueryParam "textFormat" CommentThreadsListTextFormat
                           :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "userIp" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" AuthKey :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] CommentThreadListResponse

-- | Returns a list of comment threads that match the API request parameters.
--
-- /See:/ 'commentThreadsList'' smart constructor.
data CommentThreadsList' = CommentThreadsList'
    { _ctlQuotaUser                    :: !(Maybe Text)
    , _ctlPart                         :: !Text
    , _ctlPrettyPrint                  :: !Bool
    , _ctlModerationStatus             :: !CommentThreadsListModerationStatus
    , _ctlUserIP                       :: !(Maybe Text)
    , _ctlSearchTerms                  :: !(Maybe Text)
    , _ctlChannelId                    :: !(Maybe Text)
    , _ctlAllThreadsRelatedToChannelId :: !(Maybe Text)
    , _ctlVideoId                      :: !(Maybe Text)
    , _ctlKey                          :: !(Maybe AuthKey)
    , _ctlId                           :: !(Maybe Text)
    , _ctlPageToken                    :: !(Maybe Text)
    , _ctlOAuthToken                   :: !(Maybe OAuthToken)
    , _ctlOrder                        :: !CommentThreadsListOrder
    , _ctlTextFormat                   :: !CommentThreadsListTextFormat
    , _ctlMaxResults                   :: !Word32
    , _ctlFields                       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentThreadsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctlQuotaUser'
--
-- * 'ctlPart'
--
-- * 'ctlPrettyPrint'
--
-- * 'ctlModerationStatus'
--
-- * 'ctlUserIP'
--
-- * 'ctlSearchTerms'
--
-- * 'ctlChannelId'
--
-- * 'ctlAllThreadsRelatedToChannelId'
--
-- * 'ctlVideoId'
--
-- * 'ctlKey'
--
-- * 'ctlId'
--
-- * 'ctlPageToken'
--
-- * 'ctlOAuthToken'
--
-- * 'ctlOrder'
--
-- * 'ctlTextFormat'
--
-- * 'ctlMaxResults'
--
-- * 'ctlFields'
commentThreadsList'
    :: Text -- ^ 'part'
    -> CommentThreadsList'
commentThreadsList' pCtlPart_ =
    CommentThreadsList'
    { _ctlQuotaUser = Nothing
    , _ctlPart = pCtlPart_
    , _ctlPrettyPrint = True
    , _ctlModerationStatus = Published
    , _ctlUserIP = Nothing
    , _ctlSearchTerms = Nothing
    , _ctlChannelId = Nothing
    , _ctlAllThreadsRelatedToChannelId = Nothing
    , _ctlVideoId = Nothing
    , _ctlKey = Nothing
    , _ctlId = Nothing
    , _ctlPageToken = Nothing
    , _ctlOAuthToken = Nothing
    , _ctlOrder = CTLOTime
    , _ctlTextFormat = CTLTFHTML
    , _ctlMaxResults = 20
    , _ctlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ctlQuotaUser :: Lens' CommentThreadsList' (Maybe Text)
ctlQuotaUser
  = lens _ctlQuotaUser (\ s a -> s{_ctlQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- commentThread resource properties that the API response will include.
ctlPart :: Lens' CommentThreadsList' Text
ctlPart = lens _ctlPart (\ s a -> s{_ctlPart = a})

-- | Returns response with indentations and line breaks.
ctlPrettyPrint :: Lens' CommentThreadsList' Bool
ctlPrettyPrint
  = lens _ctlPrettyPrint
      (\ s a -> s{_ctlPrettyPrint = a})

-- | Set this parameter to limit the returned comment threads to a particular
-- moderation state. Note: This parameter is not supported for use in
-- conjunction with the id parameter.
ctlModerationStatus :: Lens' CommentThreadsList' CommentThreadsListModerationStatus
ctlModerationStatus
  = lens _ctlModerationStatus
      (\ s a -> s{_ctlModerationStatus = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ctlUserIP :: Lens' CommentThreadsList' (Maybe Text)
ctlUserIP
  = lens _ctlUserIP (\ s a -> s{_ctlUserIP = a})

-- | The searchTerms parameter instructs the API to limit the API response to
-- only contain comments that contain the specified search terms. Note:
-- This parameter is not supported for use in conjunction with the id
-- parameter.
ctlSearchTerms :: Lens' CommentThreadsList' (Maybe Text)
ctlSearchTerms
  = lens _ctlSearchTerms
      (\ s a -> s{_ctlSearchTerms = a})

-- | The channelId parameter instructs the API to return comment threads
-- containing comments about the specified channel. (The response will not
-- include comments left on videos that the channel uploaded.)
ctlChannelId :: Lens' CommentThreadsList' (Maybe Text)
ctlChannelId
  = lens _ctlChannelId (\ s a -> s{_ctlChannelId = a})

-- | The allThreadsRelatedToChannelId parameter instructs the API to return
-- all comment threads associated with the specified channel. The response
-- can include comments about the channel or about the channel\'s videos.
ctlAllThreadsRelatedToChannelId :: Lens' CommentThreadsList' (Maybe Text)
ctlAllThreadsRelatedToChannelId
  = lens _ctlAllThreadsRelatedToChannelId
      (\ s a -> s{_ctlAllThreadsRelatedToChannelId = a})

-- | The videoId parameter instructs the API to return comment threads
-- associated with the specified video ID.
ctlVideoId :: Lens' CommentThreadsList' (Maybe Text)
ctlVideoId
  = lens _ctlVideoId (\ s a -> s{_ctlVideoId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ctlKey :: Lens' CommentThreadsList' (Maybe AuthKey)
ctlKey = lens _ctlKey (\ s a -> s{_ctlKey = a})

-- | The id parameter specifies a comma-separated list of comment thread IDs
-- for the resources that should be retrieved.
ctlId :: Lens' CommentThreadsList' (Maybe Text)
ctlId = lens _ctlId (\ s a -> s{_ctlId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken property
-- identifies the next page of the result that can be retrieved. Note: This
-- parameter is not supported for use in conjunction with the id parameter.
ctlPageToken :: Lens' CommentThreadsList' (Maybe Text)
ctlPageToken
  = lens _ctlPageToken (\ s a -> s{_ctlPageToken = a})

-- | OAuth 2.0 token for the current user.
ctlOAuthToken :: Lens' CommentThreadsList' (Maybe OAuthToken)
ctlOAuthToken
  = lens _ctlOAuthToken
      (\ s a -> s{_ctlOAuthToken = a})

-- | The order parameter specifies the order in which the API response should
-- list comment threads. Valid values are: - time - Comment threads are
-- ordered by time. This is the default behavior. - relevance - Comment
-- threads are ordered by relevance.Note: This parameter is not supported
-- for use in conjunction with the id parameter.
ctlOrder :: Lens' CommentThreadsList' CommentThreadsListOrder
ctlOrder = lens _ctlOrder (\ s a -> s{_ctlOrder = a})

-- | Set this parameter\'s value to html or plainText to instruct the API to
-- return the comments left by users in html formatted or in plain text.
ctlTextFormat :: Lens' CommentThreadsList' CommentThreadsListTextFormat
ctlTextFormat
  = lens _ctlTextFormat
      (\ s a -> s{_ctlTextFormat = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set. Note: This parameter is not
-- supported for use in conjunction with the id parameter.
ctlMaxResults :: Lens' CommentThreadsList' Word32
ctlMaxResults
  = lens _ctlMaxResults
      (\ s a -> s{_ctlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
ctlFields :: Lens' CommentThreadsList' (Maybe Text)
ctlFields
  = lens _ctlFields (\ s a -> s{_ctlFields = a})

instance GoogleAuth CommentThreadsList' where
        _AuthKey = ctlKey . _Just
        _AuthToken = ctlOAuthToken . _Just

instance GoogleRequest CommentThreadsList' where
        type Rs CommentThreadsList' =
             CommentThreadListResponse
        request = requestWith youTubeRequest
        requestWith rq CommentThreadsList'{..}
          = go (Just _ctlPart) (Just _ctlModerationStatus)
              _ctlSearchTerms
              _ctlChannelId
              _ctlAllThreadsRelatedToChannelId
              _ctlVideoId
              _ctlId
              _ctlPageToken
              (Just _ctlOrder)
              (Just _ctlTextFormat)
              (Just _ctlMaxResults)
              _ctlQuotaUser
              (Just _ctlPrettyPrint)
              _ctlUserIP
              _ctlFields
              _ctlKey
              _ctlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy CommentThreadsListResource)
                      rq
