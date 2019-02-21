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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.BindDeviceToGateway
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates the device with the gateway.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.groups.bindDeviceToGateway@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.Groups.BindDeviceToGateway
    (
    -- * REST Resource
      ProjectsLocationsRegistriesGroupsBindDeviceToGatewayResource

    -- * Creating a Request
    , projectsLocationsRegistriesGroupsBindDeviceToGateway
    , ProjectsLocationsRegistriesGroupsBindDeviceToGateway

    -- * Request Lenses
    , plrgbdtgParent
    , plrgbdtgXgafv
    , plrgbdtgUploadProtocol
    , plrgbdtgAccessToken
    , plrgbdtgUploadType
    , plrgbdtgPayload
    , plrgbdtgCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.groups.bindDeviceToGateway@ method which the
-- 'ProjectsLocationsRegistriesGroupsBindDeviceToGateway' request conforms to.
type ProjectsLocationsRegistriesGroupsBindDeviceToGatewayResource
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
-- /See:/ 'projectsLocationsRegistriesGroupsBindDeviceToGateway' smart constructor.
data ProjectsLocationsRegistriesGroupsBindDeviceToGateway =
  ProjectsLocationsRegistriesGroupsBindDeviceToGateway'
    { _plrgbdtgParent         :: !Text
    , _plrgbdtgXgafv          :: !(Maybe Xgafv)
    , _plrgbdtgUploadProtocol :: !(Maybe Text)
    , _plrgbdtgAccessToken    :: !(Maybe Text)
    , _plrgbdtgUploadType     :: !(Maybe Text)
    , _plrgbdtgPayload        :: !BindDeviceToGatewayRequest
    , _plrgbdtgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsRegistriesGroupsBindDeviceToGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrgbdtgParent'
--
-- * 'plrgbdtgXgafv'
--
-- * 'plrgbdtgUploadProtocol'
--
-- * 'plrgbdtgAccessToken'
--
-- * 'plrgbdtgUploadType'
--
-- * 'plrgbdtgPayload'
--
-- * 'plrgbdtgCallback'
projectsLocationsRegistriesGroupsBindDeviceToGateway
    :: Text -- ^ 'plrgbdtgParent'
    -> BindDeviceToGatewayRequest -- ^ 'plrgbdtgPayload'
    -> ProjectsLocationsRegistriesGroupsBindDeviceToGateway
projectsLocationsRegistriesGroupsBindDeviceToGateway pPlrgbdtgParent_ pPlrgbdtgPayload_ =
  ProjectsLocationsRegistriesGroupsBindDeviceToGateway'
    { _plrgbdtgParent = pPlrgbdtgParent_
    , _plrgbdtgXgafv = Nothing
    , _plrgbdtgUploadProtocol = Nothing
    , _plrgbdtgAccessToken = Nothing
    , _plrgbdtgUploadType = Nothing
    , _plrgbdtgPayload = pPlrgbdtgPayload_
    , _plrgbdtgCallback = Nothing
    }


-- | The name of the registry. For example,
-- \`projects\/example-project\/locations\/us-central1\/registries\/my-registry\`.
plrgbdtgParent :: Lens' ProjectsLocationsRegistriesGroupsBindDeviceToGateway Text
plrgbdtgParent
  = lens _plrgbdtgParent
      (\ s a -> s{_plrgbdtgParent = a})

-- | V1 error format.
plrgbdtgXgafv :: Lens' ProjectsLocationsRegistriesGroupsBindDeviceToGateway (Maybe Xgafv)
plrgbdtgXgafv
  = lens _plrgbdtgXgafv
      (\ s a -> s{_plrgbdtgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrgbdtgUploadProtocol :: Lens' ProjectsLocationsRegistriesGroupsBindDeviceToGateway (Maybe Text)
plrgbdtgUploadProtocol
  = lens _plrgbdtgUploadProtocol
      (\ s a -> s{_plrgbdtgUploadProtocol = a})

-- | OAuth access token.
plrgbdtgAccessToken :: Lens' ProjectsLocationsRegistriesGroupsBindDeviceToGateway (Maybe Text)
plrgbdtgAccessToken
  = lens _plrgbdtgAccessToken
      (\ s a -> s{_plrgbdtgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrgbdtgUploadType :: Lens' ProjectsLocationsRegistriesGroupsBindDeviceToGateway (Maybe Text)
plrgbdtgUploadType
  = lens _plrgbdtgUploadType
      (\ s a -> s{_plrgbdtgUploadType = a})

-- | Multipart request metadata.
plrgbdtgPayload :: Lens' ProjectsLocationsRegistriesGroupsBindDeviceToGateway BindDeviceToGatewayRequest
plrgbdtgPayload
  = lens _plrgbdtgPayload
      (\ s a -> s{_plrgbdtgPayload = a})

-- | JSONP
plrgbdtgCallback :: Lens' ProjectsLocationsRegistriesGroupsBindDeviceToGateway (Maybe Text)
plrgbdtgCallback
  = lens _plrgbdtgCallback
      (\ s a -> s{_plrgbdtgCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesGroupsBindDeviceToGateway
         where
        type Rs
               ProjectsLocationsRegistriesGroupsBindDeviceToGateway
             = BindDeviceToGatewayResponse
        type Scopes
               ProjectsLocationsRegistriesGroupsBindDeviceToGateway
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesGroupsBindDeviceToGateway'{..}
          = go _plrgbdtgParent _plrgbdtgXgafv
              _plrgbdtgUploadProtocol
              _plrgbdtgAccessToken
              _plrgbdtgUploadType
              _plrgbdtgCallback
              (Just AltJSON)
              _plrgbdtgPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesGroupsBindDeviceToGatewayResource)
                      mempty
