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
-- Module      : Network.Google.Resource.Run.Projects.Locations.Services.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the IAM Access control policy for the specified Service. Overwrites
-- any existing policy.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.services.setIamPolicy@.
module Network.Google.Resource.Run.Projects.Locations.Services.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsServicesSetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsServicesSetIAMPolicy
    , ProjectsLocationsServicesSetIAMPolicy

    -- * Request Lenses
    , plssipXgafv
    , plssipUploadProtocol
    , plssipAccessToken
    , plssipUploadType
    , plssipPayload
    , plssipResource
    , plssipCallback
    ) where

import Network.Google.Prelude
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.services.setIamPolicy@ method which the
-- 'ProjectsLocationsServicesSetIAMPolicy' request conforms to.
type ProjectsLocationsServicesSetIAMPolicyResource =
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

-- | Sets the IAM Access control policy for the specified Service. Overwrites
-- any existing policy.
--
-- /See:/ 'projectsLocationsServicesSetIAMPolicy' smart constructor.
data ProjectsLocationsServicesSetIAMPolicy =
  ProjectsLocationsServicesSetIAMPolicy'
    { _plssipXgafv :: !(Maybe Xgafv)
    , _plssipUploadProtocol :: !(Maybe Text)
    , _plssipAccessToken :: !(Maybe Text)
    , _plssipUploadType :: !(Maybe Text)
    , _plssipPayload :: !SetIAMPolicyRequest
    , _plssipResource :: !Text
    , _plssipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsServicesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plssipXgafv'
--
-- * 'plssipUploadProtocol'
--
-- * 'plssipAccessToken'
--
-- * 'plssipUploadType'
--
-- * 'plssipPayload'
--
-- * 'plssipResource'
--
-- * 'plssipCallback'
projectsLocationsServicesSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'plssipPayload'
    -> Text -- ^ 'plssipResource'
    -> ProjectsLocationsServicesSetIAMPolicy
projectsLocationsServicesSetIAMPolicy pPlssipPayload_ pPlssipResource_ =
  ProjectsLocationsServicesSetIAMPolicy'
    { _plssipXgafv = Nothing
    , _plssipUploadProtocol = Nothing
    , _plssipAccessToken = Nothing
    , _plssipUploadType = Nothing
    , _plssipPayload = pPlssipPayload_
    , _plssipResource = pPlssipResource_
    , _plssipCallback = Nothing
    }


-- | V1 error format.
plssipXgafv :: Lens' ProjectsLocationsServicesSetIAMPolicy (Maybe Xgafv)
plssipXgafv
  = lens _plssipXgafv (\ s a -> s{_plssipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plssipUploadProtocol :: Lens' ProjectsLocationsServicesSetIAMPolicy (Maybe Text)
plssipUploadProtocol
  = lens _plssipUploadProtocol
      (\ s a -> s{_plssipUploadProtocol = a})

-- | OAuth access token.
plssipAccessToken :: Lens' ProjectsLocationsServicesSetIAMPolicy (Maybe Text)
plssipAccessToken
  = lens _plssipAccessToken
      (\ s a -> s{_plssipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plssipUploadType :: Lens' ProjectsLocationsServicesSetIAMPolicy (Maybe Text)
plssipUploadType
  = lens _plssipUploadType
      (\ s a -> s{_plssipUploadType = a})

-- | Multipart request metadata.
plssipPayload :: Lens' ProjectsLocationsServicesSetIAMPolicy SetIAMPolicyRequest
plssipPayload
  = lens _plssipPayload
      (\ s a -> s{_plssipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
plssipResource :: Lens' ProjectsLocationsServicesSetIAMPolicy Text
plssipResource
  = lens _plssipResource
      (\ s a -> s{_plssipResource = a})

-- | JSONP
plssipCallback :: Lens' ProjectsLocationsServicesSetIAMPolicy (Maybe Text)
plssipCallback
  = lens _plssipCallback
      (\ s a -> s{_plssipCallback = a})

instance GoogleRequest
           ProjectsLocationsServicesSetIAMPolicy
         where
        type Rs ProjectsLocationsServicesSetIAMPolicy =
             Policy
        type Scopes ProjectsLocationsServicesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsServicesSetIAMPolicy'{..}
          = go _plssipResource _plssipXgafv
              _plssipUploadProtocol
              _plssipAccessToken
              _plssipUploadType
              _plssipCallback
              (Just AltJSON)
              _plssipPayload
              runService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsServicesSetIAMPolicyResource)
                      mempty
