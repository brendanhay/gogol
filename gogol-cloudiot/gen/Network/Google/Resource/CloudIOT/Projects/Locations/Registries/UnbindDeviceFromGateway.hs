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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.UnbindDeviceFromGateway
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the association between the device and the gateway.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.unbindDeviceFromGateway@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.UnbindDeviceFromGateway
    (
    -- * REST Resource
      ProjectsLocationsRegistriesUnbindDeviceFromGatewayResource

    -- * Creating a Request
    , projectsLocationsRegistriesUnbindDeviceFromGateway
    , ProjectsLocationsRegistriesUnbindDeviceFromGateway

    -- * Request Lenses
    , plrudfgParent
    , plrudfgXgafv
    , plrudfgUploadProtocol
    , plrudfgAccessToken
    , plrudfgUploadType
    , plrudfgPayload
    , plrudfgCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.unbindDeviceFromGateway@ method which the
-- 'ProjectsLocationsRegistriesUnbindDeviceFromGateway' request conforms to.
type ProjectsLocationsRegistriesUnbindDeviceFromGatewayResource
     =
     "v1" :>
       CaptureMode "parent" "unbindDeviceFromGateway" Text
         :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UnbindDeviceFromGatewayRequest :>
                       Post '[JSON] UnbindDeviceFromGatewayResponse

-- | Deletes the association between the device and the gateway.
--
-- /See:/ 'projectsLocationsRegistriesUnbindDeviceFromGateway' smart constructor.
data ProjectsLocationsRegistriesUnbindDeviceFromGateway =
  ProjectsLocationsRegistriesUnbindDeviceFromGateway'
    { _plrudfgParent         :: !Text
    , _plrudfgXgafv          :: !(Maybe Xgafv)
    , _plrudfgUploadProtocol :: !(Maybe Text)
    , _plrudfgAccessToken    :: !(Maybe Text)
    , _plrudfgUploadType     :: !(Maybe Text)
    , _plrudfgPayload        :: !UnbindDeviceFromGatewayRequest
    , _plrudfgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsRegistriesUnbindDeviceFromGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrudfgParent'
--
-- * 'plrudfgXgafv'
--
-- * 'plrudfgUploadProtocol'
--
-- * 'plrudfgAccessToken'
--
-- * 'plrudfgUploadType'
--
-- * 'plrudfgPayload'
--
-- * 'plrudfgCallback'
projectsLocationsRegistriesUnbindDeviceFromGateway
    :: Text -- ^ 'plrudfgParent'
    -> UnbindDeviceFromGatewayRequest -- ^ 'plrudfgPayload'
    -> ProjectsLocationsRegistriesUnbindDeviceFromGateway
projectsLocationsRegistriesUnbindDeviceFromGateway pPlrudfgParent_ pPlrudfgPayload_ =
  ProjectsLocationsRegistriesUnbindDeviceFromGateway'
    { _plrudfgParent = pPlrudfgParent_
    , _plrudfgXgafv = Nothing
    , _plrudfgUploadProtocol = Nothing
    , _plrudfgAccessToken = Nothing
    , _plrudfgUploadType = Nothing
    , _plrudfgPayload = pPlrudfgPayload_
    , _plrudfgCallback = Nothing
    }

-- | The name of the registry. For example,
-- \`projects\/example-project\/locations\/us-central1\/registries\/my-registry\`.
plrudfgParent :: Lens' ProjectsLocationsRegistriesUnbindDeviceFromGateway Text
plrudfgParent
  = lens _plrudfgParent
      (\ s a -> s{_plrudfgParent = a})

-- | V1 error format.
plrudfgXgafv :: Lens' ProjectsLocationsRegistriesUnbindDeviceFromGateway (Maybe Xgafv)
plrudfgXgafv
  = lens _plrudfgXgafv (\ s a -> s{_plrudfgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrudfgUploadProtocol :: Lens' ProjectsLocationsRegistriesUnbindDeviceFromGateway (Maybe Text)
plrudfgUploadProtocol
  = lens _plrudfgUploadProtocol
      (\ s a -> s{_plrudfgUploadProtocol = a})

-- | OAuth access token.
plrudfgAccessToken :: Lens' ProjectsLocationsRegistriesUnbindDeviceFromGateway (Maybe Text)
plrudfgAccessToken
  = lens _plrudfgAccessToken
      (\ s a -> s{_plrudfgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrudfgUploadType :: Lens' ProjectsLocationsRegistriesUnbindDeviceFromGateway (Maybe Text)
plrudfgUploadType
  = lens _plrudfgUploadType
      (\ s a -> s{_plrudfgUploadType = a})

-- | Multipart request metadata.
plrudfgPayload :: Lens' ProjectsLocationsRegistriesUnbindDeviceFromGateway UnbindDeviceFromGatewayRequest
plrudfgPayload
  = lens _plrudfgPayload
      (\ s a -> s{_plrudfgPayload = a})

-- | JSONP
plrudfgCallback :: Lens' ProjectsLocationsRegistriesUnbindDeviceFromGateway (Maybe Text)
plrudfgCallback
  = lens _plrudfgCallback
      (\ s a -> s{_plrudfgCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesUnbindDeviceFromGateway
         where
        type Rs
               ProjectsLocationsRegistriesUnbindDeviceFromGateway
             = UnbindDeviceFromGatewayResponse
        type Scopes
               ProjectsLocationsRegistriesUnbindDeviceFromGateway
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesUnbindDeviceFromGateway'{..}
          = go _plrudfgParent _plrudfgXgafv
              _plrudfgUploadProtocol
              _plrudfgAccessToken
              _plrudfgUploadType
              _plrudfgCallback
              (Just AltJSON)
              _plrudfgPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesUnbindDeviceFromGatewayResource)
                      mempty
