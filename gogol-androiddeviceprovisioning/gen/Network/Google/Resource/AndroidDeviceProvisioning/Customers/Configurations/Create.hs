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
-- Module      : Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new configuration. Once created, a customer can apply the
-- configuration to devices.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.configurations.create@.
module Network.Google.Resource.AndroidDeviceProvisioning.Customers.Configurations.Create
    (
    -- * REST Resource
      CustomersConfigurationsCreateResource

    -- * Creating a Request
    , customersConfigurationsCreate
    , CustomersConfigurationsCreate

    -- * Request Lenses
    , cccParent
    , cccXgafv
    , cccUploadProtocol
    , cccAccessToken
    , cccUploadType
    , cccPayload
    , cccCallback
    ) where

import           Network.Google.AndroidDeviceProvisioning.Types
import           Network.Google.Prelude

-- | A resource alias for @androiddeviceprovisioning.customers.configurations.create@ method which the
-- 'CustomersConfigurationsCreate' request conforms to.
type CustomersConfigurationsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "configurations" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Configuration :>
                         Post '[JSON] Configuration

-- | Creates a new configuration. Once created, a customer can apply the
-- configuration to devices.
--
-- /See:/ 'customersConfigurationsCreate' smart constructor.
data CustomersConfigurationsCreate = CustomersConfigurationsCreate'
    { _cccParent         :: !Text
    , _cccXgafv          :: !(Maybe Xgafv)
    , _cccUploadProtocol :: !(Maybe Text)
    , _cccAccessToken    :: !(Maybe Text)
    , _cccUploadType     :: !(Maybe Text)
    , _cccPayload        :: !Configuration
    , _cccCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CustomersConfigurationsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cccParent'
--
-- * 'cccXgafv'
--
-- * 'cccUploadProtocol'
--
-- * 'cccAccessToken'
--
-- * 'cccUploadType'
--
-- * 'cccPayload'
--
-- * 'cccCallback'
customersConfigurationsCreate
    :: Text -- ^ 'cccParent'
    -> Configuration -- ^ 'cccPayload'
    -> CustomersConfigurationsCreate
customersConfigurationsCreate pCccParent_ pCccPayload_ =
    CustomersConfigurationsCreate'
    { _cccParent = pCccParent_
    , _cccXgafv = Nothing
    , _cccUploadProtocol = Nothing
    , _cccAccessToken = Nothing
    , _cccUploadType = Nothing
    , _cccPayload = pCccPayload_
    , _cccCallback = Nothing
    }

-- | Required. The customer that manages the configuration. An API resource
-- name in the format \`customers\/[CUSTOMER_ID]\`.
cccParent :: Lens' CustomersConfigurationsCreate Text
cccParent
  = lens _cccParent (\ s a -> s{_cccParent = a})

-- | V1 error format.
cccXgafv :: Lens' CustomersConfigurationsCreate (Maybe Xgafv)
cccXgafv = lens _cccXgafv (\ s a -> s{_cccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cccUploadProtocol :: Lens' CustomersConfigurationsCreate (Maybe Text)
cccUploadProtocol
  = lens _cccUploadProtocol
      (\ s a -> s{_cccUploadProtocol = a})

-- | OAuth access token.
cccAccessToken :: Lens' CustomersConfigurationsCreate (Maybe Text)
cccAccessToken
  = lens _cccAccessToken
      (\ s a -> s{_cccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cccUploadType :: Lens' CustomersConfigurationsCreate (Maybe Text)
cccUploadType
  = lens _cccUploadType
      (\ s a -> s{_cccUploadType = a})

-- | Multipart request metadata.
cccPayload :: Lens' CustomersConfigurationsCreate Configuration
cccPayload
  = lens _cccPayload (\ s a -> s{_cccPayload = a})

-- | JSONP
cccCallback :: Lens' CustomersConfigurationsCreate (Maybe Text)
cccCallback
  = lens _cccCallback (\ s a -> s{_cccCallback = a})

instance GoogleRequest CustomersConfigurationsCreate
         where
        type Rs CustomersConfigurationsCreate = Configuration
        type Scopes CustomersConfigurationsCreate = '[]
        requestClient CustomersConfigurationsCreate'{..}
          = go _cccParent _cccXgafv _cccUploadProtocol
              _cccAccessToken
              _cccUploadType
              _cccCallback
              (Just AltJSON)
              _cccPayload
              androidDeviceProvisioningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CustomersConfigurationsCreateResource)
                      mempty
