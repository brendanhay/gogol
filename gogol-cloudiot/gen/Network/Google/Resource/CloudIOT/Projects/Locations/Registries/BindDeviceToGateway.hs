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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.BindDeviceToGateway
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates the device with the gateway.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.bindDeviceToGateway@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.BindDeviceToGateway
    (
    -- * REST Resource
      ProjectsLocationsRegistriesBindDeviceToGatewayResource

    -- * Creating a Request
    , projectsLocationsRegistriesBindDeviceToGateway
    , ProjectsLocationsRegistriesBindDeviceToGateway

    -- * Request Lenses
    , plrbdtgParent
    , plrbdtgXgafv
    , plrbdtgUploadProtocol
    , plrbdtgAccessToken
    , plrbdtgUploadType
    , plrbdtgPayload
    , plrbdtgCallback
    ) where

import Network.Google.CloudIOT.Types
import Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.bindDeviceToGateway@ method which the
-- 'ProjectsLocationsRegistriesBindDeviceToGateway' request conforms to.
type ProjectsLocationsRegistriesBindDeviceToGatewayResource
     =
     "v1" :>
       CaptureMode "parent" "bindDeviceToGateway" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BindDeviceToGatewayRequest :>
                       Post '[JSON] BindDeviceToGatewayResponse

-- | Associates the device with the gateway.
--
-- /See:/ 'projectsLocationsRegistriesBindDeviceToGateway' smart constructor.
data ProjectsLocationsRegistriesBindDeviceToGateway =
  ProjectsLocationsRegistriesBindDeviceToGateway'
    { _plrbdtgParent :: !Text
    , _plrbdtgXgafv :: !(Maybe Xgafv)
    , _plrbdtgUploadProtocol :: !(Maybe Text)
    , _plrbdtgAccessToken :: !(Maybe Text)
    , _plrbdtgUploadType :: !(Maybe Text)
    , _plrbdtgPayload :: !BindDeviceToGatewayRequest
    , _plrbdtgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRegistriesBindDeviceToGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrbdtgParent'
--
-- * 'plrbdtgXgafv'
--
-- * 'plrbdtgUploadProtocol'
--
-- * 'plrbdtgAccessToken'
--
-- * 'plrbdtgUploadType'
--
-- * 'plrbdtgPayload'
--
-- * 'plrbdtgCallback'
projectsLocationsRegistriesBindDeviceToGateway
    :: Text -- ^ 'plrbdtgParent'
    -> BindDeviceToGatewayRequest -- ^ 'plrbdtgPayload'
    -> ProjectsLocationsRegistriesBindDeviceToGateway
projectsLocationsRegistriesBindDeviceToGateway pPlrbdtgParent_ pPlrbdtgPayload_ =
  ProjectsLocationsRegistriesBindDeviceToGateway'
    { _plrbdtgParent = pPlrbdtgParent_
    , _plrbdtgXgafv = Nothing
    , _plrbdtgUploadProtocol = Nothing
    , _plrbdtgAccessToken = Nothing
    , _plrbdtgUploadType = Nothing
    , _plrbdtgPayload = pPlrbdtgPayload_
    , _plrbdtgCallback = Nothing
    }


-- | Required. The name of the registry. For example,
-- \`projects\/example-project\/locations\/us-central1\/registries\/my-registry\`.
plrbdtgParent :: Lens' ProjectsLocationsRegistriesBindDeviceToGateway Text
plrbdtgParent
  = lens _plrbdtgParent
      (\ s a -> s{_plrbdtgParent = a})

-- | V1 error format.
plrbdtgXgafv :: Lens' ProjectsLocationsRegistriesBindDeviceToGateway (Maybe Xgafv)
plrbdtgXgafv
  = lens _plrbdtgXgafv (\ s a -> s{_plrbdtgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrbdtgUploadProtocol :: Lens' ProjectsLocationsRegistriesBindDeviceToGateway (Maybe Text)
plrbdtgUploadProtocol
  = lens _plrbdtgUploadProtocol
      (\ s a -> s{_plrbdtgUploadProtocol = a})

-- | OAuth access token.
plrbdtgAccessToken :: Lens' ProjectsLocationsRegistriesBindDeviceToGateway (Maybe Text)
plrbdtgAccessToken
  = lens _plrbdtgAccessToken
      (\ s a -> s{_plrbdtgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrbdtgUploadType :: Lens' ProjectsLocationsRegistriesBindDeviceToGateway (Maybe Text)
plrbdtgUploadType
  = lens _plrbdtgUploadType
      (\ s a -> s{_plrbdtgUploadType = a})

-- | Multipart request metadata.
plrbdtgPayload :: Lens' ProjectsLocationsRegistriesBindDeviceToGateway BindDeviceToGatewayRequest
plrbdtgPayload
  = lens _plrbdtgPayload
      (\ s a -> s{_plrbdtgPayload = a})

-- | JSONP
plrbdtgCallback :: Lens' ProjectsLocationsRegistriesBindDeviceToGateway (Maybe Text)
plrbdtgCallback
  = lens _plrbdtgCallback
      (\ s a -> s{_plrbdtgCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesBindDeviceToGateway
         where
        type Rs
               ProjectsLocationsRegistriesBindDeviceToGateway
             = BindDeviceToGatewayResponse
        type Scopes
               ProjectsLocationsRegistriesBindDeviceToGateway
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesBindDeviceToGateway'{..}
          = go _plrbdtgParent _plrbdtgXgafv
              _plrbdtgUploadProtocol
              _plrbdtgAccessToken
              _plrbdtgUploadType
              _plrbdtgCallback
              (Just AltJSON)
              _plrbdtgPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesBindDeviceToGatewayResource)
                      mempty
