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
-- Module      : Network.Google.Resource.DFAReporting.Advertisers.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing advertiser.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertisers.update@.
module Network.Google.Resource.DFAReporting.Advertisers.Update
    (
    -- * REST Resource
      AdvertisersUpdateResource

    -- * Creating a Request
    , advertisersUpdate
    , AdvertisersUpdate

    -- * Request Lenses
    , auXgafv
    , auUploadProtocol
    , auAccessToken
    , auUploadType
    , auProFileId
    , auPayload
    , auCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.advertisers.update@ method which the
-- 'AdvertisersUpdate' request conforms to.
type AdvertisersUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertisers" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Advertiser :> Put '[JSON] Advertiser

-- | Updates an existing advertiser.
--
-- /See:/ 'advertisersUpdate' smart constructor.
data AdvertisersUpdate =
  AdvertisersUpdate'
    { _auXgafv :: !(Maybe Xgafv)
    , _auUploadProtocol :: !(Maybe Text)
    , _auAccessToken :: !(Maybe Text)
    , _auUploadType :: !(Maybe Text)
    , _auProFileId :: !(Textual Int64)
    , _auPayload :: !Advertiser
    , _auCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertisersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auXgafv'
--
-- * 'auUploadProtocol'
--
-- * 'auAccessToken'
--
-- * 'auUploadType'
--
-- * 'auProFileId'
--
-- * 'auPayload'
--
-- * 'auCallback'
advertisersUpdate
    :: Int64 -- ^ 'auProFileId'
    -> Advertiser -- ^ 'auPayload'
    -> AdvertisersUpdate
advertisersUpdate pAuProFileId_ pAuPayload_ =
  AdvertisersUpdate'
    { _auXgafv = Nothing
    , _auUploadProtocol = Nothing
    , _auAccessToken = Nothing
    , _auUploadType = Nothing
    , _auProFileId = _Coerce # pAuProFileId_
    , _auPayload = pAuPayload_
    , _auCallback = Nothing
    }


-- | V1 error format.
auXgafv :: Lens' AdvertisersUpdate (Maybe Xgafv)
auXgafv = lens _auXgafv (\ s a -> s{_auXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
auUploadProtocol :: Lens' AdvertisersUpdate (Maybe Text)
auUploadProtocol
  = lens _auUploadProtocol
      (\ s a -> s{_auUploadProtocol = a})

-- | OAuth access token.
auAccessToken :: Lens' AdvertisersUpdate (Maybe Text)
auAccessToken
  = lens _auAccessToken
      (\ s a -> s{_auAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
auUploadType :: Lens' AdvertisersUpdate (Maybe Text)
auUploadType
  = lens _auUploadType (\ s a -> s{_auUploadType = a})

-- | User profile ID associated with this request.
auProFileId :: Lens' AdvertisersUpdate Int64
auProFileId
  = lens _auProFileId (\ s a -> s{_auProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
auPayload :: Lens' AdvertisersUpdate Advertiser
auPayload
  = lens _auPayload (\ s a -> s{_auPayload = a})

-- | JSONP
auCallback :: Lens' AdvertisersUpdate (Maybe Text)
auCallback
  = lens _auCallback (\ s a -> s{_auCallback = a})

instance GoogleRequest AdvertisersUpdate where
        type Rs AdvertisersUpdate = Advertiser
        type Scopes AdvertisersUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertisersUpdate'{..}
          = go _auProFileId _auXgafv _auUploadProtocol
              _auAccessToken
              _auUploadType
              _auCallback
              (Just AltJSON)
              _auPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertisersUpdateResource)
                      mempty
