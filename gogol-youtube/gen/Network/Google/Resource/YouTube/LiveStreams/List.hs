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
-- Module      : Network.Google.Resource.YouTube.LiveStreams.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve the list of streams associated with the given channel. --
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.liveStreams.list@.
module Network.Google.Resource.YouTube.LiveStreams.List
    (
    -- * REST Resource
      LiveStreamsListResource

    -- * Creating a Request
    , liveStreamsList
    , LiveStreamsList

    -- * Request Lenses
    , lslXgafv
    , lslPart
    , lslMine
    , lslUploadProtocol
    , lslAccessToken
    , lslUploadType
    , lslOnBehalfOfContentOwner
    , lslOnBehalfOfContentOwnerChannel
    , lslId
    , lslPageToken
    , lslMaxResults
    , lslCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.liveStreams.list@ method which the
-- 'LiveStreamsList' request conforms to.
type LiveStreamsListResource =
     "youtube" :>
       "v3" :>
         "liveStreams" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "mine" Bool :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "onBehalfOfContentOwner" Text :>
                         QueryParam "onBehalfOfContentOwnerChannel" Text :>
                           QueryParams "id" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" (Textual Word32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] LiveStreamListResponse

-- | Retrieve the list of streams associated with the given channel. --
--
-- /See:/ 'liveStreamsList' smart constructor.
data LiveStreamsList =
  LiveStreamsList'
    { _lslXgafv :: !(Maybe Xgafv)
    , _lslPart :: ![Text]
    , _lslMine :: !(Maybe Bool)
    , _lslUploadProtocol :: !(Maybe Text)
    , _lslAccessToken :: !(Maybe Text)
    , _lslUploadType :: !(Maybe Text)
    , _lslOnBehalfOfContentOwner :: !(Maybe Text)
    , _lslOnBehalfOfContentOwnerChannel :: !(Maybe Text)
    , _lslId :: !(Maybe [Text])
    , _lslPageToken :: !(Maybe Text)
    , _lslMaxResults :: !(Textual Word32)
    , _lslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiveStreamsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lslXgafv'
--
-- * 'lslPart'
--
-- * 'lslMine'
--
-- * 'lslUploadProtocol'
--
-- * 'lslAccessToken'
--
-- * 'lslUploadType'
--
-- * 'lslOnBehalfOfContentOwner'
--
-- * 'lslOnBehalfOfContentOwnerChannel'
--
-- * 'lslId'
--
-- * 'lslPageToken'
--
-- * 'lslMaxResults'
--
-- * 'lslCallback'
liveStreamsList
    :: [Text] -- ^ 'lslPart'
    -> LiveStreamsList
liveStreamsList pLslPart_ =
  LiveStreamsList'
    { _lslXgafv = Nothing
    , _lslPart = _Coerce # pLslPart_
    , _lslMine = Nothing
    , _lslUploadProtocol = Nothing
    , _lslAccessToken = Nothing
    , _lslUploadType = Nothing
    , _lslOnBehalfOfContentOwner = Nothing
    , _lslOnBehalfOfContentOwnerChannel = Nothing
    , _lslId = Nothing
    , _lslPageToken = Nothing
    , _lslMaxResults = 5
    , _lslCallback = Nothing
    }


-- | V1 error format.
lslXgafv :: Lens' LiveStreamsList (Maybe Xgafv)
lslXgafv = lens _lslXgafv (\ s a -> s{_lslXgafv = a})

-- | The *part* parameter specifies a comma-separated list of one or more
-- liveStream resource properties that the API response will include. The
-- part names that you can include in the parameter value are id, snippet,
-- cdn, and status.
lslPart :: Lens' LiveStreamsList [Text]
lslPart
  = lens _lslPart (\ s a -> s{_lslPart = a}) . _Coerce

lslMine :: Lens' LiveStreamsList (Maybe Bool)
lslMine = lens _lslMine (\ s a -> s{_lslMine = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lslUploadProtocol :: Lens' LiveStreamsList (Maybe Text)
lslUploadProtocol
  = lens _lslUploadProtocol
      (\ s a -> s{_lslUploadProtocol = a})

-- | OAuth access token.
lslAccessToken :: Lens' LiveStreamsList (Maybe Text)
lslAccessToken
  = lens _lslAccessToken
      (\ s a -> s{_lslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lslUploadType :: Lens' LiveStreamsList (Maybe Text)
lslUploadType
  = lens _lslUploadType
      (\ s a -> s{_lslUploadType = a})

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
lslOnBehalfOfContentOwner :: Lens' LiveStreamsList (Maybe Text)
lslOnBehalfOfContentOwner
  = lens _lslOnBehalfOfContentOwner
      (\ s a -> s{_lslOnBehalfOfContentOwner = a})

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
lslOnBehalfOfContentOwnerChannel :: Lens' LiveStreamsList (Maybe Text)
lslOnBehalfOfContentOwnerChannel
  = lens _lslOnBehalfOfContentOwnerChannel
      (\ s a -> s{_lslOnBehalfOfContentOwnerChannel = a})

-- | Return LiveStreams with the given ids from Stubby or Apiary.
lslId :: Lens' LiveStreamsList [Text]
lslId
  = lens _lslId (\ s a -> s{_lslId = a}) . _Default .
      _Coerce

-- | The *pageToken* parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
lslPageToken :: Lens' LiveStreamsList (Maybe Text)
lslPageToken
  = lens _lslPageToken (\ s a -> s{_lslPageToken = a})

-- | The *maxResults* parameter specifies the maximum number of items that
-- should be returned in the result set.
lslMaxResults :: Lens' LiveStreamsList Word32
lslMaxResults
  = lens _lslMaxResults
      (\ s a -> s{_lslMaxResults = a})
      . _Coerce

-- | JSONP
lslCallback :: Lens' LiveStreamsList (Maybe Text)
lslCallback
  = lens _lslCallback (\ s a -> s{_lslCallback = a})

instance GoogleRequest LiveStreamsList where
        type Rs LiveStreamsList = LiveStreamListResponse
        type Scopes LiveStreamsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly"]
        requestClient LiveStreamsList'{..}
          = go _lslPart _lslXgafv _lslMine _lslUploadProtocol
              _lslAccessToken
              _lslUploadType
              _lslOnBehalfOfContentOwner
              _lslOnBehalfOfContentOwnerChannel
              (_lslId ^. _Default)
              _lslPageToken
              (Just _lslMaxResults)
              _lslCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy LiveStreamsListResource)
                      mempty
