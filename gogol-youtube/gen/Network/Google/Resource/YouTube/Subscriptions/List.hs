{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.YouTube.Subscriptions.List
    (
    -- * REST Resource
      SubscriptionsListResource

    -- * Creating a Request
    , subscriptionsList'
    , SubscriptionsList'

    -- * Request Lenses
    , sQuotaUser
    , sPart
    , sPrettyPrint
    , sMine
    , sUserIP
    , sChannelId
    , sOnBehalfOfContentOwner
    , sKey
    , sOnBehalfOfContentOwnerChannel
    , sId
    , sMySubscribers
    , sForChannelId
    , sPageToken
    , sOAuthToken
    , sOrder
    , sMaxResults
    , sFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeSubscriptionsList@ which the
-- 'SubscriptionsList'' request conforms to.
type SubscriptionsListResource =
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
                         QueryParam "order" SubscriptionsListOrder :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "userIp" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" Key :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] SubscriptionListResponse

-- | Returns subscription resources that match the API request criteria.
--
-- /See:/ 'subscriptionsList'' smart constructor.
data SubscriptionsList' = SubscriptionsList'
    { _sQuotaUser                     :: !(Maybe Text)
    , _sPart                          :: !Text
    , _sPrettyPrint                   :: !Bool
    , _sMine                          :: !(Maybe Bool)
    , _sUserIP                        :: !(Maybe Text)
    , _sChannelId                     :: !(Maybe Text)
    , _sOnBehalfOfContentOwner        :: !(Maybe Text)
    , _sKey                           :: !(Maybe Key)
    , _sOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _sId                            :: !(Maybe Text)
    , _sMySubscribers                 :: !(Maybe Bool)
    , _sForChannelId                  :: !(Maybe Text)
    , _sPageToken                     :: !(Maybe Text)
    , _sOAuthToken                    :: !(Maybe OAuthToken)
    , _sOrder                         :: !SubscriptionsListOrder
    , _sMaxResults                    :: !Word32
    , _sFields                        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sQuotaUser'
--
-- * 'sPart'
--
-- * 'sPrettyPrint'
--
-- * 'sMine'
--
-- * 'sUserIP'
--
-- * 'sChannelId'
--
-- * 'sOnBehalfOfContentOwner'
--
-- * 'sKey'
--
-- * 'sOnBehalfOfContentOwnerChannel'
--
-- * 'sId'
--
-- * 'sMySubscribers'
--
-- * 'sForChannelId'
--
-- * 'sPageToken'
--
-- * 'sOAuthToken'
--
-- * 'sOrder'
--
-- * 'sMaxResults'
--
-- * 'sFields'
subscriptionsList'
    :: Text -- ^ 'part'
    -> SubscriptionsList'
subscriptionsList' pSPart_ =
    SubscriptionsList'
    { _sQuotaUser = Nothing
    , _sPart = pSPart_
    , _sPrettyPrint = True
    , _sMine = Nothing
    , _sUserIP = Nothing
    , _sChannelId = Nothing
    , _sOnBehalfOfContentOwner = Nothing
    , _sKey = Nothing
    , _sOnBehalfOfContentOwnerChannel = Nothing
    , _sId = Nothing
    , _sMySubscribers = Nothing
    , _sForChannelId = Nothing
    , _sPageToken = Nothing
    , _sOAuthToken = Nothing
    , _sOrder = SLOSubscriptionOrderRelevance
    , _sMaxResults = 5
    , _sFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sQuotaUser :: Lens' SubscriptionsList' (Maybe Text)
sQuotaUser
  = lens _sQuotaUser (\ s a -> s{_sQuotaUser = a})

-- | The part parameter specifies a comma-separated list of one or more
-- subscription resource properties that the API response will include. If
-- the parameter identifies a property that contains child properties, the
-- child properties will be included in the response. For example, in a
-- subscription resource, the snippet property contains other properties,
-- such as a display title for the subscription. If you set part=snippet,
-- the API response will also contain all of those nested properties.
sPart :: Lens' SubscriptionsList' Text
sPart = lens _sPart (\ s a -> s{_sPart = a})

-- | Returns response with indentations and line breaks.
sPrettyPrint :: Lens' SubscriptionsList' Bool
sPrettyPrint
  = lens _sPrettyPrint (\ s a -> s{_sPrettyPrint = a})

-- | Set this parameter\'s value to true to retrieve a feed of the
-- authenticated user\'s subscriptions.
sMine :: Lens' SubscriptionsList' (Maybe Bool)
sMine = lens _sMine (\ s a -> s{_sMine = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sUserIP :: Lens' SubscriptionsList' (Maybe Text)
sUserIP = lens _sUserIP (\ s a -> s{_sUserIP = a})

-- | The channelId parameter specifies a YouTube channel ID. The API will
-- only return that channel\'s subscriptions.
sChannelId :: Lens' SubscriptionsList' (Maybe Text)
sChannelId
  = lens _sChannelId (\ s a -> s{_sChannelId = a})

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
sOnBehalfOfContentOwner :: Lens' SubscriptionsList' (Maybe Text)
sOnBehalfOfContentOwner
  = lens _sOnBehalfOfContentOwner
      (\ s a -> s{_sOnBehalfOfContentOwner = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' SubscriptionsList' (Maybe Key)
sKey = lens _sKey (\ s a -> s{_sKey = a})

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
sOnBehalfOfContentOwnerChannel :: Lens' SubscriptionsList' (Maybe Text)
sOnBehalfOfContentOwnerChannel
  = lens _sOnBehalfOfContentOwnerChannel
      (\ s a -> s{_sOnBehalfOfContentOwnerChannel = a})

-- | The id parameter specifies a comma-separated list of the YouTube
-- subscription ID(s) for the resource(s) that are being retrieved. In a
-- subscription resource, the id property specifies the YouTube
-- subscription ID.
sId :: Lens' SubscriptionsList' (Maybe Text)
sId = lens _sId (\ s a -> s{_sId = a})

-- | Set this parameter\'s value to true to retrieve a feed of the
-- subscribers of the authenticated user.
sMySubscribers :: Lens' SubscriptionsList' (Maybe Bool)
sMySubscribers
  = lens _sMySubscribers
      (\ s a -> s{_sMySubscribers = a})

-- | The forChannelId parameter specifies a comma-separated list of channel
-- IDs. The API response will then only contain subscriptions matching
-- those channels.
sForChannelId :: Lens' SubscriptionsList' (Maybe Text)
sForChannelId
  = lens _sForChannelId
      (\ s a -> s{_sForChannelId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
sPageToken :: Lens' SubscriptionsList' (Maybe Text)
sPageToken
  = lens _sPageToken (\ s a -> s{_sPageToken = a})

-- | OAuth 2.0 token for the current user.
sOAuthToken :: Lens' SubscriptionsList' (Maybe OAuthToken)
sOAuthToken
  = lens _sOAuthToken (\ s a -> s{_sOAuthToken = a})

-- | The order parameter specifies the method that will be used to sort
-- resources in the API response.
sOrder :: Lens' SubscriptionsList' SubscriptionsListOrder
sOrder = lens _sOrder (\ s a -> s{_sOrder = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
sMaxResults :: Lens' SubscriptionsList' Word32
sMaxResults
  = lens _sMaxResults (\ s a -> s{_sMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' SubscriptionsList' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

instance GoogleAuth SubscriptionsList' where
        authKey = sKey . _Just
        authToken = sOAuthToken . _Just

instance GoogleRequest SubscriptionsList' where
        type Rs SubscriptionsList' = SubscriptionListResponse
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u SubscriptionsList'{..}
          = go (Just _sPart) _sMine _sChannelId
              _sOnBehalfOfContentOwner
              _sOnBehalfOfContentOwnerChannel
              _sId
              _sMySubscribers
              _sForChannelId
              _sPageToken
              (Just _sOrder)
              (Just _sMaxResults)
              _sQuotaUser
              (Just _sPrettyPrint)
              _sUserIP
              _sFields
              _sKey
              _sOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsListResource)
                      r
                      u
