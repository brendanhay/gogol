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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a customer\'s configurations.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.configurations.list@.
module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.List
    (
    -- * REST Resource
      CustomersConfigurationsListResource

    -- * Creating a Request
    , customersConfigurationsList
    , CustomersConfigurationsList

    -- * Request Lenses
    , cclParent
    , cclXgafv
    , cclUploadProtocol
    , cclAccessToken
    , cclUploadType
    , cclCallback
    ) where

import Network.Google.AndroidDeviceProvisioning.Types
import Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.customers.configurations.list@ method which the
-- 'CustomersConfigurationsList' request conforms to.
type CustomersConfigurationsListResource =
     "v1" :>
       Capture "parent" Text :>
         "configurations" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] CustomerListConfigurationsResponse

-- | Lists a customer\'s configurations.
--
-- /See:/ 'customersConfigurationsList' smart constructor.
data CustomersConfigurationsList =
  CustomersConfigurationsList'
    { _cclParent :: !Text
    , _cclXgafv :: !(Maybe Xgafv)
    , _cclUploadProtocol :: !(Maybe Text)
    , _cclAccessToken :: !(Maybe Text)
    , _cclUploadType :: !(Maybe Text)
    , _cclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersConfigurationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cclParent'
--
-- * 'cclXgafv'
--
-- * 'cclUploadProtocol'
--
-- * 'cclAccessToken'
--
-- * 'cclUploadType'
--
-- * 'cclCallback'
customersConfigurationsList
    :: Text -- ^ 'cclParent'
    -> CustomersConfigurationsList
customersConfigurationsList pCclParent_ =
  CustomersConfigurationsList'
    { _cclParent = pCclParent_
    , _cclXgafv = Nothing
    , _cclUploadProtocol = Nothing
    , _cclAccessToken = Nothing
    , _cclUploadType = Nothing
    , _cclCallback = Nothing
    }


-- | Required. The customer that manages the listed configurations. An API
-- resource name in the format \`customers\/[CUSTOMER_ID]\`.
cclParent :: Lens' CustomersConfigurationsList Text
cclParent
  = lens _cclParent (\ s a -> s{_cclParent = a})

-- | V1 error format.
cclXgafv :: Lens' CustomersConfigurationsList (Maybe Xgafv)
cclXgafv = lens _cclXgafv (\ s a -> s{_cclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cclUploadProtocol :: Lens' CustomersConfigurationsList (Maybe Text)
cclUploadProtocol
  = lens _cclUploadProtocol
      (\ s a -> s{_cclUploadProtocol = a})

-- | OAuth access token.
cclAccessToken :: Lens' CustomersConfigurationsList (Maybe Text)
cclAccessToken
  = lens _cclAccessToken
      (\ s a -> s{_cclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cclUploadType :: Lens' CustomersConfigurationsList (Maybe Text)
cclUploadType
  = lens _cclUploadType
      (\ s a -> s{_cclUploadType = a})

-- | JSONP
cclCallback :: Lens' CustomersConfigurationsList (Maybe Text)
cclCallback
  = lens _cclCallback (\ s a -> s{_cclCallback = a})

instance GoogleRequest CustomersConfigurationsList
         where
        type Rs CustomersConfigurationsList =
             CustomerListConfigurationsResponse
        type Scopes CustomersConfigurationsList = '[]
        requestClient CustomersConfigurationsList'{..}
          = go _cclParent _cclXgafv _cclUploadProtocol
              _cclAccessToken
              _cclUploadType
              _cclCallback
              (Just AltJSON)
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomersConfigurationsListResource)
                      mempty
