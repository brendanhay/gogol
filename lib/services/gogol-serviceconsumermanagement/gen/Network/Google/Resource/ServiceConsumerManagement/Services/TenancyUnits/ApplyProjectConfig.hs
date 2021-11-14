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
-- Module      : Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.ApplyProjectConfig
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Apply a configuration to an existing tenant project. This project must
-- exist in an active state and have the original owner account. The caller
-- must have permission to add a project to the given tenancy unit. The
-- configuration is applied, but any existing settings on the project
-- aren\'t modified. Specified policy bindings are applied. Existing
-- bindings aren\'t modified. Specified services are activated. No service
-- is deactivated. If specified, new billing configuration is applied. Omit
-- a billing configuration to keep the existing one. A service account in
-- the project is created if previously non existed. Specified labels will
-- be appended to tenant project, note that the value of existing label key
-- will be updated if the same label key is requested. The specified folder
-- is ignored, as moving a tenant project to a different folder isn\'t
-- supported. The operation fails if any of the steps fail, but no rollback
-- of already applied configuration changes is attempted. Operation.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.tenancyUnits.applyProjectConfig@.
module Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.ApplyProjectConfig
    (
    -- * REST Resource
      ServicesTenancyUnitsApplyProjectConfigResource

    -- * Creating a Request
    , servicesTenancyUnitsApplyProjectConfig
    , ServicesTenancyUnitsApplyProjectConfig

    -- * Request Lenses
    , stuapcXgafv
    , stuapcUploadProtocol
    , stuapcAccessToken
    , stuapcUploadType
    , stuapcPayload
    , stuapcName
    , stuapcCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.tenancyUnits.applyProjectConfig@ method which the
-- 'ServicesTenancyUnitsApplyProjectConfig' request conforms to.
type ServicesTenancyUnitsApplyProjectConfigResource =
     "v1" :>
       CaptureMode "name" "applyProjectConfig" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ApplyTenantProjectConfigRequest :>
                       Post '[JSON] Operation

-- | Apply a configuration to an existing tenant project. This project must
-- exist in an active state and have the original owner account. The caller
-- must have permission to add a project to the given tenancy unit. The
-- configuration is applied, but any existing settings on the project
-- aren\'t modified. Specified policy bindings are applied. Existing
-- bindings aren\'t modified. Specified services are activated. No service
-- is deactivated. If specified, new billing configuration is applied. Omit
-- a billing configuration to keep the existing one. A service account in
-- the project is created if previously non existed. Specified labels will
-- be appended to tenant project, note that the value of existing label key
-- will be updated if the same label key is requested. The specified folder
-- is ignored, as moving a tenant project to a different folder isn\'t
-- supported. The operation fails if any of the steps fail, but no rollback
-- of already applied configuration changes is attempted. Operation.
--
-- /See:/ 'servicesTenancyUnitsApplyProjectConfig' smart constructor.
data ServicesTenancyUnitsApplyProjectConfig =
  ServicesTenancyUnitsApplyProjectConfig'
    { _stuapcXgafv :: !(Maybe Xgafv)
    , _stuapcUploadProtocol :: !(Maybe Text)
    , _stuapcAccessToken :: !(Maybe Text)
    , _stuapcUploadType :: !(Maybe Text)
    , _stuapcPayload :: !ApplyTenantProjectConfigRequest
    , _stuapcName :: !Text
    , _stuapcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesTenancyUnitsApplyProjectConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stuapcXgafv'
--
-- * 'stuapcUploadProtocol'
--
-- * 'stuapcAccessToken'
--
-- * 'stuapcUploadType'
--
-- * 'stuapcPayload'
--
-- * 'stuapcName'
--
-- * 'stuapcCallback'
servicesTenancyUnitsApplyProjectConfig
    :: ApplyTenantProjectConfigRequest -- ^ 'stuapcPayload'
    -> Text -- ^ 'stuapcName'
    -> ServicesTenancyUnitsApplyProjectConfig
servicesTenancyUnitsApplyProjectConfig pStuapcPayload_ pStuapcName_ =
  ServicesTenancyUnitsApplyProjectConfig'
    { _stuapcXgafv = Nothing
    , _stuapcUploadProtocol = Nothing
    , _stuapcAccessToken = Nothing
    , _stuapcUploadType = Nothing
    , _stuapcPayload = pStuapcPayload_
    , _stuapcName = pStuapcName_
    , _stuapcCallback = Nothing
    }


-- | V1 error format.
stuapcXgafv :: Lens' ServicesTenancyUnitsApplyProjectConfig (Maybe Xgafv)
stuapcXgafv
  = lens _stuapcXgafv (\ s a -> s{_stuapcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
stuapcUploadProtocol :: Lens' ServicesTenancyUnitsApplyProjectConfig (Maybe Text)
stuapcUploadProtocol
  = lens _stuapcUploadProtocol
      (\ s a -> s{_stuapcUploadProtocol = a})

-- | OAuth access token.
stuapcAccessToken :: Lens' ServicesTenancyUnitsApplyProjectConfig (Maybe Text)
stuapcAccessToken
  = lens _stuapcAccessToken
      (\ s a -> s{_stuapcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
stuapcUploadType :: Lens' ServicesTenancyUnitsApplyProjectConfig (Maybe Text)
stuapcUploadType
  = lens _stuapcUploadType
      (\ s a -> s{_stuapcUploadType = a})

-- | Multipart request metadata.
stuapcPayload :: Lens' ServicesTenancyUnitsApplyProjectConfig ApplyTenantProjectConfigRequest
stuapcPayload
  = lens _stuapcPayload
      (\ s a -> s{_stuapcPayload = a})

-- | Required. Name of the tenancy unit. Such as
-- \'services\/service.googleapis.com\/projects\/12345\/tenancyUnits\/abcd\'.
stuapcName :: Lens' ServicesTenancyUnitsApplyProjectConfig Text
stuapcName
  = lens _stuapcName (\ s a -> s{_stuapcName = a})

-- | JSONP
stuapcCallback :: Lens' ServicesTenancyUnitsApplyProjectConfig (Maybe Text)
stuapcCallback
  = lens _stuapcCallback
      (\ s a -> s{_stuapcCallback = a})

instance GoogleRequest
           ServicesTenancyUnitsApplyProjectConfig
         where
        type Rs ServicesTenancyUnitsApplyProjectConfig =
             Operation
        type Scopes ServicesTenancyUnitsApplyProjectConfig =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ServicesTenancyUnitsApplyProjectConfig'{..}
          = go _stuapcName _stuapcXgafv _stuapcUploadProtocol
              _stuapcAccessToken
              _stuapcUploadType
              _stuapcCallback
              (Just AltJSON)
              _stuapcPayload
              serviceConsumerManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ServicesTenancyUnitsApplyProjectConfigResource)
                      mempty
