{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.YouTube.Subscriptions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns subscription resources that match the API request criteria.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeSubscriptionsList@.
module YouTube.Subscriptions.List
    (
    -- * REST Resource
      SubscriptionsListAPI

    -- * Creating a Request
    , subscriptionsList
    , SubscriptionsList

    -- * Request Lenses
    , slQuotaUser
    , slPart
    , slPrettyPrint
    , slMine
    , slUserIp
    , slChannelId
    , slOnBehalfOfContentOwner
    , slKey
    , slOnBehalfOfContentOwnerChannel
    , slId
    , slMySubscribers
    , slForChannelId
    , slPageToken
    , slOauthToken
    , slOrder
    , slMaxResults
    , slFields
    , slAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeSubscriptionsList@ which the
-- 'SubscriptionsList' request conforms to.
type SubscriptionsListAPI =
     "subscriptions" :>
       QueryParam "part" Text :>
         QueryParam "mine" Bool :>
           QueryParam "channelId" Text :>
             QueryParam "onBehalfOfContentOwner" Text :>
               QueryParam "onBehalfOfContentOwnerChannel" Text :>
                 QueryParam "id" Text :>
                   QueryParam "mySubscribers" Bool :>
                     QueryParam "forChannelId" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "order" Text :>
                           QueryParam "maxResults" Word32 :>
                             Get '[JSON] SubscriptionListResponse

-- | Returns subscription resources that match the API request criteria.
--
-- /See:/ 'subscriptionsList' smart constructor.
data SubscriptionsList = SubscriptionsList
    { _slQuotaUser                     :: !(Maybe Text)
    , _slPart                          :: !Text
    , _slPrettyPrint                   :: !Bool
    , _slMine                          :: !(Maybe Bool)
    , _slUserIp                        :: !(Maybe Text)
    , _slChannelId                     :: !(Maybe Text)
    , _slOnBehalfOfContentOwner        :: !(Maybe Text)
    , _slKey                           :: !(Maybe Text)
    , _slOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _slId                            :: !(Maybe Text)
    , _slMySubscribers                 :: !(Maybe Bool)
    , _slForChannelId                  :: !(Maybe Text)
    , _slPageToken                     :: !(Maybe Text)
    , _slOauthToken                    :: !(Maybe Text)
    , _slOrder                         :: !Text
    , _slMaxResults                    :: !Word32
    , _slFields                        :: !(Maybe Text)
    , _slAlt                           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slQuotaUser'
--
-- * 'slPart'
--
-- * 'slPrettyPrint'
--
-- * 'slMine'
--
-- * 'slUserIp'
--
-- * 'slChannelId'
--
-- * 'slOnBehalfOfContentOwner'
--
-- * 'slKey'
--
-- * 'slOnBehalfOfContentOwnerChannel'
--
-- * 'slId'
--
-- * 'slMySubscribers'
--
-- * 'slForChannelId'
--
-- * 'slPageToken'
--
-- * 'slOauthToken'
--
-- * 'slOrder'
--
-- * 'slMaxResults'
--
-- * 'slFields'
--
-- * 'slAlt'
subscriptionsList
    :: Text -- ^ 'part'
    -> SubscriptionsList
subscriptionsList pSlPart_ =
    SubscriptionsList
    { _slQuotaUser = Nothing
    , _slPart = pSlPart_
    , _slPrettyPrint = True
    , _slMine = Nothing
    , _slUserIp = Nothing
    , _slChannelId = Nothing
    , _slOnBehalfOfContentOwner = Nothing
    , _slKey = Nothing
    , _slOnBehalfOfContentOwnerChannel = Nothing
    , _slId = Nothing
    , _slMySubscribers = Nothing
    , _slForChannelId = Nothing
    , _slPageToken = Nothing
    , _slOauthToken = Nothing
    , _slOrder = "SUBSCRIPTION_ORDER_RELEVANCE"
    , _slMaxResults = 5
    , _slFields = Nothing
    , _slAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
slQuotaUser :: Lens' SubscriptionsList' (Maybe Text)
slQuotaUser
  = lens _slQuotaUser (\ s a -> s{_slQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- subscription resource properties that the API response will include. If
-- the parameter identifies a property that contains child properties, the
-- child properties will be included in the response. For example, in a
-- subscription resource, the snippet property contains other properties,
-- such as a display title for the subscription. If you set part=snippet,
-- the API response will also contain all of those nested properties.
slPart :: Lens' SubscriptionsList' Text
slPart = lens _slPart (\ s a -> s{_slPart = a})

-- | Returns response with indentations and line breaks.
slPrettyPrint :: Lens' SubscriptionsList' Bool
slPrettyPrint
  = lens _slPrettyPrint
      (\ s a -> s{_slPrettyPrint = a})

-- | Set this parameter\'s value to true to retrieve a feed of the
-- authenticated user\'s subscriptions.
slMine :: Lens' SubscriptionsList' (Maybe Bool)
slMine = lens _slMine (\ s a -> s{_slMine = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
slUserIp :: Lens' SubscriptionsList' (Maybe Text)
slUserIp = lens _slUserIp (\ s a -> s{_slUserIp = a})

-- | The channelId parameter specifies a YouTube channel ID. The API will
-- only return that channel\'s subscriptions.
slChannelId :: Lens' SubscriptionsList' (Maybe Text)
slChannelId
  = lens _slChannelId (\ s a -> s{_slChannelId = a})

-- | Note: This parameter is intended exclusively for YouTube content
-- partners. The onBehalfOfContentOwner parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
slOnBehalfOfContentOwner :: Lens' SubscriptionsList' (Maybe Text)
slOnBehalfOfContentOwner
  = lens _slOnBehalfOfContentOwner
      (\ s a -> s{_slOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slKey :: Lens' SubscriptionsList' (Maybe Text)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | This parameter can only be used in a properly authorized request. Note:
-- This parameter is intended exclusively for YouTube content partners. The
-- onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID
-- of the channel to which a video is being added. This parameter is
-- required when a request specifies a value for the onBehalfOfContentOwner
-- parameter, and it can only be used in conjunction with that parameter.
-- In addition, the request must be authorized using a CMS account that is
-- linked to the content owner that the onBehalfOfContentOwner parameter
-- specifies. Finally, the channel that the onBehalfOfContentOwnerChannel
-- parameter value specifies must be linked to the content owner that the
-- onBehalfOfContentOwner parameter specifies. This parameter is intended
-- for YouTube content partners that own and manage many different YouTube
-- channels. It allows content owners to authenticate once and perform
-- actions on behalf of the channel specified in the parameter value,
-- without having to provide authentication credentials for each separate
-- channel.
slOnBehalfOfContentOwnerChannel :: Lens' SubscriptionsList' (Maybe Text)
slOnBehalfOfContentOwnerChannel
  = lens _slOnBehalfOfContentOwnerChannel
      (\ s a -> s{_slOnBehalfOfContentOwnerChannel = a})

-- | The id parameter specifies a comma-separated list of the YouTube
-- subscription ID(s) for the resource(s) that are being retrieved. In a
-- subscription resource, the id property specifies the YouTube
-- subscription ID.
slId :: Lens' SubscriptionsList' (Maybe Text)
slId = lens _slId (\ s a -> s{_slId = a})

-- | Set this parameter\'s value to true to retrieve a feed of the
-- subscribers of the authenticated user.
slMySubscribers :: Lens' SubscriptionsList' (Maybe Bool)
slMySubscribers
  = lens _slMySubscribers
      (\ s a -> s{_slMySubscribers = a})

-- | The forChannelId parameter specifies a comma-separated list of channel
-- IDs. The API response will then only contain subscriptions matching
-- those channels.
slForChannelId :: Lens' SubscriptionsList' (Maybe Text)
slForChannelId
  = lens _slForChannelId
      (\ s a -> s{_slForChannelId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
slPageToken :: Lens' SubscriptionsList' (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | OAuth 2.0 token for the current user.
slOauthToken :: Lens' SubscriptionsList' (Maybe Text)
slOauthToken
  = lens _slOauthToken (\ s a -> s{_slOauthToken = a})

-- | The order parameter specifies the method that will be used to sort
-- resources in the API response.
slOrder :: Lens' SubscriptionsList' Text
slOrder = lens _slOrder (\ s a -> s{_slOrder = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
slMaxResults :: Lens' SubscriptionsList' Word32
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
slFields :: Lens' SubscriptionsList' (Maybe Text)
slFields = lens _slFields (\ s a -> s{_slFields = a})

-- | Data format for the response.
slAlt :: Lens' SubscriptionsList' Text
slAlt = lens _slAlt (\ s a -> s{_slAlt = a})

instance GoogleRequest SubscriptionsList' where
        type Rs SubscriptionsList' = SubscriptionListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u SubscriptionsList{..}
          = go _slQuotaUser (Just _slPart) _slPrettyPrint
              _slMine
              _slUserIp
              _slChannelId
              _slOnBehalfOfContentOwner
              _slKey
              _slOnBehalfOfContentOwnerChannel
              _slId
              _slMySubscribers
              _slForChannelId
              _slPageToken
              _slOauthToken
              (Just _slOrder)
              (Just _slMaxResults)
              _slFields
              _slAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsListAPI)
                      r
                      u
