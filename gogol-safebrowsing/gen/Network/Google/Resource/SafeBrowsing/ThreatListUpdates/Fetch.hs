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
-- Module      : Network.Google.Resource.SafeBrowsing.ThreatListUpdates.Fetch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches the most recent threat list updates. A client can request
-- updates for multiple lists at once.
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing APIs Reference> for @safebrowsing.threatListUpdates.fetch@.
module Network.Google.Resource.SafeBrowsing.ThreatListUpdates.Fetch
    (
    -- * REST Resource
      ThreatListUpdatesFetchResource

    -- * Creating a Request
    , threatListUpdatesFetch
    , ThreatListUpdatesFetch

    -- * Request Lenses
    , tlufXgafv
    , tlufUploadProtocol
    , tlufPp
    , tlufAccessToken
    , tlufUploadType
    , tlufPayload
    , tlufBearerToken
    , tlufCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.SafeBrowsing.Types

-- | A resource alias for @safebrowsing.threatListUpdates.fetch@ method which the
-- 'ThreatListUpdatesFetch' request conforms to.
type ThreatListUpdatesFetchResource =
     "v4" :>
       "threatListUpdates:fetch" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] FetchThreatListUpdatesRequest :>
                           Post '[JSON] FetchThreatListUpdatesResponse

-- | Fetches the most recent threat list updates. A client can request
-- updates for multiple lists at once.
--
-- /See:/ 'threatListUpdatesFetch' smart constructor.
data ThreatListUpdatesFetch = ThreatListUpdatesFetch'
    { _tlufXgafv          :: !(Maybe Text)
    , _tlufUploadProtocol :: !(Maybe Text)
    , _tlufPp             :: !Bool
    , _tlufAccessToken    :: !(Maybe Text)
    , _tlufUploadType     :: !(Maybe Text)
    , _tlufPayload        :: !FetchThreatListUpdatesRequest
    , _tlufBearerToken    :: !(Maybe Text)
    , _tlufCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ThreatListUpdatesFetch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlufXgafv'
--
-- * 'tlufUploadProtocol'
--
-- * 'tlufPp'
--
-- * 'tlufAccessToken'
--
-- * 'tlufUploadType'
--
-- * 'tlufPayload'
--
-- * 'tlufBearerToken'
--
-- * 'tlufCallback'
threatListUpdatesFetch
    :: FetchThreatListUpdatesRequest -- ^ 'tlufPayload'
    -> ThreatListUpdatesFetch
threatListUpdatesFetch pTlufPayload_ =
    ThreatListUpdatesFetch'
    { _tlufXgafv = Nothing
    , _tlufUploadProtocol = Nothing
    , _tlufPp = True
    , _tlufAccessToken = Nothing
    , _tlufUploadType = Nothing
    , _tlufPayload = pTlufPayload_
    , _tlufBearerToken = Nothing
    , _tlufCallback = Nothing
    }

-- | V1 error format.
tlufXgafv :: Lens' ThreatListUpdatesFetch (Maybe Text)
tlufXgafv
  = lens _tlufXgafv (\ s a -> s{_tlufXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tlufUploadProtocol :: Lens' ThreatListUpdatesFetch (Maybe Text)
tlufUploadProtocol
  = lens _tlufUploadProtocol
      (\ s a -> s{_tlufUploadProtocol = a})

-- | Pretty-print response.
tlufPp :: Lens' ThreatListUpdatesFetch Bool
tlufPp = lens _tlufPp (\ s a -> s{_tlufPp = a})

-- | OAuth access token.
tlufAccessToken :: Lens' ThreatListUpdatesFetch (Maybe Text)
tlufAccessToken
  = lens _tlufAccessToken
      (\ s a -> s{_tlufAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tlufUploadType :: Lens' ThreatListUpdatesFetch (Maybe Text)
tlufUploadType
  = lens _tlufUploadType
      (\ s a -> s{_tlufUploadType = a})

-- | Multipart request metadata.
tlufPayload :: Lens' ThreatListUpdatesFetch FetchThreatListUpdatesRequest
tlufPayload
  = lens _tlufPayload (\ s a -> s{_tlufPayload = a})

-- | OAuth bearer token.
tlufBearerToken :: Lens' ThreatListUpdatesFetch (Maybe Text)
tlufBearerToken
  = lens _tlufBearerToken
      (\ s a -> s{_tlufBearerToken = a})

-- | JSONP
tlufCallback :: Lens' ThreatListUpdatesFetch (Maybe Text)
tlufCallback
  = lens _tlufCallback (\ s a -> s{_tlufCallback = a})

instance GoogleRequest ThreatListUpdatesFetch where
        type Rs ThreatListUpdatesFetch =
             FetchThreatListUpdatesResponse
        type Scopes ThreatListUpdatesFetch = '[]
        requestClient ThreatListUpdatesFetch'{..}
          = go _tlufXgafv _tlufUploadProtocol (Just _tlufPp)
              _tlufAccessToken
              _tlufUploadType
              _tlufBearerToken
              _tlufCallback
              (Just AltJSON)
              _tlufPayload
              safeBrowsingService
          where go
                  = buildClient
                      (Proxy :: Proxy ThreatListUpdatesFetchResource)
                      mempty
