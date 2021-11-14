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
-- Module      : Network.Google.Resource.DFAReporting.MobileCarriers.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of mobile carriers.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.mobileCarriers.list@.
module Network.Google.Resource.DFAReporting.MobileCarriers.List
    (
    -- * REST Resource
      MobileCarriersListResource

    -- * Creating a Request
    , mobileCarriersList
    , MobileCarriersList

    -- * Request Lenses
    , mclXgafv
    , mclUploadProtocol
    , mclAccessToken
    , mclUploadType
    , mclProFileId
    , mclCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.mobileCarriers.list@ method which the
-- 'MobileCarriersList' request conforms to.
type MobileCarriersListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "mobileCarriers" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] MobileCarriersListResponse

-- | Retrieves a list of mobile carriers.
--
-- /See:/ 'mobileCarriersList' smart constructor.
data MobileCarriersList =
  MobileCarriersList'
    { _mclXgafv :: !(Maybe Xgafv)
    , _mclUploadProtocol :: !(Maybe Text)
    , _mclAccessToken :: !(Maybe Text)
    , _mclUploadType :: !(Maybe Text)
    , _mclProFileId :: !(Textual Int64)
    , _mclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MobileCarriersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mclXgafv'
--
-- * 'mclUploadProtocol'
--
-- * 'mclAccessToken'
--
-- * 'mclUploadType'
--
-- * 'mclProFileId'
--
-- * 'mclCallback'
mobileCarriersList
    :: Int64 -- ^ 'mclProFileId'
    -> MobileCarriersList
mobileCarriersList pMclProFileId_ =
  MobileCarriersList'
    { _mclXgafv = Nothing
    , _mclUploadProtocol = Nothing
    , _mclAccessToken = Nothing
    , _mclUploadType = Nothing
    , _mclProFileId = _Coerce # pMclProFileId_
    , _mclCallback = Nothing
    }


-- | V1 error format.
mclXgafv :: Lens' MobileCarriersList (Maybe Xgafv)
mclXgafv = lens _mclXgafv (\ s a -> s{_mclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mclUploadProtocol :: Lens' MobileCarriersList (Maybe Text)
mclUploadProtocol
  = lens _mclUploadProtocol
      (\ s a -> s{_mclUploadProtocol = a})

-- | OAuth access token.
mclAccessToken :: Lens' MobileCarriersList (Maybe Text)
mclAccessToken
  = lens _mclAccessToken
      (\ s a -> s{_mclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mclUploadType :: Lens' MobileCarriersList (Maybe Text)
mclUploadType
  = lens _mclUploadType
      (\ s a -> s{_mclUploadType = a})

-- | User profile ID associated with this request.
mclProFileId :: Lens' MobileCarriersList Int64
mclProFileId
  = lens _mclProFileId (\ s a -> s{_mclProFileId = a})
      . _Coerce

-- | JSONP
mclCallback :: Lens' MobileCarriersList (Maybe Text)
mclCallback
  = lens _mclCallback (\ s a -> s{_mclCallback = a})

instance GoogleRequest MobileCarriersList where
        type Rs MobileCarriersList =
             MobileCarriersListResponse
        type Scopes MobileCarriersList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient MobileCarriersList'{..}
          = go _mclProFileId _mclXgafv _mclUploadProtocol
              _mclAccessToken
              _mclUploadType
              _mclCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy MobileCarriersListResource)
                      mempty
