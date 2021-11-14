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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.UnbindDeviceFromGateway
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the association between the device and the gateway.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.groups.unbindDeviceFromGateway@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.UnbindDeviceFromGateway
    (
    -- * REST Resource
      ProjectsLocationsRegistriesGroupsUnbindDeviceFromGatewayResource

    -- * Creating a Request
    , projectsLocationsRegistriesGroupsUnbindDeviceFromGateway
    , ProjectsLocationsRegistriesGroupsUnbindDeviceFromGateway

    -- * Request Lenses
    , plrgudfgParent
    , plrgudfgXgafv
    , plrgudfgUploadProtocol
    , plrgudfgAccessToken
    , plrgudfgUploadType
    , plrgudfgPayload
    , plrgudfgCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.groups.unbindDeviceFromGateway@ method which the
-- 'ProjectsLocationsRegistriesGroupsUnbindDeviceFromGateway' request conforms to.
type ProjectsLocationsRegistriesGroupsUnbindDeviceFromGatewayResource
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
-- /See:/ 'projectsLocationsRegistriesGroupsUnbindDeviceFromGateway' smart constructor.
data ProjectsLocationsRegistriesGroupsUnbindDeviceFromGateway =
  ProjectsLocationsRegistriesGroupsUnbindDeviceFromGateway'
    { _plrgudfgParent         :: !Text
    , _plrgudfgXgafv          :: !(Maybe Xgafv)
    , _plrgudfgUploadProtocol :: !(Maybe Text)
    , _plrgudfgAccessToken    :: !(Maybe Text)
    , _plrgudfgUploadType     :: !(Maybe Text)
    , _plrgudfgPayload        :: !UnbindDeviceFromGatewayRequest
    , _plrgudfgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRegistriesGroupsUnbindDeviceFromGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrgudfgParent'
--
-- * 'plrgudfgXgafv'
--
-- * 'plrgudfgUploadProtocol'
--
-- * 'plrgudfgAccessToken'
--
-- * 'plrgudfgUploadType'
--
-- * 'plrgudfgPayload'
--
-- * 'plrgudfgCallback'
projectsLocationsRegistriesGroupsUnbindDeviceFromGateway
    :: Text -- ^ 'plrgudfgParent'
    -> UnbindDeviceFromGatewayRequest -- ^ 'plrgudfgPayload'
    -> ProjectsLocationsRegistriesGroupsUnbindDeviceFromGateway
projectsLocationsRegistriesGroupsUnbindDeviceFromGateway pPlrgudfgParent_ pPlrgudfgPayload_ =
  ProjectsLocationsRegistriesGroupsUnbindDeviceFromGateway'
    { _plrgudfgParent = pPlrgudfgParent_
    , _plrgudfgXgafv = Nothing
    , _plrgudfgUploadProtocol = Nothing
    , _plrgudfgAccessToken = Nothing
    , _plrgudfgUploadType = Nothing
    , _plrgudfgPayload = pPlrgudfgPayload_
    , _plrgudfgCallback = Nothing
    }


-- | The name of the registry. For example,
-- \`projects\/example-project\/locations\/us-central1\/registries\/my-registry\`.
plrgudfgParent :: Lens' ProjectsLocationsRegistriesGroupsUnbindDeviceFromGateway Text
plrgudfgParent
  = lens _plrgudfgParent
      (\ s a -> s{_plrgudfgParent = a})

-- | V1 error format.
plrgudfgXgafv :: Lens' ProjectsLocationsRegistriesGroupsUnbindDeviceFromGateway (Maybe Xgafv)
plrgudfgXgafv
  = lens _plrgudfgXgafv
      (\ s a -> s{_plrgudfgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrgudfgUploadProtocol :: Lens' ProjectsLocationsRegistriesGroupsUnbindDeviceFromGateway (Maybe Text)
plrgudfgUploadProtocol
  = lens _plrgudfgUploadProtocol
      (\ s a -> s{_plrgudfgUploadProtocol = a})

-- | OAuth access token.
plrgudfgAccessToken :: Lens' ProjectsLocationsRegistriesGroupsUnbindDeviceFromGateway (Maybe Text)
plrgudfgAccessToken
  = lens _plrgudfgAccessToken
      (\ s a -> s{_plrgudfgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrgudfgUploadType :: Lens' ProjectsLocationsRegistriesGroupsUnbindDeviceFromGateway (Maybe Text)
plrgudfgUploadType
  = lens _plrgudfgUploadType
      (\ s a -> s{_plrgudfgUploadType = a})

-- | Multipart request metadata.
plrgudfgPayload :: Lens' ProjectsLocationsRegistriesGroupsUnbindDeviceFromGateway UnbindDeviceFromGatewayRequest
plrgudfgPayload
  = lens _plrgudfgPayload
      (\ s a -> s{_plrgudfgPayload = a})

-- | JSONP
plrgudfgCallback :: Lens' ProjectsLocationsRegistriesGroupsUnbindDeviceFromGateway (Maybe Text)
plrgudfgCallback
  = lens _plrgudfgCallback
      (\ s a -> s{_plrgudfgCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesGroupsUnbindDeviceFromGateway
         where
        type Rs
               ProjectsLocationsRegistriesGroupsUnbindDeviceFromGateway
             = UnbindDeviceFromGatewayResponse
        type Scopes
               ProjectsLocationsRegistriesGroupsUnbindDeviceFromGateway
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesGroupsUnbindDeviceFromGateway'{..}
          = go _plrgudfgParent _plrgudfgXgafv
              _plrgudfgUploadProtocol
              _plrgudfgAccessToken
              _plrgudfgUploadType
              _plrgudfgCallback
              (Just AltJSON)
              _plrgudfgPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesGroupsUnbindDeviceFromGatewayResource)
                      mempty
