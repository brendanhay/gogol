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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the details of a configuration.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.configurations.get@.
module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.Get
    (
    -- * REST Resource
      CustomersConfigurationsGetResource

    -- * Creating a Request
    , customersConfigurationsGet
    , CustomersConfigurationsGet

    -- * Request Lenses
    , ccgXgafv
    , ccgUploadProtocol
    , ccgAccessToken
    , ccgUploadType
    , ccgName
    , ccgCallback
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types
import           Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.customers.configurations.get@ method which the
-- 'CustomersConfigurationsGet' request conforms to.
type CustomersConfigurationsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Configuration

-- | Gets the details of a configuration.
--
-- /See:/ 'customersConfigurationsGet' smart constructor.
data CustomersConfigurationsGet = CustomersConfigurationsGet'
    { _ccgXgafv          :: !(Maybe Xgafv)
    , _ccgUploadProtocol :: !(Maybe Text)
    , _ccgAccessToken    :: !(Maybe Text)
    , _ccgUploadType     :: !(Maybe Text)
    , _ccgName           :: !Text
    , _ccgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomersConfigurationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccgXgafv'
--
-- * 'ccgUploadProtocol'
--
-- * 'ccgAccessToken'
--
-- * 'ccgUploadType'
--
-- * 'ccgName'
--
-- * 'ccgCallback'
customersConfigurationsGet
    :: Text -- ^ 'ccgName'
    -> CustomersConfigurationsGet
customersConfigurationsGet pCcgName_ =
    CustomersConfigurationsGet'
    { _ccgXgafv = Nothing
    , _ccgUploadProtocol = Nothing
    , _ccgAccessToken = Nothing
    , _ccgUploadType = Nothing
    , _ccgName = pCcgName_
    , _ccgCallback = Nothing
    }

-- | V1 error format.
ccgXgafv :: Lens' CustomersConfigurationsGet (Maybe Xgafv)
ccgXgafv = lens _ccgXgafv (\ s a -> s{_ccgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccgUploadProtocol :: Lens' CustomersConfigurationsGet (Maybe Text)
ccgUploadProtocol
  = lens _ccgUploadProtocol
      (\ s a -> s{_ccgUploadProtocol = a})

-- | OAuth access token.
ccgAccessToken :: Lens' CustomersConfigurationsGet (Maybe Text)
ccgAccessToken
  = lens _ccgAccessToken
      (\ s a -> s{_ccgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccgUploadType :: Lens' CustomersConfigurationsGet (Maybe Text)
ccgUploadType
  = lens _ccgUploadType
      (\ s a -> s{_ccgUploadType = a})

-- | Required. The configuration to get. An API resource name in the format
-- \`customers\/[CUSTOMER_ID]\/configurations\/[CONFIGURATION_ID]\`.
ccgName :: Lens' CustomersConfigurationsGet Text
ccgName = lens _ccgName (\ s a -> s{_ccgName = a})

-- | JSONP
ccgCallback :: Lens' CustomersConfigurationsGet (Maybe Text)
ccgCallback
  = lens _ccgCallback (\ s a -> s{_ccgCallback = a})

instance GoogleRequest CustomersConfigurationsGet
         where
        type Rs CustomersConfigurationsGet = Configuration
        type Scopes CustomersConfigurationsGet = '[]
        requestClient CustomersConfigurationsGet'{..}
          = go _ccgName _ccgXgafv _ccgUploadProtocol
              _ccgAccessToken
              _ccgUploadType
              _ccgCallback
              (Just AltJSON)
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomersConfigurationsGetResource)
                      mempty
