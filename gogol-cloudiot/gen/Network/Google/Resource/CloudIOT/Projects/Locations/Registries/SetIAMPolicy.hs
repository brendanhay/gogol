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
-- Module      : Network.Google.Resource.CloudIOT.Projects.Locations.Registries.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/iot Cloud IoT API Reference> for @cloudiot.projects.locations.registries.setIamPolicy@.
module Network.Google.Resource.CloudIOT.Projects.Locations.Registries.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsRegistriesSetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsRegistriesSetIAMPolicy
    , ProjectsLocationsRegistriesSetIAMPolicy

    -- * Request Lenses
    , plrsipXgafv
    , plrsipUploadProtocol
    , plrsipAccessToken
    , plrsipUploadType
    , plrsipPayload
    , plrsipResource
    , plrsipCallback
    ) where

import           Network.Google.CloudIOT.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudiot.projects.locations.registries.setIamPolicy@ method which the
-- 'ProjectsLocationsRegistriesSetIAMPolicy' request conforms to.
type ProjectsLocationsRegistriesSetIAMPolicyResource
     =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'projectsLocationsRegistriesSetIAMPolicy' smart constructor.
data ProjectsLocationsRegistriesSetIAMPolicy =
  ProjectsLocationsRegistriesSetIAMPolicy'
    { _plrsipXgafv          :: !(Maybe Xgafv)
    , _plrsipUploadProtocol :: !(Maybe Text)
    , _plrsipAccessToken    :: !(Maybe Text)
    , _plrsipUploadType     :: !(Maybe Text)
    , _plrsipPayload        :: !SetIAMPolicyRequest
    , _plrsipResource       :: !Text
    , _plrsipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsRegistriesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrsipXgafv'
--
-- * 'plrsipUploadProtocol'
--
-- * 'plrsipAccessToken'
--
-- * 'plrsipUploadType'
--
-- * 'plrsipPayload'
--
-- * 'plrsipResource'
--
-- * 'plrsipCallback'
projectsLocationsRegistriesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'plrsipPayload'
    -> Text -- ^ 'plrsipResource'
    -> ProjectsLocationsRegistriesSetIAMPolicy
projectsLocationsRegistriesSetIAMPolicy pPlrsipPayload_ pPlrsipResource_ =
  ProjectsLocationsRegistriesSetIAMPolicy'
    { _plrsipXgafv = Nothing
    , _plrsipUploadProtocol = Nothing
    , _plrsipAccessToken = Nothing
    , _plrsipUploadType = Nothing
    , _plrsipPayload = pPlrsipPayload_
    , _plrsipResource = pPlrsipResource_
    , _plrsipCallback = Nothing
    }

-- | V1 error format.
plrsipXgafv :: Lens' ProjectsLocationsRegistriesSetIAMPolicy (Maybe Xgafv)
plrsipXgafv
  = lens _plrsipXgafv (\ s a -> s{_plrsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plrsipUploadProtocol :: Lens' ProjectsLocationsRegistriesSetIAMPolicy (Maybe Text)
plrsipUploadProtocol
  = lens _plrsipUploadProtocol
      (\ s a -> s{_plrsipUploadProtocol = a})

-- | OAuth access token.
plrsipAccessToken :: Lens' ProjectsLocationsRegistriesSetIAMPolicy (Maybe Text)
plrsipAccessToken
  = lens _plrsipAccessToken
      (\ s a -> s{_plrsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plrsipUploadType :: Lens' ProjectsLocationsRegistriesSetIAMPolicy (Maybe Text)
plrsipUploadType
  = lens _plrsipUploadType
      (\ s a -> s{_plrsipUploadType = a})

-- | Multipart request metadata.
plrsipPayload :: Lens' ProjectsLocationsRegistriesSetIAMPolicy SetIAMPolicyRequest
plrsipPayload
  = lens _plrsipPayload
      (\ s a -> s{_plrsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
plrsipResource :: Lens' ProjectsLocationsRegistriesSetIAMPolicy Text
plrsipResource
  = lens _plrsipResource
      (\ s a -> s{_plrsipResource = a})

-- | JSONP
plrsipCallback :: Lens' ProjectsLocationsRegistriesSetIAMPolicy (Maybe Text)
plrsipCallback
  = lens _plrsipCallback
      (\ s a -> s{_plrsipCallback = a})

instance GoogleRequest
           ProjectsLocationsRegistriesSetIAMPolicy
         where
        type Rs ProjectsLocationsRegistriesSetIAMPolicy =
             Policy
        type Scopes ProjectsLocationsRegistriesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudiot"]
        requestClient
          ProjectsLocationsRegistriesSetIAMPolicy'{..}
          = go _plrsipResource _plrsipXgafv
              _plrsipUploadProtocol
              _plrsipAccessToken
              _plrsipUploadType
              _plrsipCallback
              (Just AltJSON)
              _plrsipPayload
              cloudIOTService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsRegistriesSetIAMPolicyResource)
                      mempty
