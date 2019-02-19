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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an unused configuration. The API call fails if the customer has
-- devices with the configuration applied.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.configurations.delete@.
module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.Delete
    (
    -- * REST Resource
      CustomersConfigurationsDeleteResource

    -- * Creating a Request
    , customersConfigurationsDelete
    , CustomersConfigurationsDelete

    -- * Request Lenses
    , ccdXgafv
    , ccdUploadProtocol
    , ccdAccessToken
    , ccdUploadType
    , ccdName
    , ccdCallback
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types
import           Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.customers.configurations.delete@ method which the
-- 'CustomersConfigurationsDelete' request conforms to.
type CustomersConfigurationsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an unused configuration. The API call fails if the customer has
-- devices with the configuration applied.
--
-- /See:/ 'customersConfigurationsDelete' smart constructor.
data CustomersConfigurationsDelete =
  CustomersConfigurationsDelete'
    { _ccdXgafv          :: !(Maybe Xgafv)
    , _ccdUploadProtocol :: !(Maybe Text)
    , _ccdAccessToken    :: !(Maybe Text)
    , _ccdUploadType     :: !(Maybe Text)
    , _ccdName           :: !Text
    , _ccdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CustomersConfigurationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccdXgafv'
--
-- * 'ccdUploadProtocol'
--
-- * 'ccdAccessToken'
--
-- * 'ccdUploadType'
--
-- * 'ccdName'
--
-- * 'ccdCallback'
customersConfigurationsDelete
    :: Text -- ^ 'ccdName'
    -> CustomersConfigurationsDelete
customersConfigurationsDelete pCcdName_ =
  CustomersConfigurationsDelete'
    { _ccdXgafv = Nothing
    , _ccdUploadProtocol = Nothing
    , _ccdAccessToken = Nothing
    , _ccdUploadType = Nothing
    , _ccdName = pCcdName_
    , _ccdCallback = Nothing
    }

-- | V1 error format.
ccdXgafv :: Lens' CustomersConfigurationsDelete (Maybe Xgafv)
ccdXgafv = lens _ccdXgafv (\ s a -> s{_ccdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccdUploadProtocol :: Lens' CustomersConfigurationsDelete (Maybe Text)
ccdUploadProtocol
  = lens _ccdUploadProtocol
      (\ s a -> s{_ccdUploadProtocol = a})

-- | OAuth access token.
ccdAccessToken :: Lens' CustomersConfigurationsDelete (Maybe Text)
ccdAccessToken
  = lens _ccdAccessToken
      (\ s a -> s{_ccdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccdUploadType :: Lens' CustomersConfigurationsDelete (Maybe Text)
ccdUploadType
  = lens _ccdUploadType
      (\ s a -> s{_ccdUploadType = a})

-- | Required. The configuration to delete. An API resource name in the
-- format \`customers\/[CUSTOMER_ID]\/configurations\/[CONFIGURATION_ID]\`.
-- If the configuration is applied to any devices, the API call fails.
ccdName :: Lens' CustomersConfigurationsDelete Text
ccdName = lens _ccdName (\ s a -> s{_ccdName = a})

-- | JSONP
ccdCallback :: Lens' CustomersConfigurationsDelete (Maybe Text)
ccdCallback
  = lens _ccdCallback (\ s a -> s{_ccdCallback = a})

instance GoogleRequest CustomersConfigurationsDelete
         where
        type Rs CustomersConfigurationsDelete = Empty
        type Scopes CustomersConfigurationsDelete = '[]
        requestClient CustomersConfigurationsDelete'{..}
          = go _ccdName _ccdXgafv _ccdUploadProtocol
              _ccdAccessToken
              _ccdUploadType
              _ccdCallback
              (Just AltJSON)
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CustomersConfigurationsDeleteResource)
                      mempty
