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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.subscriptions.list@.
module Network.Google.Resource.YouTube.Subscriptions.List
    (
    -- * REST Resource
      SubscriptionsListResource

    -- * Creating a Request
    , subscriptionsList
    , SubscriptionsList

    -- * Request Lenses
    , sXgafv
    , sPart
    , sMine
    , sUploadProtocol
    , sAccessToken
    , sUploadType
    , sChannelId
    , sMyRecentSubscribers
    , sOnBehalfOfContentOwner
    , sOnBehalfOfContentOwnerChannel
    , sId
    , sMySubscribers
    , sForChannelId
    , sPageToken
    , sOrder
    , sMaxResults
    , sCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.subscriptions.list@ method which the
-- 'SubscriptionsList' request conforms to.
type SubscriptionsListResource =
     "youtube" :>
       "v3" :>
         "subscriptions" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "mine" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "channelId" Text :>
                         QueryParam "myRecentSubscribers" Bool :>
                           QueryParam "onBehalfOfContentOwner" Text :>
                             QueryParam "onBehalfOfContentOwnerChannel" Text :>
                               QueryParams "id" Text :>
                                 QueryParam "mySubscribers" Bool :>
                                   QueryParam "forChannelId" Text :>
                                     QueryParam "pageToken" Text :>
                                       QueryParam "order" SubscriptionsListOrder
                                         :>
                                         QueryParam "maxResults"
                                           (Textual Word32)
                                           :>
                                           QueryParam "callback" Text :>
                                             QueryParam "alt" AltJSON :>
                                               Get '[JSON]
                                                 SubscriptionListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'subscriptionsList' smart constructor.
data SubscriptionsList =
  SubscriptionsList'
    { _sXgafv :: !(Maybe Xgafv)
    , _sPart :: ![Text]
    , _sMine :: !(Maybe Bool)
    , _sUploadProtocol :: !(Maybe Text)
    , _sAccessToken :: !(Maybe Text)
    , _sUploadType :: !(Maybe Text)
    , _sChannelId :: !(Maybe Text)
    , _sMyRecentSubscribers :: !(Maybe Bool)
    , _sOnBehalfOfContentOwner :: !(Maybe Text)
    , _sOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _sId :: !(Maybe [Text])
    , _sMySubscribers :: !(Maybe Bool)
    , _sForChannelId :: !(Maybe Text)
    , _sPageToken :: !(Maybe Text)
    , _sOrder :: !SubscriptionsListOrder
    , _sMaxResults :: !(Textual Word32)
    , _sCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SubscriptionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sXgafv'
--
-- * 'sPart'
--
-- * 'sMine'
--
-- * 'sUploadProtocol'
--
-- * 'sAccessToken'
--
-- * 'sUploadType'
--
-- * 'sChannelId'
--
-- * 'sMyRecentSubscribers'
--
-- * 'sOnBehalfOfContentOwner'
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
-- * 'sOrder'
--
-- * 'sMaxResults'
--
-- * 'sCallback'
subscriptionsList
    :: [Text] -- ^ 'sPart'
    -> SubscriptionsList
subscriptionsList pSPart_ =
  SubscriptionsList'
    { _sXgafv = Nothing
    , _sPart = _Coerce # pSPart_
    , _sMine = Nothing
    , _sUploadProtocol = Nothing
    , _sAccessToken = Nothing
    , _sUploadType = Nothing
    , _sChannelId = Nothing
    , _sMyRecentSubscribers = Nothing
    , _sOnBehalfOfContentOwner = Nothing
    , _sOnBehalfOfContentOwnerChannel = Nothing
    , _sId = Nothing
    , _sMySubscribers = Nothing
    , _sForChannelId = Nothing
    , _sPageToken = Nothing
    , _sOrder = SLORelevance
    , _sMaxResults = 5
    , _sCallback = Nothing
    }


-- | V1 error format.
sXgafv :: Lens' SubscriptionsList (Maybe Xgafv)
sXgafv = lens _sXgafv (\ s a -> s{_sXgafv = a})

-- | The *part* parameter specifies a comma-separated list of one or more
-- subscription resource properties that the API response will include. If
-- the parameter identifies a property that contains child properties, the
-- child properties will be included in the response. For example, in a
-- subscription resource, the snippet property contains other properties,
-- such as a display title for the subscription. If you set *part=snippet*,
-- the API response will also contain all of those nested properties.
sPart :: Lens' SubscriptionsList [Text]
sPart
  = lens _sPart (\ s a -> s{_sPart = a}) . _Coerce

-- | Flag for returning the subscriptions of the authenticated user.
sMine :: Lens' SubscriptionsList (Maybe Bool)
sMine = lens _sMine (\ s a -> s{_sMine = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sUploadProtocol :: Lens' SubscriptionsList (Maybe Text)
sUploadProtocol
  = lens _sUploadProtocol
      (\ s a -> s{_sUploadProtocol = a})

-- | OAuth access token.
sAccessToken :: Lens' SubscriptionsList (Maybe Text)
sAccessToken
  = lens _sAccessToken (\ s a -> s{_sAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sUploadType :: Lens' SubscriptionsList (Maybe Text)
sUploadType
  = lens _sUploadType (\ s a -> s{_sUploadType = a})

-- | Return the subscriptions of the given channel owner.
sChannelId :: Lens' SubscriptionsList (Maybe Text)
sChannelId
  = lens _sChannelId (\ s a -> s{_sChannelId = a})

sMyRecentSubscribers :: Lens' SubscriptionsList (Maybe Bool)
sMyRecentSubscribers
  = lens _sMyRecentSubscribers
      (\ s a -> s{_sMyRecentSubscribers = a})

-- | *Note:* This parameter is intended exclusively for YouTube content
-- partners. The *onBehalfOfContentOwner* parameter indicates that the
-- request\'s authorization credentials identify a YouTube CMS user who is
-- acting on behalf of the content owner specified in the parameter value.
-- This parameter is intended for YouTube content partners that own and
-- manage many different YouTube channels. It allows content owners to
-- authenticate once and get access to all their video and channel data,
-- without having to provide authentication credentials for each individual
-- channel. The CMS account that the user authenticates with must be linked
-- to the specified YouTube content owner.
sOnBehalfOfContentOwner :: Lens' SubscriptionsList (Maybe Text)
sOnBehalfOfContentOwner
  = lens _sOnBehalfOfContentOwner
      (\ s a -> s{_sOnBehalfOfContentOwner = a})

-- | This parameter can only be used in a properly authorized request.
-- *Note:* This parameter is intended exclusively for YouTube content
-- partners. The *onBehalfOfContentOwnerChannel* parameter specifies the
-- YouTube channel ID of the channel to which a video is being added. This
-- parameter is required when a request specifies a value for the
-- onBehalfOfContentOwner parameter, and it can only be used in conjunction
-- with that parameter. In addition, the request must be authorized using a
-- CMS account that is linked to the content owner that the
-- onBehalfOfContentOwner parameter specifies. Finally, the channel that
-- the onBehalfOfContentOwnerChannel parameter value specifies must be
-- linked to the content owner that the onBehalfOfContentOwner parameter
-- specifies. This parameter is intended for YouTube content partners that
-- own and manage many different YouTube channels. It allows content owners
-- to authenticate once and perform actions on behalf of the channel
-- specified in the parameter value, without having to provide
-- authentication credentials for each separate channel.
sOnBehalfOfContentOwnerChannel :: Lens' SubscriptionsList (Maybe Text)
sOnBehalfOfContentOwnerChannel
  = lens _sOnBehalfOfContentOwnerChannel
      (\ s a -> s{_sOnBehalfOfContentOwnerChannel = a})

-- | Return the subscriptions with the given IDs for Stubby or Apiary.
sId :: Lens' SubscriptionsList [Text]
sId
  = lens _sId (\ s a -> s{_sId = a}) . _Default .
      _Coerce

-- | Return the subscribers of the given channel owner.
sMySubscribers :: Lens' SubscriptionsList (Maybe Bool)
sMySubscribers
  = lens _sMySubscribers
      (\ s a -> s{_sMySubscribers = a})

-- | Return the subscriptions to the subset of these channels that the
-- authenticated user is subscribed to.
sForChannelId :: Lens' SubscriptionsList (Maybe Text)
sForChannelId
  = lens _sForChannelId
      (\ s a -> s{_sForChannelId = a})

-- | The *pageToken* parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
sPageToken :: Lens' SubscriptionsList (Maybe Text)
sPageToken
  = lens _sPageToken (\ s a -> s{_sPageToken = a})

-- | The order of the returned subscriptions
sOrder :: Lens' SubscriptionsList SubscriptionsListOrder
sOrder = lens _sOrder (\ s a -> s{_sOrder = a})

-- | The *maxResults* parameter specifies the maximum number of items that
-- should be returned in the result set.
sMaxResults :: Lens' SubscriptionsList Word32
sMaxResults
  = lens _sMaxResults (\ s a -> s{_sMaxResults = a}) .
      _Coerce

-- | JSONP
sCallback :: Lens' SubscriptionsList (Maybe Text)
sCallback
  = lens _sCallback (\ s a -> s{_sCallback = a})

instance GoogleRequest SubscriptionsList where
        type Rs SubscriptionsList = SubscriptionListResponse
        type Scopes SubscriptionsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly",
               "https://www.googleapis.com/auth/youtubepartner"]
        requestClient SubscriptionsList'{..}
          = go _sPart _sXgafv _sMine _sUploadProtocol
              _sAccessToken
              _sUploadType
              _sChannelId
              _sMyRecentSubscribers
              _sOnBehalfOfContentOwner
              _sOnBehalfOfContentOwnerChannel
              (_sId ^. _Default)
              _sMySubscribers
              _sForChannelId
              _sPageToken
              (Just _sOrder)
              (Just _sMaxResults)
              _sCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy SubscriptionsListResource)
                      mempty
