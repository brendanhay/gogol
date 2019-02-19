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
-- Module      : Network.Google.Resource.ServiceManagement.Services.Configs.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a service configuration (version) for a managed service.
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.configs.get@.
module Network.Google.Resource.ServiceManagement.Services.Configs.Get
    (
    -- * REST Resource
      ServicesConfigsGetResource

    -- * Creating a Request
    , servicesConfigsGet
    , ServicesConfigsGet

    -- * Request Lenses
    , scgXgafv
    , scgUploadProtocol
    , scgAccessToken
    , scgUploadType
    , scgConfigId
    , scgServiceName
    , scgView
    , scgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.configs.get@ method which the
-- 'ServicesConfigsGet' request conforms to.
type ServicesConfigsGetResource =
     "v1" :>
       "services" :>
         Capture "serviceName" Text :>
           "configs" :>
             Capture "configId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "view" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Service

-- | Gets a service configuration (version) for a managed service.
--
-- /See:/ 'servicesConfigsGet' smart constructor.
data ServicesConfigsGet =
  ServicesConfigsGet'
    { _scgXgafv          :: !(Maybe Xgafv)
    , _scgUploadProtocol :: !(Maybe Text)
    , _scgAccessToken    :: !(Maybe Text)
    , _scgUploadType     :: !(Maybe Text)
    , _scgConfigId       :: !Text
    , _scgServiceName    :: !Text
    , _scgView           :: !(Maybe Text)
    , _scgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServicesConfigsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scgXgafv'
--
-- * 'scgUploadProtocol'
--
-- * 'scgAccessToken'
--
-- * 'scgUploadType'
--
-- * 'scgConfigId'
--
-- * 'scgServiceName'
--
-- * 'scgView'
--
-- * 'scgCallback'
servicesConfigsGet
    :: Text -- ^ 'scgConfigId'
    -> Text -- ^ 'scgServiceName'
    -> ServicesConfigsGet
servicesConfigsGet pScgConfigId_ pScgServiceName_ =
  ServicesConfigsGet'
    { _scgXgafv = Nothing
    , _scgUploadProtocol = Nothing
    , _scgAccessToken = Nothing
    , _scgUploadType = Nothing
    , _scgConfigId = pScgConfigId_
    , _scgServiceName = pScgServiceName_
    , _scgView = Nothing
    , _scgCallback = Nothing
    }

-- | V1 error format.
scgXgafv :: Lens' ServicesConfigsGet (Maybe Xgafv)
scgXgafv = lens _scgXgafv (\ s a -> s{_scgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
scgUploadProtocol :: Lens' ServicesConfigsGet (Maybe Text)
scgUploadProtocol
  = lens _scgUploadProtocol
      (\ s a -> s{_scgUploadProtocol = a})

-- | OAuth access token.
scgAccessToken :: Lens' ServicesConfigsGet (Maybe Text)
scgAccessToken
  = lens _scgAccessToken
      (\ s a -> s{_scgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
scgUploadType :: Lens' ServicesConfigsGet (Maybe Text)
scgUploadType
  = lens _scgUploadType
      (\ s a -> s{_scgUploadType = a})

-- | The id of the service configuration resource. This field must be
-- specified for the server to return all fields, including \`SourceInfo\`.
scgConfigId :: Lens' ServicesConfigsGet Text
scgConfigId
  = lens _scgConfigId (\ s a -> s{_scgConfigId = a})

-- | The name of the service. See the
-- [overview](\/service-management\/overview) for naming requirements. For
-- example: \`example.googleapis.com\`.
scgServiceName :: Lens' ServicesConfigsGet Text
scgServiceName
  = lens _scgServiceName
      (\ s a -> s{_scgServiceName = a})

-- | Specifies which parts of the Service Config should be returned in the
-- response.
scgView :: Lens' ServicesConfigsGet (Maybe Text)
scgView = lens _scgView (\ s a -> s{_scgView = a})

-- | JSONP
scgCallback :: Lens' ServicesConfigsGet (Maybe Text)
scgCallback
  = lens _scgCallback (\ s a -> s{_scgCallback = a})

instance GoogleRequest ServicesConfigsGet where
        type Rs ServicesConfigsGet = Service
        type Scopes ServicesConfigsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/service.management",
               "https://www.googleapis.com/auth/service.management.readonly"]
        requestClient ServicesConfigsGet'{..}
          = go _scgServiceName _scgConfigId _scgXgafv
              _scgUploadProtocol
              _scgAccessToken
              _scgUploadType
              _scgView
              _scgCallback
              (Just AltJSON)
              serviceManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesConfigsGetResource)
                      mempty
