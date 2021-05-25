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
-- Module      : Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.DeleteProject
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified project resource identified by a tenant resource
-- tag. The mothod removes a project lien with a \'TenantManager\' origin
-- if that was added. It will then attempt to delete the project. If that
-- operation fails, this method also fails. After the project has been
-- deleted, the tenant resource state is set to DELETED. To permanently
-- remove resource metadata, call the \`RemoveTenantProject\` method. New
-- resources with the same tag can\'t be added if there are existing
-- resources in a DELETED state. Operation.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.tenancyUnits.deleteProject@.
module Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.DeleteProject
    (
    -- * REST Resource
      ServicesTenancyUnitsDeleteProjectResource

    -- * Creating a Request
    , servicesTenancyUnitsDeleteProject
    , ServicesTenancyUnitsDeleteProject

    -- * Request Lenses
    , studpXgafv
    , studpUploadProtocol
    , studpAccessToken
    , studpUploadType
    , studpPayload
    , studpName
    , studpCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.tenancyUnits.deleteProject@ method which the
-- 'ServicesTenancyUnitsDeleteProject' request conforms to.
type ServicesTenancyUnitsDeleteProjectResource =
     "v1" :>
       CaptureMode "name" "deleteProject" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DeleteTenantProjectRequest :>
                       Post '[JSON] Operation

-- | Deletes the specified project resource identified by a tenant resource
-- tag. The mothod removes a project lien with a \'TenantManager\' origin
-- if that was added. It will then attempt to delete the project. If that
-- operation fails, this method also fails. After the project has been
-- deleted, the tenant resource state is set to DELETED. To permanently
-- remove resource metadata, call the \`RemoveTenantProject\` method. New
-- resources with the same tag can\'t be added if there are existing
-- resources in a DELETED state. Operation.
--
-- /See:/ 'servicesTenancyUnitsDeleteProject' smart constructor.
data ServicesTenancyUnitsDeleteProject =
  ServicesTenancyUnitsDeleteProject'
    { _studpXgafv :: !(Maybe Xgafv)
    , _studpUploadProtocol :: !(Maybe Text)
    , _studpAccessToken :: !(Maybe Text)
    , _studpUploadType :: !(Maybe Text)
    , _studpPayload :: !DeleteTenantProjectRequest
    , _studpName :: !Text
    , _studpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesTenancyUnitsDeleteProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'studpXgafv'
--
-- * 'studpUploadProtocol'
--
-- * 'studpAccessToken'
--
-- * 'studpUploadType'
--
-- * 'studpPayload'
--
-- * 'studpName'
--
-- * 'studpCallback'
servicesTenancyUnitsDeleteProject
    :: DeleteTenantProjectRequest -- ^ 'studpPayload'
    -> Text -- ^ 'studpName'
    -> ServicesTenancyUnitsDeleteProject
servicesTenancyUnitsDeleteProject pStudpPayload_ pStudpName_ =
  ServicesTenancyUnitsDeleteProject'
    { _studpXgafv = Nothing
    , _studpUploadProtocol = Nothing
    , _studpAccessToken = Nothing
    , _studpUploadType = Nothing
    , _studpPayload = pStudpPayload_
    , _studpName = pStudpName_
    , _studpCallback = Nothing
    }


-- | V1 error format.
studpXgafv :: Lens' ServicesTenancyUnitsDeleteProject (Maybe Xgafv)
studpXgafv
  = lens _studpXgafv (\ s a -> s{_studpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
studpUploadProtocol :: Lens' ServicesTenancyUnitsDeleteProject (Maybe Text)
studpUploadProtocol
  = lens _studpUploadProtocol
      (\ s a -> s{_studpUploadProtocol = a})

-- | OAuth access token.
studpAccessToken :: Lens' ServicesTenancyUnitsDeleteProject (Maybe Text)
studpAccessToken
  = lens _studpAccessToken
      (\ s a -> s{_studpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
studpUploadType :: Lens' ServicesTenancyUnitsDeleteProject (Maybe Text)
studpUploadType
  = lens _studpUploadType
      (\ s a -> s{_studpUploadType = a})

-- | Multipart request metadata.
studpPayload :: Lens' ServicesTenancyUnitsDeleteProject DeleteTenantProjectRequest
studpPayload
  = lens _studpPayload (\ s a -> s{_studpPayload = a})

-- | Required. Name of the tenancy unit. Such as
-- \'services\/service.googleapis.com\/projects\/12345\/tenancyUnits\/abcd\'.
studpName :: Lens' ServicesTenancyUnitsDeleteProject Text
studpName
  = lens _studpName (\ s a -> s{_studpName = a})

-- | JSONP
studpCallback :: Lens' ServicesTenancyUnitsDeleteProject (Maybe Text)
studpCallback
  = lens _studpCallback
      (\ s a -> s{_studpCallback = a})

instance GoogleRequest
           ServicesTenancyUnitsDeleteProject
         where
        type Rs ServicesTenancyUnitsDeleteProject = Operation
        type Scopes ServicesTenancyUnitsDeleteProject =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ServicesTenancyUnitsDeleteProject'{..}
          = go _studpName _studpXgafv _studpUploadProtocol
              _studpAccessToken
              _studpUploadType
              _studpCallback
              (Just AltJSON)
              _studpPayload
              serviceConsumerManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ServicesTenancyUnitsDeleteProjectResource)
                      mempty
