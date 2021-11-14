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
-- Module      : Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.UndeleteProject
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attempts to undelete a previously deleted tenant project. The project
-- must be in a DELETED state. There are no guarantees that an undeleted
-- project will be in a fully restored and functional state. Call the
-- \`ApplyTenantProjectConfig\` method to update its configuration and then
-- validate all managed service resources. Operation.
--
-- /See:/ <https://cloud.google.com/service-consumer-management/docs/overview Service Consumer Management API Reference> for @serviceconsumermanagement.services.tenancyUnits.undeleteProject@.
module Network.Google.Resource.ServiceConsumerManagement.Services.TenancyUnits.UndeleteProject
    (
    -- * REST Resource
      ServicesTenancyUnitsUndeleteProjectResource

    -- * Creating a Request
    , servicesTenancyUnitsUndeleteProject
    , ServicesTenancyUnitsUndeleteProject

    -- * Request Lenses
    , stuupXgafv
    , stuupUploadProtocol
    , stuupAccessToken
    , stuupUploadType
    , stuupPayload
    , stuupName
    , stuupCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceConsumerManagement.Types

-- | A resource alias for @serviceconsumermanagement.services.tenancyUnits.undeleteProject@ method which the
-- 'ServicesTenancyUnitsUndeleteProject' request conforms to.
type ServicesTenancyUnitsUndeleteProjectResource =
     "v1" :>
       CaptureMode "name" "undeleteProject" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UndeleteTenantProjectRequest :>
                       Post '[JSON] Operation

-- | Attempts to undelete a previously deleted tenant project. The project
-- must be in a DELETED state. There are no guarantees that an undeleted
-- project will be in a fully restored and functional state. Call the
-- \`ApplyTenantProjectConfig\` method to update its configuration and then
-- validate all managed service resources. Operation.
--
-- /See:/ 'servicesTenancyUnitsUndeleteProject' smart constructor.
data ServicesTenancyUnitsUndeleteProject =
  ServicesTenancyUnitsUndeleteProject'
    { _stuupXgafv :: !(Maybe Xgafv)
    , _stuupUploadProtocol :: !(Maybe Text)
    , _stuupAccessToken :: !(Maybe Text)
    , _stuupUploadType :: !(Maybe Text)
    , _stuupPayload :: !UndeleteTenantProjectRequest
    , _stuupName :: !Text
    , _stuupCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesTenancyUnitsUndeleteProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stuupXgafv'
--
-- * 'stuupUploadProtocol'
--
-- * 'stuupAccessToken'
--
-- * 'stuupUploadType'
--
-- * 'stuupPayload'
--
-- * 'stuupName'
--
-- * 'stuupCallback'
servicesTenancyUnitsUndeleteProject
    :: UndeleteTenantProjectRequest -- ^ 'stuupPayload'
    -> Text -- ^ 'stuupName'
    -> ServicesTenancyUnitsUndeleteProject
servicesTenancyUnitsUndeleteProject pStuupPayload_ pStuupName_ =
  ServicesTenancyUnitsUndeleteProject'
    { _stuupXgafv = Nothing
    , _stuupUploadProtocol = Nothing
    , _stuupAccessToken = Nothing
    , _stuupUploadType = Nothing
    , _stuupPayload = pStuupPayload_
    , _stuupName = pStuupName_
    , _stuupCallback = Nothing
    }


-- | V1 error format.
stuupXgafv :: Lens' ServicesTenancyUnitsUndeleteProject (Maybe Xgafv)
stuupXgafv
  = lens _stuupXgafv (\ s a -> s{_stuupXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
stuupUploadProtocol :: Lens' ServicesTenancyUnitsUndeleteProject (Maybe Text)
stuupUploadProtocol
  = lens _stuupUploadProtocol
      (\ s a -> s{_stuupUploadProtocol = a})

-- | OAuth access token.
stuupAccessToken :: Lens' ServicesTenancyUnitsUndeleteProject (Maybe Text)
stuupAccessToken
  = lens _stuupAccessToken
      (\ s a -> s{_stuupAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
stuupUploadType :: Lens' ServicesTenancyUnitsUndeleteProject (Maybe Text)
stuupUploadType
  = lens _stuupUploadType
      (\ s a -> s{_stuupUploadType = a})

-- | Multipart request metadata.
stuupPayload :: Lens' ServicesTenancyUnitsUndeleteProject UndeleteTenantProjectRequest
stuupPayload
  = lens _stuupPayload (\ s a -> s{_stuupPayload = a})

-- | Required. Name of the tenancy unit. Such as
-- \'services\/service.googleapis.com\/projects\/12345\/tenancyUnits\/abcd\'.
stuupName :: Lens' ServicesTenancyUnitsUndeleteProject Text
stuupName
  = lens _stuupName (\ s a -> s{_stuupName = a})

-- | JSONP
stuupCallback :: Lens' ServicesTenancyUnitsUndeleteProject (Maybe Text)
stuupCallback
  = lens _stuupCallback
      (\ s a -> s{_stuupCallback = a})

instance GoogleRequest
           ServicesTenancyUnitsUndeleteProject
         where
        type Rs ServicesTenancyUnitsUndeleteProject =
             Operation
        type Scopes ServicesTenancyUnitsUndeleteProject =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ServicesTenancyUnitsUndeleteProject'{..}
          = go _stuupName _stuupXgafv _stuupUploadProtocol
              _stuupAccessToken
              _stuupUploadType
              _stuupCallback
              (Just AltJSON)
              _stuupPayload
              serviceConsumerManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ServicesTenancyUnitsUndeleteProjectResource)
                      mempty
