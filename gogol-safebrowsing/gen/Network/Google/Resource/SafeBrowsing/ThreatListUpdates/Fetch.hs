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
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference> for @safebrowsing.threatListUpdates.fetch@.
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
    , tlufAccessToken
    , tlufUploadType
    , tlufPayload
    , tlufCallback
    ) where

import Network.Google.Prelude
import Network.Google.SafeBrowsing.Types

-- | A resource alias for @safebrowsing.threatListUpdates.fetch@ method which the
-- 'ThreatListUpdatesFetch' request conforms to.
type ThreatListUpdatesFetchResource =
     "v4" :>
       "threatListUpdates:fetch" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
                       :>
                       Post '[JSON]
                         GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse

-- | Fetches the most recent threat list updates. A client can request
-- updates for multiple lists at once.
--
-- /See:/ 'threatListUpdatesFetch' smart constructor.
data ThreatListUpdatesFetch =
  ThreatListUpdatesFetch'
    { _tlufXgafv :: !(Maybe Xgafv)
    , _tlufUploadProtocol :: !(Maybe Text)
    , _tlufAccessToken :: !(Maybe Text)
    , _tlufUploadType :: !(Maybe Text)
    , _tlufPayload :: !GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
    , _tlufCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ThreatListUpdatesFetch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlufXgafv'
--
-- * 'tlufUploadProtocol'
--
-- * 'tlufAccessToken'
--
-- * 'tlufUploadType'
--
-- * 'tlufPayload'
--
-- * 'tlufCallback'
threatListUpdatesFetch
    :: GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest -- ^ 'tlufPayload'
    -> ThreatListUpdatesFetch
threatListUpdatesFetch pTlufPayload_ =
  ThreatListUpdatesFetch'
    { _tlufXgafv = Nothing
    , _tlufUploadProtocol = Nothing
    , _tlufAccessToken = Nothing
    , _tlufUploadType = Nothing
    , _tlufPayload = pTlufPayload_
    , _tlufCallback = Nothing
    }


-- | V1 error format.
tlufXgafv :: Lens' ThreatListUpdatesFetch (Maybe Xgafv)
tlufXgafv
  = lens _tlufXgafv (\ s a -> s{_tlufXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tlufUploadProtocol :: Lens' ThreatListUpdatesFetch (Maybe Text)
tlufUploadProtocol
  = lens _tlufUploadProtocol
      (\ s a -> s{_tlufUploadProtocol = a})

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
tlufPayload :: Lens' ThreatListUpdatesFetch GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
tlufPayload
  = lens _tlufPayload (\ s a -> s{_tlufPayload = a})

-- | JSONP
tlufCallback :: Lens' ThreatListUpdatesFetch (Maybe Text)
tlufCallback
  = lens _tlufCallback (\ s a -> s{_tlufCallback = a})

instance GoogleRequest ThreatListUpdatesFetch where
        type Rs ThreatListUpdatesFetch =
             GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
        type Scopes ThreatListUpdatesFetch = '[]
        requestClient ThreatListUpdatesFetch'{..}
          = go _tlufXgafv _tlufUploadProtocol _tlufAccessToken
              _tlufUploadType
              _tlufCallback
              (Just AltJSON)
              _tlufPayload
              safeBrowsingService
          where go
                  = buildClient
                      (Proxy :: Proxy ThreatListUpdatesFetchResource)
                      mempty
