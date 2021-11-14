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
-- Module      : Network.Google.Resource.DFAReporting.Ads.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one ad by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.ads.get@.
module Network.Google.Resource.DFAReporting.Ads.Get
    (
    -- * REST Resource
      AdsGetResource

    -- * Creating a Request
    , adsGet
    , AdsGet

    -- * Request Lenses
    , adsXgafv
    , adsUploadProtocol
    , adsAccessToken
    , adsUploadType
    , adsProFileId
    , adsId
    , adsCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.ads.get@ method which the
-- 'AdsGet' request conforms to.
type AdsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "ads" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Ad

-- | Gets one ad by ID.
--
-- /See:/ 'adsGet' smart constructor.
data AdsGet =
  AdsGet'
    { _adsXgafv :: !(Maybe Xgafv)
    , _adsUploadProtocol :: !(Maybe Text)
    , _adsAccessToken :: !(Maybe Text)
    , _adsUploadType :: !(Maybe Text)
    , _adsProFileId :: !(Textual Int64)
    , _adsId :: !(Textual Int64)
    , _adsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adsXgafv'
--
-- * 'adsUploadProtocol'
--
-- * 'adsAccessToken'
--
-- * 'adsUploadType'
--
-- * 'adsProFileId'
--
-- * 'adsId'
--
-- * 'adsCallback'
adsGet
    :: Int64 -- ^ 'adsProFileId'
    -> Int64 -- ^ 'adsId'
    -> AdsGet
adsGet pAdsProFileId_ pAdsId_ =
  AdsGet'
    { _adsXgafv = Nothing
    , _adsUploadProtocol = Nothing
    , _adsAccessToken = Nothing
    , _adsUploadType = Nothing
    , _adsProFileId = _Coerce # pAdsProFileId_
    , _adsId = _Coerce # pAdsId_
    , _adsCallback = Nothing
    }


-- | V1 error format.
adsXgafv :: Lens' AdsGet (Maybe Xgafv)
adsXgafv = lens _adsXgafv (\ s a -> s{_adsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
adsUploadProtocol :: Lens' AdsGet (Maybe Text)
adsUploadProtocol
  = lens _adsUploadProtocol
      (\ s a -> s{_adsUploadProtocol = a})

-- | OAuth access token.
adsAccessToken :: Lens' AdsGet (Maybe Text)
adsAccessToken
  = lens _adsAccessToken
      (\ s a -> s{_adsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
adsUploadType :: Lens' AdsGet (Maybe Text)
adsUploadType
  = lens _adsUploadType
      (\ s a -> s{_adsUploadType = a})

-- | User profile ID associated with this request.
adsProFileId :: Lens' AdsGet Int64
adsProFileId
  = lens _adsProFileId (\ s a -> s{_adsProFileId = a})
      . _Coerce

-- | Ad ID.
adsId :: Lens' AdsGet Int64
adsId
  = lens _adsId (\ s a -> s{_adsId = a}) . _Coerce

-- | JSONP
adsCallback :: Lens' AdsGet (Maybe Text)
adsCallback
  = lens _adsCallback (\ s a -> s{_adsCallback = a})

instance GoogleRequest AdsGet where
        type Rs AdsGet = Ad
        type Scopes AdsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdsGet'{..}
          = go _adsProFileId _adsId _adsXgafv
              _adsUploadProtocol
              _adsAccessToken
              _adsUploadType
              _adsCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AdsGetResource) mempty
