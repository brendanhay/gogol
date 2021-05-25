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
-- Module      : Network.Google.Resource.SafeBrowsing.ThreatHits.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reports a Safe Browsing threat list hit to Google. Only projects with
-- TRUSTED_REPORTER visibility can use this method.
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference> for @safebrowsing.threatHits.create@.
module Network.Google.Resource.SafeBrowsing.ThreatHits.Create
    (
    -- * REST Resource
      ThreatHitsCreateResource

    -- * Creating a Request
    , threatHitsCreate
    , ThreatHitsCreate

    -- * Request Lenses
    , thcXgafv
    , thcUploadProtocol
    , thcAccessToken
    , thcUploadType
    , thcPayload
    , thcCallback
    ) where

import Network.Google.Prelude
import Network.Google.SafeBrowsing.Types

-- | A resource alias for @safebrowsing.threatHits.create@ method which the
-- 'ThreatHitsCreate' request conforms to.
type ThreatHitsCreateResource =
     "v4" :>
       "threatHits" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GoogleSecuritySafebrowsingV4ThreatHit
                       :> Post '[JSON] GoogleProtobufEmpty

-- | Reports a Safe Browsing threat list hit to Google. Only projects with
-- TRUSTED_REPORTER visibility can use this method.
--
-- /See:/ 'threatHitsCreate' smart constructor.
data ThreatHitsCreate =
  ThreatHitsCreate'
    { _thcXgafv :: !(Maybe Xgafv)
    , _thcUploadProtocol :: !(Maybe Text)
    , _thcAccessToken :: !(Maybe Text)
    , _thcUploadType :: !(Maybe Text)
    , _thcPayload :: !GoogleSecuritySafebrowsingV4ThreatHit
    , _thcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ThreatHitsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'thcXgafv'
--
-- * 'thcUploadProtocol'
--
-- * 'thcAccessToken'
--
-- * 'thcUploadType'
--
-- * 'thcPayload'
--
-- * 'thcCallback'
threatHitsCreate
    :: GoogleSecuritySafebrowsingV4ThreatHit -- ^ 'thcPayload'
    -> ThreatHitsCreate
threatHitsCreate pThcPayload_ =
  ThreatHitsCreate'
    { _thcXgafv = Nothing
    , _thcUploadProtocol = Nothing
    , _thcAccessToken = Nothing
    , _thcUploadType = Nothing
    , _thcPayload = pThcPayload_
    , _thcCallback = Nothing
    }


-- | V1 error format.
thcXgafv :: Lens' ThreatHitsCreate (Maybe Xgafv)
thcXgafv = lens _thcXgafv (\ s a -> s{_thcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
thcUploadProtocol :: Lens' ThreatHitsCreate (Maybe Text)
thcUploadProtocol
  = lens _thcUploadProtocol
      (\ s a -> s{_thcUploadProtocol = a})

-- | OAuth access token.
thcAccessToken :: Lens' ThreatHitsCreate (Maybe Text)
thcAccessToken
  = lens _thcAccessToken
      (\ s a -> s{_thcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
thcUploadType :: Lens' ThreatHitsCreate (Maybe Text)
thcUploadType
  = lens _thcUploadType
      (\ s a -> s{_thcUploadType = a})

-- | Multipart request metadata.
thcPayload :: Lens' ThreatHitsCreate GoogleSecuritySafebrowsingV4ThreatHit
thcPayload
  = lens _thcPayload (\ s a -> s{_thcPayload = a})

-- | JSONP
thcCallback :: Lens' ThreatHitsCreate (Maybe Text)
thcCallback
  = lens _thcCallback (\ s a -> s{_thcCallback = a})

instance GoogleRequest ThreatHitsCreate where
        type Rs ThreatHitsCreate = GoogleProtobufEmpty
        type Scopes ThreatHitsCreate = '[]
        requestClient ThreatHitsCreate'{..}
          = go _thcXgafv _thcUploadProtocol _thcAccessToken
              _thcUploadType
              _thcCallback
              (Just AltJSON)
              _thcPayload
              safeBrowsingService
          where go
                  = buildClient
                      (Proxy :: Proxy ThreatHitsCreateResource)
                      mempty
