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
-- Module      : Network.Google.Resource.YouTube.SuperChatEvents.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of resources, possibly filtered.
--
-- /See:/ <https://developers.google.com/youtube/ YouTube Data API v3 Reference> for @youtube.superChatEvents.list@.
module Network.Google.Resource.YouTube.SuperChatEvents.List
    (
    -- * REST Resource
      SuperChatEventsListResource

    -- * Creating a Request
    , superChatEventsList
    , SuperChatEventsList

    -- * Request Lenses
    , scelXgafv
    , scelPart
    , scelUploadProtocol
    , scelAccessToken
    , scelUploadType
    , scelHl
    , scelPageToken
    , scelMaxResults
    , scelCallback
    ) where

import Network.Google.Prelude
import Network.Google.YouTube.Types

-- | A resource alias for @youtube.superChatEvents.list@ method which the
-- 'SuperChatEventsList' request conforms to.
type SuperChatEventsListResource =
     "youtube" :>
       "v3" :>
         "superChatEvents" :>
           QueryParams "part" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "hl" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] SuperChatEventListResponse

-- | Retrieves a list of resources, possibly filtered.
--
-- /See:/ 'superChatEventsList' smart constructor.
data SuperChatEventsList =
  SuperChatEventsList'
    { _scelXgafv :: !(Maybe Xgafv)
    , _scelPart :: ![Text]
    , _scelUploadProtocol :: !(Maybe Text)
    , _scelAccessToken :: !(Maybe Text)
    , _scelUploadType :: !(Maybe Text)
    , _scelHl :: !(Maybe Text)
    , _scelPageToken :: !(Maybe Text)
    , _scelMaxResults :: !(Textual Word32)
    , _scelCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SuperChatEventsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scelXgafv'
--
-- * 'scelPart'
--
-- * 'scelUploadProtocol'
--
-- * 'scelAccessToken'
--
-- * 'scelUploadType'
--
-- * 'scelHl'
--
-- * 'scelPageToken'
--
-- * 'scelMaxResults'
--
-- * 'scelCallback'
superChatEventsList
    :: [Text] -- ^ 'scelPart'
    -> SuperChatEventsList
superChatEventsList pScelPart_ =
  SuperChatEventsList'
    { _scelXgafv = Nothing
    , _scelPart = _Coerce # pScelPart_
    , _scelUploadProtocol = Nothing
    , _scelAccessToken = Nothing
    , _scelUploadType = Nothing
    , _scelHl = Nothing
    , _scelPageToken = Nothing
    , _scelMaxResults = 5
    , _scelCallback = Nothing
    }


-- | V1 error format.
scelXgafv :: Lens' SuperChatEventsList (Maybe Xgafv)
scelXgafv
  = lens _scelXgafv (\ s a -> s{_scelXgafv = a})

-- | The *part* parameter specifies the superChatEvent resource parts that
-- the API response will include. This parameter is currently not
-- supported.
scelPart :: Lens' SuperChatEventsList [Text]
scelPart
  = lens _scelPart (\ s a -> s{_scelPart = a}) .
      _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
scelUploadProtocol :: Lens' SuperChatEventsList (Maybe Text)
scelUploadProtocol
  = lens _scelUploadProtocol
      (\ s a -> s{_scelUploadProtocol = a})

-- | OAuth access token.
scelAccessToken :: Lens' SuperChatEventsList (Maybe Text)
scelAccessToken
  = lens _scelAccessToken
      (\ s a -> s{_scelAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
scelUploadType :: Lens' SuperChatEventsList (Maybe Text)
scelUploadType
  = lens _scelUploadType
      (\ s a -> s{_scelUploadType = a})

-- | Return rendered funding amounts in specified language.
scelHl :: Lens' SuperChatEventsList (Maybe Text)
scelHl = lens _scelHl (\ s a -> s{_scelHl = a})

-- | The *pageToken* parameter identifies a specific page in the result set
-- that should be returned. In an API response, the nextPageToken and
-- prevPageToken properties identify other pages that could be retrieved.
scelPageToken :: Lens' SuperChatEventsList (Maybe Text)
scelPageToken
  = lens _scelPageToken
      (\ s a -> s{_scelPageToken = a})

-- | The *maxResults* parameter specifies the maximum number of items that
-- should be returned in the result set.
scelMaxResults :: Lens' SuperChatEventsList Word32
scelMaxResults
  = lens _scelMaxResults
      (\ s a -> s{_scelMaxResults = a})
      . _Coerce

-- | JSONP
scelCallback :: Lens' SuperChatEventsList (Maybe Text)
scelCallback
  = lens _scelCallback (\ s a -> s{_scelCallback = a})

instance GoogleRequest SuperChatEventsList where
        type Rs SuperChatEventsList =
             SuperChatEventListResponse
        type Scopes SuperChatEventsList =
             '["https://www.googleapis.com/auth/youtube",
               "https://www.googleapis.com/auth/youtube.force-ssl",
               "https://www.googleapis.com/auth/youtube.readonly"]
        requestClient SuperChatEventsList'{..}
          = go _scelPart _scelXgafv _scelUploadProtocol
              _scelAccessToken
              _scelUploadType
              _scelHl
              _scelPageToken
              (Just _scelMaxResults)
              _scelCallback
              (Just AltJSON)
              youTubeService
          where go
                  = buildClient
                      (Proxy :: Proxy SuperChatEventsListResource)
                      mempty
