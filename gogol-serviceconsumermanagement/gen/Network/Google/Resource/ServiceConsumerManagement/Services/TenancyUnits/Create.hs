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
-- Module      : Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a tenancy unit with no tenant resources. If tenancy unit already
-- exists, it will be returned, however, in this case, returned TenancyUnit
-- does not have tenant_resources field set and ListTenancyUnits has to be
-- used to get a complete TenancyUnit with all fields populated.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.tenancyUnits.create@.
module Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.Create
    (
    -- * REST Resource
      ServicesTenancyUnitsCreateResource

    -- * Creating a Request
    , servicesTenancyUnitsCreate
    , ServicesTenancyUnitsCreate

    -- * Request Lenses
    , stucParent
    , stucXgafv
    , stucUploadProtocol
    , stucAccessToken
    , stucUploadType
    , stucPayload
    , stucCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.tenancyUnits.create@ method which the
-- 'ServicesTenancyUnitsCreate' request conforms to.
type ServicesTenancyUnitsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "tenancyUnits" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateTenancyUnitRequest :>
                         Post '[JSON] TenancyUnit

-- | Creates a tenancy unit with no tenant resources. If tenancy unit already
-- exists, it will be returned, however, in this case, returned TenancyUnit
-- does not have tenant_resources field set and ListTenancyUnits has to be
-- used to get a complete TenancyUnit with all fields populated.
--
-- /See:/ 'servicesTenancyUnitsCreate' smart constructor.
data ServicesTenancyUnitsCreate =
  ServicesTenancyUnitsCreate'
    { _stucParent :: !Text
    , _stucXgafv :: !(Maybe Xgafv)
    , _stucUploadProtocol :: !(Maybe Text)
    , _stucAccessToken :: !(Maybe Text)
    , _stucUploadType :: !(Maybe Text)
    , _stucPayload :: !CreateTenancyUnitRequest
    , _stucCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesTenancyUnitsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stucParent'
--
-- * 'stucXgafv'
--
-- * 'stucUploadProtocol'
--
-- * 'stucAccessToken'
--
-- * 'stucUploadType'
--
-- * 'stucPayload'
--
-- * 'stucCallback'
servicesTenancyUnitsCreate
    :: Text -- ^ 'stucParent'
    -> CreateTenancyUnitRequest -- ^ 'stucPayload'
    -> ServicesTenancyUnitsCreate
servicesTenancyUnitsCreate pStucParent_ pStucPayload_ =
  ServicesTenancyUnitsCreate'
    { _stucParent = pStucParent_
    , _stucXgafv = Nothing
    , _stucUploadProtocol = Nothing
    , _stucAccessToken = Nothing
    , _stucUploadType = Nothing
    , _stucPayload = pStucPayload_
    , _stucCallback = Nothing
    }


-- | Required. services\/{service}\/{collection id}\/{resource id}
-- {collection id} is the cloud resource collection type representing the
-- service consumer, for example \'projects\', or \'organizations\'.
-- {resource id} is the consumer numeric id, such as project number:
-- \'123456\'. {service} the name of a managed service, such as
-- \'service.googleapis.com\'. Enables service binding using the new
-- tenancy unit.
stucParent :: Lens' ServicesTenancyUnitsCreate Text
stucParent
  = lens _stucParent (\ s a -> s{_stucParent = a})

-- | V1 error format.
stucXgafv :: Lens' ServicesTenancyUnitsCreate (Maybe Xgafv)
stucXgafv
  = lens _stucXgafv (\ s a -> s{_stucXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
stucUploadProtocol :: Lens' ServicesTenancyUnitsCreate (Maybe Text)
stucUploadProtocol
  = lens _stucUploadProtocol
      (\ s a -> s{_stucUploadProtocol = a})

-- | OAuth access token.
stucAccessToken :: Lens' ServicesTenancyUnitsCreate (Maybe Text)
stucAccessToken
  = lens _stucAccessToken
      (\ s a -> s{_stucAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
stucUploadType :: Lens' ServicesTenancyUnitsCreate (Maybe Text)
stucUploadType
  = lens _stucUploadType
      (\ s a -> s{_stucUploadType = a})

-- | Multipart request metadata.
stucPayload :: Lens' ServicesTenancyUnitsCreate CreateTenancyUnitRequest
stucPayload
  = lens _stucPayload (\ s a -> s{_stucPayload = a})

-- | JSONP
stucCallback :: Lens' ServicesTenancyUnitsCreate (Maybe Text)
stucCallback
  = lens _stucCallback (\ s a -> s{_stucCallback = a})

instance GoogleRequest ServicesTenancyUnitsCreate
         where
        type Rs ServicesTenancyUnitsCreate = TenancyUnit
        type Scopes ServicesTenancyUnitsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ServicesTenancyUnitsCreate'{..}
          = go _stucParent _stucXgafv _stucUploadProtocol
              _stucAccessToken
              _stucUploadType
              _stucCallback
              (Just AltJSON)
              _stucPayload
              serviceConsumerManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesTenancyUnitsCreateResource)
                      mempty
