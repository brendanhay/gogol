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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Locations.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a location.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.locations.get@.
module Network.Google.Resource.Logging.BillingAccounts.Locations.Get
    (
    -- * REST Resource
      BillingAccountsLocationsGetResource

    -- * Creating a Request
    , billingAccountsLocationsGet
    , BillingAccountsLocationsGet

    -- * Request Lenses
    , balgXgafv
    , balgUploadProtocol
    , balgAccessToken
    , balgUploadType
    , balgName
    , balgCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.locations.get@ method which the
-- 'BillingAccountsLocationsGet' request conforms to.
type BillingAccountsLocationsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Location

-- | Gets information about a location.
--
-- /See:/ 'billingAccountsLocationsGet' smart constructor.
data BillingAccountsLocationsGet =
  BillingAccountsLocationsGet'
    { _balgXgafv :: !(Maybe Xgafv)
    , _balgUploadProtocol :: !(Maybe Text)
    , _balgAccessToken :: !(Maybe Text)
    , _balgUploadType :: !(Maybe Text)
    , _balgName :: !Text
    , _balgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsLocationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'balgXgafv'
--
-- * 'balgUploadProtocol'
--
-- * 'balgAccessToken'
--
-- * 'balgUploadType'
--
-- * 'balgName'
--
-- * 'balgCallback'
billingAccountsLocationsGet
    :: Text -- ^ 'balgName'
    -> BillingAccountsLocationsGet
billingAccountsLocationsGet pBalgName_ =
  BillingAccountsLocationsGet'
    { _balgXgafv = Nothing
    , _balgUploadProtocol = Nothing
    , _balgAccessToken = Nothing
    , _balgUploadType = Nothing
    , _balgName = pBalgName_
    , _balgCallback = Nothing
    }


-- | V1 error format.
balgXgafv :: Lens' BillingAccountsLocationsGet (Maybe Xgafv)
balgXgafv
  = lens _balgXgafv (\ s a -> s{_balgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
balgUploadProtocol :: Lens' BillingAccountsLocationsGet (Maybe Text)
balgUploadProtocol
  = lens _balgUploadProtocol
      (\ s a -> s{_balgUploadProtocol = a})

-- | OAuth access token.
balgAccessToken :: Lens' BillingAccountsLocationsGet (Maybe Text)
balgAccessToken
  = lens _balgAccessToken
      (\ s a -> s{_balgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
balgUploadType :: Lens' BillingAccountsLocationsGet (Maybe Text)
balgUploadType
  = lens _balgUploadType
      (\ s a -> s{_balgUploadType = a})

-- | Resource name for the location.
balgName :: Lens' BillingAccountsLocationsGet Text
balgName = lens _balgName (\ s a -> s{_balgName = a})

-- | JSONP
balgCallback :: Lens' BillingAccountsLocationsGet (Maybe Text)
balgCallback
  = lens _balgCallback (\ s a -> s{_balgCallback = a})

instance GoogleRequest BillingAccountsLocationsGet
         where
        type Rs BillingAccountsLocationsGet = Location
        type Scopes BillingAccountsLocationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient BillingAccountsLocationsGet'{..}
          = go _balgName _balgXgafv _balgUploadProtocol
              _balgAccessToken
              _balgUploadType
              _balgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsLocationsGetResource)
                      mempty
