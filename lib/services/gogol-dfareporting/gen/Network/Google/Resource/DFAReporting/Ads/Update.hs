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
-- Module      : Network.Google.Resource.DFAReporting.Ads.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing ad.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.ads.update@.
module Network.Google.Resource.DFAReporting.Ads.Update
    (
    -- * REST Resource
      AdsUpdateResource

    -- * Creating a Request
    , adsUpdate
    , AdsUpdate

    -- * Request Lenses
    , aXgafv
    , aUploadProtocol
    , aAccessToken
    , aUploadType
    , aProFileId
    , aPayload
    , aCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.ads.update@ method which the
-- 'AdsUpdate' request conforms to.
type AdsUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "ads" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Ad :> Put '[JSON] Ad

-- | Updates an existing ad.
--
-- /See:/ 'adsUpdate' smart constructor.
data AdsUpdate =
  AdsUpdate'
    { _aXgafv :: !(Maybe Xgafv)
    , _aUploadProtocol :: !(Maybe Text)
    , _aAccessToken :: !(Maybe Text)
    , _aUploadType :: !(Maybe Text)
    , _aProFileId :: !(Textual Int64)
    , _aPayload :: !Ad
    , _aCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aXgafv'
--
-- * 'aUploadProtocol'
--
-- * 'aAccessToken'
--
-- * 'aUploadType'
--
-- * 'aProFileId'
--
-- * 'aPayload'
--
-- * 'aCallback'
adsUpdate
    :: Int64 -- ^ 'aProFileId'
    -> Ad -- ^ 'aPayload'
    -> AdsUpdate
adsUpdate pAProFileId_ pAPayload_ =
  AdsUpdate'
    { _aXgafv = Nothing
    , _aUploadProtocol = Nothing
    , _aAccessToken = Nothing
    , _aUploadType = Nothing
    , _aProFileId = _Coerce # pAProFileId_
    , _aPayload = pAPayload_
    , _aCallback = Nothing
    }


-- | V1 error format.
aXgafv :: Lens' AdsUpdate (Maybe Xgafv)
aXgafv = lens _aXgafv (\ s a -> s{_aXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aUploadProtocol :: Lens' AdsUpdate (Maybe Text)
aUploadProtocol
  = lens _aUploadProtocol
      (\ s a -> s{_aUploadProtocol = a})

-- | OAuth access token.
aAccessToken :: Lens' AdsUpdate (Maybe Text)
aAccessToken
  = lens _aAccessToken (\ s a -> s{_aAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aUploadType :: Lens' AdsUpdate (Maybe Text)
aUploadType
  = lens _aUploadType (\ s a -> s{_aUploadType = a})

-- | User profile ID associated with this request.
aProFileId :: Lens' AdsUpdate Int64
aProFileId
  = lens _aProFileId (\ s a -> s{_aProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
aPayload :: Lens' AdsUpdate Ad
aPayload = lens _aPayload (\ s a -> s{_aPayload = a})

-- | JSONP
aCallback :: Lens' AdsUpdate (Maybe Text)
aCallback
  = lens _aCallback (\ s a -> s{_aCallback = a})

instance GoogleRequest AdsUpdate where
        type Rs AdsUpdate = Ad
        type Scopes AdsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdsUpdate'{..}
          = go _aProFileId _aXgafv _aUploadProtocol
              _aAccessToken
              _aUploadType
              _aCallback
              (Just AltJSON)
              _aPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AdsUpdateResource)
                      mempty
