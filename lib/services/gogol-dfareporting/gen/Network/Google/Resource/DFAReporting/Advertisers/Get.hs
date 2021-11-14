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
-- Module      : Network.Google.Resource.DFAReporting.Advertisers.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one advertiser by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertisers.get@.
module Network.Google.Resource.DFAReporting.Advertisers.Get
    (
    -- * REST Resource
      AdvertisersGetResource

    -- * Creating a Request
    , advertisersGet
    , AdvertisersGet

    -- * Request Lenses
    , advXgafv
    , advUploadProtocol
    , advAccessToken
    , advUploadType
    , advProFileId
    , advId
    , advCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.advertisers.get@ method which the
-- 'AdvertisersGet' request conforms to.
type AdvertisersGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertisers" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Advertiser

-- | Gets one advertiser by ID.
--
-- /See:/ 'advertisersGet' smart constructor.
data AdvertisersGet =
  AdvertisersGet'
    { _advXgafv :: !(Maybe Xgafv)
    , _advUploadProtocol :: !(Maybe Text)
    , _advAccessToken :: !(Maybe Text)
    , _advUploadType :: !(Maybe Text)
    , _advProFileId :: !(Textual Int64)
    , _advId :: !(Textual Int64)
    , _advCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertisersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'advXgafv'
--
-- * 'advUploadProtocol'
--
-- * 'advAccessToken'
--
-- * 'advUploadType'
--
-- * 'advProFileId'
--
-- * 'advId'
--
-- * 'advCallback'
advertisersGet
    :: Int64 -- ^ 'advProFileId'
    -> Int64 -- ^ 'advId'
    -> AdvertisersGet
advertisersGet pAdvProFileId_ pAdvId_ =
  AdvertisersGet'
    { _advXgafv = Nothing
    , _advUploadProtocol = Nothing
    , _advAccessToken = Nothing
    , _advUploadType = Nothing
    , _advProFileId = _Coerce # pAdvProFileId_
    , _advId = _Coerce # pAdvId_
    , _advCallback = Nothing
    }


-- | V1 error format.
advXgafv :: Lens' AdvertisersGet (Maybe Xgafv)
advXgafv = lens _advXgafv (\ s a -> s{_advXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
advUploadProtocol :: Lens' AdvertisersGet (Maybe Text)
advUploadProtocol
  = lens _advUploadProtocol
      (\ s a -> s{_advUploadProtocol = a})

-- | OAuth access token.
advAccessToken :: Lens' AdvertisersGet (Maybe Text)
advAccessToken
  = lens _advAccessToken
      (\ s a -> s{_advAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
advUploadType :: Lens' AdvertisersGet (Maybe Text)
advUploadType
  = lens _advUploadType
      (\ s a -> s{_advUploadType = a})

-- | User profile ID associated with this request.
advProFileId :: Lens' AdvertisersGet Int64
advProFileId
  = lens _advProFileId (\ s a -> s{_advProFileId = a})
      . _Coerce

-- | Advertiser ID.
advId :: Lens' AdvertisersGet Int64
advId
  = lens _advId (\ s a -> s{_advId = a}) . _Coerce

-- | JSONP
advCallback :: Lens' AdvertisersGet (Maybe Text)
advCallback
  = lens _advCallback (\ s a -> s{_advCallback = a})

instance GoogleRequest AdvertisersGet where
        type Rs AdvertisersGet = Advertiser
        type Scopes AdvertisersGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertisersGet'{..}
          = go _advProFileId _advId _advXgafv
              _advUploadProtocol
              _advAccessToken
              _advUploadType
              _advCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AdvertisersGetResource)
                      mempty
