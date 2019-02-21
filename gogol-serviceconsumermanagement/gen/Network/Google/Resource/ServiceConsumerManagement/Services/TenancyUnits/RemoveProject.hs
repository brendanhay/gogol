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
-- Module      : Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.RemoveProject
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes specified project resource identified by tenant resource tag. It
-- will remove project lien with \'TenantManager\' origin if that was
-- added. It will then attempt to delete the project. If that operation
-- fails, this method fails. Calls to remove already removed or
-- non-existent tenant project will succeed. After the project has been
-- deleted, or if was already in DELETED state, resource metadata is
-- permanently removed from the tenancy unit. Operation.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.tenancyUnits.removeProject@.
module Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.RemoveProject
    (
    -- * REST Resource
      ServicesTenancyUnitsRemoveProjectResource

    -- * Creating a Request
    , servicesTenancyUnitsRemoveProject
    , ServicesTenancyUnitsRemoveProject

    -- * Request Lenses
    , sturpXgafv
    , sturpUploadProtocol
    , sturpAccessToken
    , sturpUploadType
    , sturpPayload
    , sturpName
    , sturpCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.tenancyUnits.removeProject@ method which the
-- 'ServicesTenancyUnitsRemoveProject' request conforms to.
type ServicesTenancyUnitsRemoveProjectResource =
     "v1" :>
       CaptureMode "name" "removeProject" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RemoveTenantProjectRequest :>
                       Post '[JSON] Operation

-- | Removes specified project resource identified by tenant resource tag. It
-- will remove project lien with \'TenantManager\' origin if that was
-- added. It will then attempt to delete the project. If that operation
-- fails, this method fails. Calls to remove already removed or
-- non-existent tenant project will succeed. After the project has been
-- deleted, or if was already in DELETED state, resource metadata is
-- permanently removed from the tenancy unit. Operation.
--
-- /See:/ 'servicesTenancyUnitsRemoveProject' smart constructor.
data ServicesTenancyUnitsRemoveProject =
  ServicesTenancyUnitsRemoveProject'
    { _sturpXgafv          :: !(Maybe Xgafv)
    , _sturpUploadProtocol :: !(Maybe Text)
    , _sturpAccessToken    :: !(Maybe Text)
    , _sturpUploadType     :: !(Maybe Text)
    , _sturpPayload        :: !RemoveTenantProjectRequest
    , _sturpName           :: !Text
    , _sturpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesTenancyUnitsRemoveProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sturpXgafv'
--
-- * 'sturpUploadProtocol'
--
-- * 'sturpAccessToken'
--
-- * 'sturpUploadType'
--
-- * 'sturpPayload'
--
-- * 'sturpName'
--
-- * 'sturpCallback'
servicesTenancyUnitsRemoveProject
    :: RemoveTenantProjectRequest -- ^ 'sturpPayload'
    -> Text -- ^ 'sturpName'
    -> ServicesTenancyUnitsRemoveProject
servicesTenancyUnitsRemoveProject pSturpPayload_ pSturpName_ =
  ServicesTenancyUnitsRemoveProject'
    { _sturpXgafv = Nothing
    , _sturpUploadProtocol = Nothing
    , _sturpAccessToken = Nothing
    , _sturpUploadType = Nothing
    , _sturpPayload = pSturpPayload_
    , _sturpName = pSturpName_
    , _sturpCallback = Nothing
    }


-- | V1 error format.
sturpXgafv :: Lens' ServicesTenancyUnitsRemoveProject (Maybe Xgafv)
sturpXgafv
  = lens _sturpXgafv (\ s a -> s{_sturpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sturpUploadProtocol :: Lens' ServicesTenancyUnitsRemoveProject (Maybe Text)
sturpUploadProtocol
  = lens _sturpUploadProtocol
      (\ s a -> s{_sturpUploadProtocol = a})

-- | OAuth access token.
sturpAccessToken :: Lens' ServicesTenancyUnitsRemoveProject (Maybe Text)
sturpAccessToken
  = lens _sturpAccessToken
      (\ s a -> s{_sturpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sturpUploadType :: Lens' ServicesTenancyUnitsRemoveProject (Maybe Text)
sturpUploadType
  = lens _sturpUploadType
      (\ s a -> s{_sturpUploadType = a})

-- | Multipart request metadata.
sturpPayload :: Lens' ServicesTenancyUnitsRemoveProject RemoveTenantProjectRequest
sturpPayload
  = lens _sturpPayload (\ s a -> s{_sturpPayload = a})

-- | Name of the tenancy unit. Such as
-- \'services\/service.googleapis.com\/projects\/12345\/tenancyUnits\/abcd\'.
sturpName :: Lens' ServicesTenancyUnitsRemoveProject Text
sturpName
  = lens _sturpName (\ s a -> s{_sturpName = a})

-- | JSONP
sturpCallback :: Lens' ServicesTenancyUnitsRemoveProject (Maybe Text)
sturpCallback
  = lens _sturpCallback
      (\ s a -> s{_sturpCallback = a})

instance GoogleRequest
           ServicesTenancyUnitsRemoveProject
         where
        type Rs ServicesTenancyUnitsRemoveProject = Operation
        type Scopes ServicesTenancyUnitsRemoveProject =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ServicesTenancyUnitsRemoveProject'{..}
          = go _sturpName _sturpXgafv _sturpUploadProtocol
              _sturpAccessToken
              _sturpUploadType
              _sturpCallback
              (Just AltJSON)
              _sturpPayload
              serviceConsumerManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ServicesTenancyUnitsRemoveProjectResource)
                      mempty
