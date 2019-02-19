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
-- Module      : Network.Google.Resource.YouTube.Subscriptions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns subscription resources that match the API request criteria.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @youtube.subscriptions.list@.
module Network.Google.Resource.YouTube.Subscriptions.List
    (
    -- * REST Resource
      SubscriptionsListResource

    -- * Creating a Request
    , subscriptionsList
    , SubscriptionsList

    -- * Request Lenses
    , subPart
    , subMine
    , subChannelId
    , subMyRecentSubscribers
    , subOnBehalfOfContentOwner
    , subOnBehalfOfContentOwnerChannel
    , subId
    , subMySubscribers
    , subForChannelId
    , subPageToken
    , subOrder
    , subMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @youtube.subscriptions.list@ method which the
-- 'SubscriptionsList' request conforms to.
type SubscriptionsListResource =
     "youtube" :>
       "v3" :>
         "subscriptions" :>
           QueryParam "part" Text :>
             QueryParam "mine" Bool :>
               QueryParam "channelId" Text :>
                 QueryParam "myRecentSubscribers" Bool :>
                   QueryParam "onBehalfOfContentOwner" Text :>
                     QueryParam "onBehalfOfContentOwnerChannel" Text :>
                       QueryParam "id" Text :>
                         QueryParam "mySubscribers" Bool :>
                           QueryParam "forChannelId" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "order" SubscriptionsListOrder :>
                                 QueryParam "maxResults" (Textual Word32) :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] SubscriptionListResponse

-- | Returns subscription resources that match the API request criteria.
--
-- /See:/ 'subscriptionsList' smart constructor.
data SubscriptionsList =
  SubscriptionsList'
    { _subPart                          :: !Text
    , _subMine                          :: !(Maybe Bool)
    , _subChannelId                     :: !(Maybe Text)
    , _subMyRecentSubscribers           :: !(Maybe Bool)
    , _subOnBehalfOfContentOwner        :: !(Maybe Text)
    , _subOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _subId                            :: !(Maybe Text)
    , _subMySubscribers                 :: !(Maybe Bool)
    , _subForChannelId                  :: !(Maybe Text)
    , _subPageToken                     :: !(Maybe Text)
    , _subOrder                         :: !SubscriptionsListOrder
    , _subMaxResults                    :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'subPart'
--
-- * 'subMine'
--
-- * 'subChannelId'
--
-- * 'subMyRecentSubscribers'
--
-- * 'subOnBehalfOfContentOwner'
--
-- * 'subOnBehalfOfContentOwnerChannel'
--
-- * 'subId'
--
-- * 'subMySubscribers'
--
-- * 'subForChannelId'
--
-- * 'subPageToken'
--
-- * 'subOrder'
--
-- * 'subMaxResults'
subscriptionsList
    :: Text -- ^ 'subPart'
    -> SubscriptionsList
subscriptionsList pSubPart_ =
  SubscriptionsList'
    { _subPart = pSubPart_
    , _subMine = Nothing
    , _subChannelId = Nothing
    , _subMyRecentSubscribers = Nothing
    , _subOnBehalfOfContentOwner = Nothing
    , _subOnBehalfOfContentOwnerChannel = Nothing
    , _subId = Nothing
    , _subMySubscribers = Nothing
    , _subForChannelId = Nothing
    , _subPageToken = Nothing
    , _subOrder = SLORelevance
    , _subMaxResults = 5
    }


-- | The part parameter specifies a comma-separated list of one or more
-- subscription resource properties that the API response will include. If
-- the parameter identifies a property that contains child properties, the
-- child properties will be included in the response. For example, in a
-- subscription resource, the snippet property contains other properties,
-- such as a display title for the subscription. If you set part=snippet,
-- the API response will also contain all of those nested properties.
subPart :: Lens' SubscriptionsList Text
subPart = lens _subPart (\ s a -> s{_subPart = a})

-- | Set this parameter\'s value to true to retrieve a feed of the
-- authenticated user\'s subscriptions.
subMine :: Lens' SubscriptionsList (Maybe Bool)
subMine = lens _subMine (\ s a -> s{_subMine = a})

-- | The channelId parameter specifies a YouTube channel ID. The API will
-- only return that channel\'s subscriptions.
subChannelId :: Lens' SubscriptionsList (Maybe Text)
subChannelId
  = lens _subChannelId (\ s a -> s{_subChannelId = a})

-- | Set this parameter\'s value to true to retrieve a feed of the
-- subscribers of the authenticated user in reverse chronological order
-- (newest first).
subMyRecentSubscribers :: Lens' SubscriptionsList (Maybe Bool)
subMyRecentSubscribers
  = lens _subMyRecentSubscribers
      (\ s a -> s{_subMyRecentSubscribers = a})

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
subOnBehalfOfContentOwner :: Lens' SubscriptionsList (Maybe Text)
subOnBehalfOfContentOwner
  = lens _subOnBehalfOfContentOwner
      (\ s a -> s{_subOnBehalfOfContentOwner = a})

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
subOnBehalfOfContentOwnerChannel :: Lens' SubscriptionsList (Maybe Text)
subOnBehalfOfContentOwnerChannel
  = lens _subOnBehalfOfContentOwnerChannel
      (\ s a -> s{_subOnBehalfOfContentOwnerChannel = a})

-- | The id parameter specifies a comma-separated list of the YouTube
-- subscription ID(s) for the resource(s) that are being retrieved. In a
-- subscription resource, the id property specifies the YouTube
-- subscription ID.
subId :: Lens' SubscriptionsList (Maybe Text)
subId = lens _subId (\ s a -> s{_subId = a})

-- | Set this parameter\'s value to true to retrieve a feed of the
-- subscribers of the authenticated user in no particular order.
subMySubscribers :: Lens' SubscriptionsList (Maybe Bool)
subMySubscribers
  = lens _subMySubscribers
      (\ s a -> s{_subMySubscribers = a})

-- | The forChannelId parameter specifies a comma-separated list of channel
-- IDs. The API response will then only contain subscriptions matching
-- those channels.
subForChannelId :: Lens' SubscriptionsList (Maybe Text)
subForChannelId
  = lens _subForChannelId
      (\ s a -> s{_subForChannelId = a})

-- | The pageToken parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
subPageToken :: Lens' SubscriptionsList (Maybe Text)
subPageToken
  = lens _subPageToken (\ s a -> s{_subPageToken = a})

-- | The order parameter specifies the method that will be used to sort
-- resources in the API response.
subOrder :: Lens' SubscriptionsList SubscriptionsListOrder
subOrder = lens _subOrder (\ s a -> s{_subOrder = a})

-- | The maxResults parameter specifies the maximum number of items that
-- should be returned in the result set.
subMaxResults :: Lens' SubscriptionsList Word32
subMaxResults
  = lens _subMaxResults
      (\ s a -> s{_subMaxResults = a})
      . _Coerce

instance GoogleRequest SubscriptionsList where
        type Rs SubscriptionsList = SubscriptionListResponse
        type Scopes SubscriptionsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient SubscriptionsList'{..}
          = go (Just _subPart) _subMine _subChannelId
              _subMyRecentSubscribers
              _subOnBehalfOfContentOwner
              _subOnBehalfOfContentOwnerChannel
              _subId
              _subMySubscribers
              _subForChannelId
              _subPageToken
              (Just _subOrder)
              (Just _subMaxResults)
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsListResource)
                      mempty
