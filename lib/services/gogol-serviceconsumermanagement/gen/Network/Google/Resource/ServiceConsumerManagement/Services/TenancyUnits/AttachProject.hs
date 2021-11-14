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
-- Module      : Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.AttachProject
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attach an existing project to the tenancy unit as a new tenant resource.
-- The project could either be the tenant project reserved by calling
-- \`AddTenantProject\` under a tenancy unit of a service producer\'s
-- project of a managed service, or from a separate project. The caller is
-- checked against a set of permissions as if calling \`AddTenantProject\`
-- on the same service consumer. To trigger the attachment, the targeted
-- tenant project must be in a folder. Make sure the
-- ServiceConsumerManagement service account is the owner of that project.
-- These two requirements are already met if the project is reserved by
-- calling \`AddTenantProject\`. Operation.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.tenancyUnits.attachProject@.
module Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.AttachProject
    (
    -- * REST Resource
      ServicesTenancyUnitsAttachProjectResource

    -- * Creating a Request
    , servicesTenancyUnitsAttachProject
    , ServicesTenancyUnitsAttachProject

    -- * Request Lenses
    , stuapXgafv
    , stuapUploadProtocol
    , stuapAccessToken
    , stuapUploadType
    , stuapPayload
    , stuapName
    , stuapCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.tenancyUnits.attachProject@ method which the
-- 'ServicesTenancyUnitsAttachProject' request conforms to.
type ServicesTenancyUnitsAttachProjectResource =
     "v1" :>
       CaptureMode "name" "attachProject" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] AttachTenantProjectRequest :>
                       Post '[JSON] Operation

-- | Attach an existing project to the tenancy unit as a new tenant resource.
-- The project could either be the tenant project reserved by calling
-- \`AddTenantProject\` under a tenancy unit of a service producer\'s
-- project of a managed service, or from a separate project. The caller is
-- checked against a set of permissions as if calling \`AddTenantProject\`
-- on the same service consumer. To trigger the attachment, the targeted
-- tenant project must be in a folder. Make sure the
-- ServiceConsumerManagement service account is the owner of that project.
-- These two requirements are already met if the project is reserved by
-- calling \`AddTenantProject\`. Operation.
--
-- /See:/ 'servicesTenancyUnitsAttachProject' smart constructor.
data ServicesTenancyUnitsAttachProject =
  ServicesTenancyUnitsAttachProject'
    { _stuapXgafv :: !(Maybe Xgafv)
    , _stuapUploadProtocol :: !(Maybe Text)
    , _stuapAccessToken :: !(Maybe Text)
    , _stuapUploadType :: !(Maybe Text)
    , _stuapPayload :: !AttachTenantProjectRequest
    , _stuapName :: !Text
    , _stuapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesTenancyUnitsAttachProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stuapXgafv'
--
-- * 'stuapUploadProtocol'
--
-- * 'stuapAccessToken'
--
-- * 'stuapUploadType'
--
-- * 'stuapPayload'
--
-- * 'stuapName'
--
-- * 'stuapCallback'
servicesTenancyUnitsAttachProject
    :: AttachTenantProjectRequest -- ^ 'stuapPayload'
    -> Text -- ^ 'stuapName'
    -> ServicesTenancyUnitsAttachProject
servicesTenancyUnitsAttachProject pStuapPayload_ pStuapName_ =
  ServicesTenancyUnitsAttachProject'
    { _stuapXgafv = Nothing
    , _stuapUploadProtocol = Nothing
    , _stuapAccessToken = Nothing
    , _stuapUploadType = Nothing
    , _stuapPayload = pStuapPayload_
    , _stuapName = pStuapName_
    , _stuapCallback = Nothing
    }


-- | V1 error format.
stuapXgafv :: Lens' ServicesTenancyUnitsAttachProject (Maybe Xgafv)
stuapXgafv
  = lens _stuapXgafv (\ s a -> s{_stuapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
stuapUploadProtocol :: Lens' ServicesTenancyUnitsAttachProject (Maybe Text)
stuapUploadProtocol
  = lens _stuapUploadProtocol
      (\ s a -> s{_stuapUploadProtocol = a})

-- | OAuth access token.
stuapAccessToken :: Lens' ServicesTenancyUnitsAttachProject (Maybe Text)
stuapAccessToken
  = lens _stuapAccessToken
      (\ s a -> s{_stuapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
stuapUploadType :: Lens' ServicesTenancyUnitsAttachProject (Maybe Text)
stuapUploadType
  = lens _stuapUploadType
      (\ s a -> s{_stuapUploadType = a})

-- | Multipart request metadata.
stuapPayload :: Lens' ServicesTenancyUnitsAttachProject AttachTenantProjectRequest
stuapPayload
  = lens _stuapPayload (\ s a -> s{_stuapPayload = a})

-- | Required. Name of the tenancy unit that the project will be attached to.
-- Such as
-- \'services\/service.googleapis.com\/projects\/12345\/tenancyUnits\/abcd\'.
stuapName :: Lens' ServicesTenancyUnitsAttachProject Text
stuapName
  = lens _stuapName (\ s a -> s{_stuapName = a})

-- | JSONP
stuapCallback :: Lens' ServicesTenancyUnitsAttachProject (Maybe Text)
stuapCallback
  = lens _stuapCallback
      (\ s a -> s{_stuapCallback = a})

instance GoogleRequest
           ServicesTenancyUnitsAttachProject
         where
        type Rs ServicesTenancyUnitsAttachProject = Operation
        type Scopes ServicesTenancyUnitsAttachProject =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ServicesTenancyUnitsAttachProject'{..}
          = go _stuapName _stuapXgafv _stuapUploadProtocol
              _stuapAccessToken
              _stuapUploadType
              _stuapCallback
              (Just AltJSON)
              _stuapPayload
              serviceConsumerManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ServicesTenancyUnitsAttachProjectResource)
                      mempty
