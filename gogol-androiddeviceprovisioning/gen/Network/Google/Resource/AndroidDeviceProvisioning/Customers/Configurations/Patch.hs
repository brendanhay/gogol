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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a configuration\'s field values.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.configurations.patch@.
module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.Patch
    (
    -- * REST Resource
      CustomersConfigurationsPatchResource

    -- * Creating a Request
    , customersConfigurationsPatch
    , CustomersConfigurationsPatch

    -- * Request Lenses
    , ccpXgafv
    , ccpUploadProtocol
    , ccpUpdateMask
    , ccpAccessToken
    , ccpUploadType
    , ccpPayload
    , ccpName
    , ccpCallback
    ) where

import Network.Google.AndroidDeviceProvisioning.Types
import Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.customers.configurations.patch@ method which the
-- 'CustomersConfigurationsPatch' request conforms to.
type CustomersConfigurationsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Configuration :>
                         Patch '[JSON] Configuration

-- | Updates a configuration\'s field values.
--
-- /See:/ 'customersConfigurationsPatch' smart constructor.
data CustomersConfigurationsPatch =
  CustomersConfigurationsPatch'
    { _ccpXgafv :: !(Maybe Xgafv)
    , _ccpUploadProtocol :: !(Maybe Text)
    , _ccpUpdateMask :: !(Maybe GFieldMask)
    , _ccpAccessToken :: !(Maybe Text)
    , _ccpUploadType :: !(Maybe Text)
    , _ccpPayload :: !Configuration
    , _ccpName :: !Text
    , _ccpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersConfigurationsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccpXgafv'
--
-- * 'ccpUploadProtocol'
--
-- * 'ccpUpdateMask'
--
-- * 'ccpAccessToken'
--
-- * 'ccpUploadType'
--
-- * 'ccpPayload'
--
-- * 'ccpName'
--
-- * 'ccpCallback'
customersConfigurationsPatch
    :: Configuration -- ^ 'ccpPayload'
    -> Text -- ^ 'ccpName'
    -> CustomersConfigurationsPatch
customersConfigurationsPatch pCcpPayload_ pCcpName_ =
  CustomersConfigurationsPatch'
    { _ccpXgafv = Nothing
    , _ccpUploadProtocol = Nothing
    , _ccpUpdateMask = Nothing
    , _ccpAccessToken = Nothing
    , _ccpUploadType = Nothing
    , _ccpPayload = pCcpPayload_
    , _ccpName = pCcpName_
    , _ccpCallback = Nothing
    }


-- | V1 error format.
ccpXgafv :: Lens' CustomersConfigurationsPatch (Maybe Xgafv)
ccpXgafv = lens _ccpXgafv (\ s a -> s{_ccpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccpUploadProtocol :: Lens' CustomersConfigurationsPatch (Maybe Text)
ccpUploadProtocol
  = lens _ccpUploadProtocol
      (\ s a -> s{_ccpUploadProtocol = a})

-- | Required. The field mask applied to the target \`Configuration\` before
-- updating the fields. To learn more about using field masks, read
-- [FieldMask](\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask)
-- in the Protocol Buffers documentation.
ccpUpdateMask :: Lens' CustomersConfigurationsPatch (Maybe GFieldMask)
ccpUpdateMask
  = lens _ccpUpdateMask
      (\ s a -> s{_ccpUpdateMask = a})

-- | OAuth access token.
ccpAccessToken :: Lens' CustomersConfigurationsPatch (Maybe Text)
ccpAccessToken
  = lens _ccpAccessToken
      (\ s a -> s{_ccpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccpUploadType :: Lens' CustomersConfigurationsPatch (Maybe Text)
ccpUploadType
  = lens _ccpUploadType
      (\ s a -> s{_ccpUploadType = a})

-- | Multipart request metadata.
ccpPayload :: Lens' CustomersConfigurationsPatch Configuration
ccpPayload
  = lens _ccpPayload (\ s a -> s{_ccpPayload = a})

-- | Output only. The API resource name in the format
-- \`customers\/[CUSTOMER_ID]\/configurations\/[CONFIGURATION_ID]\`.
-- Assigned by the server.
ccpName :: Lens' CustomersConfigurationsPatch Text
ccpName = lens _ccpName (\ s a -> s{_ccpName = a})

-- | JSONP
ccpCallback :: Lens' CustomersConfigurationsPatch (Maybe Text)
ccpCallback
  = lens _ccpCallback (\ s a -> s{_ccpCallback = a})

instance GoogleRequest CustomersConfigurationsPatch
         where
        type Rs CustomersConfigurationsPatch = Configuration
        type Scopes CustomersConfigurationsPatch = '[]
        requestClient CustomersConfigurationsPatch'{..}
          = go _ccpName _ccpXgafv _ccpUploadProtocol
              _ccpUpdateMask
              _ccpAccessToken
              _ccpUploadType
              _ccpCallback
              (Just AltJSON)
              _ccpPayload
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomersConfigurationsPatchResource)
                      mempty
