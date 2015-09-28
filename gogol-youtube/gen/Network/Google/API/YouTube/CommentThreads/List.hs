{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.YouTube.CommentThreads.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of comment threads that match the API request parameters.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.commentThreads.list@.
module Network.Google.API.YouTube.CommentThreads.List
    (
    -- * REST Resource
      CommentThreadsListAPI

    -- * Creating a Request
    , commentThreadsList'
    , CommentThreadsList'

    -- * Request Lenses
    , ctlQuotaUser
    , ctlPart
    , ctlPrettyPrint
    , ctlModerationStatus
    , ctlUserIp
    , ctlSearchTerms
    , ctlChannelId
    , ctlAllThreadsRelatedToChannelId
    , ctlVideoId
    , ctlKey
    , ctlId
    , ctlPageToken
    , ctlOauthToken
    , ctlOrder
    , ctlTextFormat
    , ctlMaxResults
    , ctlFields
    , ctlAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for youtube.commentThreads.list which the
-- 'CommentThreadsList'' request conforms to.
type CommentThreadsListAPI =
     "commentThreads" :>
       QueryParam "quotaUser" Text :>
         QueryParam "part" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "moderationStatus"
               CommentThreadsList'ModerationStatus
               :>
               QueryParam "userIp" Text :>
                 QueryParam "searchTerms" Text :>
                   QueryParam "channelId" Text :>
                     QueryParam "allThreadsRelatedToChannelId" Text :>
                       QueryParam "videoId" Text :>
                         QueryParam "key" Text :>
                           QueryParam "id" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "order" CommentThreadsList'Order :>
                                   QueryParam "textFormat"
                                     CommentThreadsList'TextFormat
                                     :>
                                     QueryParam "maxResults" Nat :>
                                       QueryParam "fields" Text :>
                                         QueryParam "alt" Alt :>
                                           Get '[JSON] CommentThreadListResponse

-- | Returns a list of comment threads that match the API request parameters.
--
-- /See:/ 'commentThreadsList'' smart constructor.
data CommentThreadsList' = CommentThreadsList'
    { _ctlQuotaUser                    :: !(Maybe Text)
    , _ctlPart                         :: !Text
    , _ctlPrettyPrint                  :: !Bool
    , _ctlModerationStatus             :: !CommentThreadsList'ModerationStatus
    , _ctlUserIp                       :: !(Maybe Text)
    , _ctlSearchTerms                  :: !(Maybe Text)
    , _ctlChannelId                    :: !(Maybe Text)
    , _ctlAllThreadsRelatedToChannelId :: !(Maybe Text)
    , _ctlVideoId                      :: !(Maybe Text)
    , _ctlKey                          :: !(Maybe Text)
    , _ctlId                           :: !(Maybe Text)
    , _ctlPageToken                    :: !(Maybe Text)
    , _ctlOauthToken                   :: !(Maybe Text)
    , _ctlOrder                        :: !CommentThreadsList'Order
    , _ctlTextFormat                   :: !CommentThreadsList'TextFormat
    , _ctlMaxResults                   :: !Nat
    , _ctlFields                       :: !(Maybe Text)
    , _ctlAlt                          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'ctlUserIp'
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
-- * 'ctlOauthToken'
--
-- * 'ctlOrder'
--
-- * 'ctlTextFormat'
--
-- * 'ctlMaxResults'
--
-- * 'ctlFields'
--
-- * 'ctlAlt'
commentThreadsList'
    :: Text -- ^ 'part'
    -> CommentThreadsList'
commentThreadsList' pCtlPart_ =
    CommentThreadsList'
    { _ctlQuotaUser = Nothing
    , _ctlPart = pCtlPart_
    , _ctlPrettyPrint = True
    , _ctlModerationStatus = CTLMSModerationStatusPublished
    , _ctlUserIp = Nothing
    , _ctlSearchTerms = Nothing
    , _ctlChannelId = Nothing
    , _ctlAllThreadsRelatedToChannelId = Nothing
    , _ctlVideoId = Nothing
    , _ctlKey = Nothing
    , _ctlId = Nothing
    , _ctlPageToken = Nothing
    , _ctlOauthToken = Nothing
    , _ctlOrder = CTLOTrue'
    , _ctlTextFormat = CTLTFFormatHTML
    , _ctlMaxResults = 20
    , _ctlFields = Nothing
    , _ctlAlt = JSON
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
ctlModerationStatus :: Lens' CommentThreadsList' CommentThreadsList'ModerationStatus
ctlModerationStatus
  = lens _ctlModerationStatus
      (\ s a -> s{_ctlModerationStatus = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ctlUserIp :: Lens' CommentThreadsList' (Maybe Text)
ctlUserIp
  = lens _ctlUserIp (\ s a -> s{_ctlUserIp = a})

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
ctlKey :: Lens' CommentThreadsList' (Maybe Text)
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
ctlOauthToken :: Lens' CommentThreadsList' (Maybe Text)
ctlOauthToken
  = lens _ctlOauthToken
      (\ s a -> s{_ctlOauthToken = a})

-- | The order parameter specifies the order in which the API response should
-- list comment threads. Valid values are: - time - Comment threads are
-- ordered by time. This is the default behavior. - relevance - Comment
-- threads are ordered by relevance.Note: This parameter is not supported
-- for use in conjunction with the id parameter.
ctlOrder :: Lens' CommentThreadsList' CommentThreadsList'Order
ctlOrder = lens _ctlOrder (\ s a -> s{_ctlOrder = a})

-- | Set this parameter\'s value to html or plainText to instruct the API to
-- return the comments left by users in html formatted or in plain text.
ctlTextFormat :: Lens' CommentThreadsList' CommentThreadsList'TextFormat
ctlTextFormat
  = lens _ctlTextFormat
      (\ s a -> s{_ctlTextFormat = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set. Note: This parameter is not
-- supported for use in conjunction with the id parameter.
ctlMaxResults :: Lens' CommentThreadsList' Natural
ctlMaxResults
  = lens _ctlMaxResults
      (\ s a -> s{_ctlMaxResults = a})
      . _Nat

-- | Selector specifying which fields to include in a partial response.
ctlFields :: Lens' CommentThreadsList' (Maybe Text)
ctlFields
  = lens _ctlFields (\ s a -> s{_ctlFields = a})

-- | Data format for the response.
ctlAlt :: Lens' CommentThreadsList' Alt
ctlAlt = lens _ctlAlt (\ s a -> s{_ctlAlt = a})

instance GoogleRequest CommentThreadsList' where
        type Rs CommentThreadsList' =
             CommentThreadListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u CommentThreadsList'{..}
          = go _ctlQuotaUser (Just _ctlPart)
              (Just _ctlPrettyPrint)
              (Just _ctlModerationStatus)
              _ctlUserIp
              _ctlSearchTerms
              _ctlChannelId
              _ctlAllThreadsRelatedToChannelId
              _ctlVideoId
              _ctlKey
              _ctlId
              _ctlPageToken
              _ctlOauthToken
              (Just _ctlOrder)
              (Just _ctlTextFormat)
              (Just _ctlMaxResults)
              _ctlFields
              (Just _ctlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentThreadsListAPI)
                      r
                      u
