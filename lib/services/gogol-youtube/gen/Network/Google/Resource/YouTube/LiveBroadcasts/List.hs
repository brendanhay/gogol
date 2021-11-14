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
-- Module      : Network.Google.Resource.YouTube.LiveBroadcasts.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve the list of broadcasts associated with the given channel.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveBroadcasts.list@.
module Network.Google.Resource.YouTube.LiveBroadcasts.List
    (
    -- * REST Resource
      LiveBroadcastsListResource

    -- * Creating a Request
    , liveBroadcastsList
    , LiveBroadcastsList

    -- * Request Lenses
    , lblXgafv
    , lblPart
    , lblMine
    , lblUploadProtocol
    , lblAccessToken
    , lblUploadType
    , lblBroadcastStatus
    , lblOnBehalfOfContentOwner
    , lblBroadcastType
    , lblOnBehalfOfContentOwnerChannel
    , lblId
    , lblPageToken
    , lblMaxResults
    , lblCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveBroadcasts.list@ method which the
-- 'LiveBroadcastsList' request conforms to.
type LiveBroadcastsListResource =
     "youtube" :>
       "v3" :>
         "liveBroadcasts" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "mine" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "broadcastStatus"
                         LiveBroadcastsListBroadcastStatus
                         :>
                         QueryParam "onBehalfOfContentOwner" Text :>
                           QueryParam "broadcastType"
                             LiveBroadcastsListBroadcastType
                             :>
                             QueryParam "onBehalfOfContentOwnerChannel" Text :>
                               QueryParams "id" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "maxResults" (Textual Word32) :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] LiveBroadcastListResponse

-- | Retrieve the list of broadcasts associated with the given channel.
--
-- /See:/ 'liveBroadcastsList' smart constructor.
data LiveBroadcastsList =
  LiveBroadcastsList'
    { _lblXgafv :: !(Maybe Xgafv)
    , _lblPart :: ![Text]
    , _lblMine :: !(Maybe Bool)
    , _lblUploadProtocol :: !(Maybe Text)
    , _lblAccessToken :: !(Maybe Text)
    , _lblUploadType :: !(Maybe Text)
    , _lblBroadcastStatus :: !(Maybe LiveBroadcastsListBroadcastStatus)
    , _lblOnBehalfOfContentOwner :: !(Maybe Text)
    , _lblBroadcastType :: !LiveBroadcastsListBroadcastType
    , _lblOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lblId :: !(Maybe [Text])
    , _lblPageToken :: !(Maybe Text)
    , _lblMaxResults :: !(Textual Word32)
    , _lblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveBroadcastsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lblXgafv'
--
-- * 'lblPart'
--
-- * 'lblMine'
--
-- * 'lblUploadProtocol'
--
-- * 'lblAccessToken'
--
-- * 'lblUploadType'
--
-- * 'lblBroadcastStatus'
--
-- * 'lblOnBehalfOfContentOwner'
--
-- * 'lblBroadcastType'
--
-- * 'lblOnBehalfOfContentOwnerChannel'
--
-- * 'lblId'
--
-- * 'lblPageToken'
--
-- * 'lblMaxResults'
--
-- * 'lblCallback'
liveBroadcastsList
    :: [Text] -- ^ 'lblPart'
    -> LiveBroadcastsList
liveBroadcastsList pLblPart_ =
  LiveBroadcastsList'
    { _lblXgafv = Nothing
    , _lblPart = _Coerce # pLblPart_
    , _lblMine = Nothing
    , _lblUploadProtocol = Nothing
    , _lblAccessToken = Nothing
    , _lblUploadType = Nothing
    , _lblBroadcastStatus = Nothing
    , _lblOnBehalfOfContentOwner = Nothing
    , _lblBroadcastType = Event
    , _lblOnBehalfOfContentOwnerChannel = Nothing
    , _lblId = Nothing
    , _lblPageToken = Nothing
    , _lblMaxResults = 5
    , _lblCallback = Nothing
    }


-- | V1 error format.
lblXgafv :: Lens' LiveBroadcastsList (Maybe Xgafv)
lblXgafv = lens _lblXgafv (\ s a -> s{_lblXgafv = a})

-- | The *part* parameter specifies a comma-separated list of one or more
-- liveBroadcast resource properties that the API response will include.
-- The part names that you can include in the parameter value are id,
-- snippet, contentDetails, status and statistics.
lblPart :: Lens' LiveBroadcastsList [Text]
lblPart
  = lens _lblPart (\ s a -> s{_lblPart = a}) . _Coerce

lblMine :: Lens' LiveBroadcastsList (Maybe Bool)
lblMine = lens _lblMine (\ s a -> s{_lblMine = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lblUploadProtocol :: Lens' LiveBroadcastsList (Maybe Text)
lblUploadProtocol
  = lens _lblUploadProtocol
      (\ s a -> s{_lblUploadProtocol = a})

-- | OAuth access token.
lblAccessToken :: Lens' LiveBroadcastsList (Maybe Text)
lblAccessToken
  = lens _lblAccessToken
      (\ s a -> s{_lblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lblUploadType :: Lens' LiveBroadcastsList (Maybe Text)
lblUploadType
  = lens _lblUploadType
      (\ s a -> s{_lblUploadType = a})

-- | Return broadcasts with a certain status, e.g. active broadcasts.
lblBroadcastStatus :: Lens' LiveBroadcastsList (Maybe LiveBroadcastsListBroadcastStatus)
lblBroadcastStatus
  = lens _lblBroadcastStatus
      (\ s a -> s{_lblBroadcastStatus = a})

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
lblOnBehalfOfContentOwner :: Lens' LiveBroadcastsList (Maybe Text)
lblOnBehalfOfContentOwner
  = lens _lblOnBehalfOfContentOwner
      (\ s a -> s{_lblOnBehalfOfContentOwner = a})

-- | Return only broadcasts with the selected type.
lblBroadcastType :: Lens' LiveBroadcastsList LiveBroadcastsListBroadcastType
lblBroadcastType
  = lens _lblBroadcastType
      (\ s a -> s{_lblBroadcastType = a})

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
lblOnBehalfOfContentOwnerChannel :: Lens' LiveBroadcastsList (Maybe Text)
lblOnBehalfOfContentOwnerChannel
  = lens _lblOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lblOnBehalfOfContentOwnerChannel = a})

-- | Return broadcasts with the given ids from Stubby or Apiary.
lblId :: Lens' LiveBroadcastsList [Text]
lblId
  = lens _lblId (\ s a -> s{_lblId = a}) . _Default .
      _Coerce

-- | The *pageToken* parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
lblPageToken :: Lens' LiveBroadcastsList (Maybe Text)
lblPageToken
  = lens _lblPageToken (\ s a -> s{_lblPageToken = a})

-- | The *maxResults* parameter specifies the maximum number of items that
-- should be returned in the result set.
lblMaxResults :: Lens' LiveBroadcastsList Word32
lblMaxResults
  = lens _lblMaxResults
      (\ s a -> s{_lblMaxResults = a})
      . _Coerce

-- | JSONP
lblCallback :: Lens' LiveBroadcastsList (Maybe Text)
lblCallback
  = lens _lblCallback (\ s a -> s{_lblCallback = a})

instance GoogleRequest LiveBroadcastsList where
        type Rs LiveBroadcastsList =
             LiveBroadcastListResponse
        type Scopes LiveBroadcastsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly"]
        requestClient LiveBroadcastsList'{..}
          = go _lblPart _lblXgafv _lblMine _lblUploadProtocol
              _lblAccessToken
              _lblUploadType
              _lblBroadcastStatus
              _lblOnBehalfOfContentOwner
              (Just _lblBroadcastType)
              _lblOnBehalfOfContentOwnerChannel
              (_lblId ^. _Default)
              _lblPageToken
              (Just _lblMaxResults)
              _lblCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveBroadcastsListResource)
                      mempty
