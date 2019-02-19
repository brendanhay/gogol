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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Apply configuration to an existing tenant project. This project must
-- exist in active state and have the original owner account. Caller must
-- have the permission to add a project to the given tenancy unit.
-- Configuration will be applied, but any existing settings on the project
-- will not be modified. Specified policy bindings will be applied.
-- Existing binding will not be modified. Specified services will be
-- activated. No service will be deactivated. New billing configuration
-- will be applied if specified. Omit billing configuration to keep the
-- existing one. Service account in the project will be created if
-- previously non existing. Specified folder will be ignored, moving tenant
-- project to a different folder is not supported. Operation fails if any
-- of the steps fail, but no rollback of already applied configuration
-- changes is attempted. Operation.
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

import           Network.Google.Prelude
import           Network.Google.ServiceConsumerManagement.Types

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

-- | Apply configuration to an existing tenant project. This project must
-- exist in active state and have the original owner account. Caller must
-- have the permission to add a project to the given tenancy unit.
-- Configuration will be applied, but any existing settings on the project
-- will not be modified. Specified policy bindings will be applied.
-- Existing binding will not be modified. Specified services will be
-- activated. No service will be deactivated. New billing configuration
-- will be applied if specified. Omit billing configuration to keep the
-- existing one. Service account in the project will be created if
-- previously non existing. Specified folder will be ignored, moving tenant
-- project to a different folder is not supported. Operation fails if any
-- of the steps fail, but no rollback of already applied configuration
-- changes is attempted. Operation.
--
-- /See:/ 'servicesTenancyUnitsApplyProjectConfig' smart constructor.
data ServicesTenancyUnitsApplyProjectConfig =
  ServicesTenancyUnitsApplyProjectConfig'
    { _stuapcXgafv          :: !(Maybe Xgafv)
    , _stuapcUploadProtocol :: !(Maybe Text)
    , _stuapcAccessToken    :: !(Maybe Text)
    , _stuapcUploadType     :: !(Maybe Text)
    , _stuapcPayload        :: !ApplyTenantProjectConfigRequest
    , _stuapcName           :: !Text
    , _stuapcCallback       :: !(Maybe Text)
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

-- | Name of the tenancy unit.
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
