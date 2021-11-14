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
-- Module      : Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Undelete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes a WorkloadIdentityPoolProvider, as long as it was deleted
-- fewer than 30 days ago.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.providers.undelete@.
module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Undelete
    (
    -- * REST Resource
      ProjectsLocationsWorkLoadIdentityPoolsProvidersUndeleteResource

    -- * Creating a Request
    , projectsLocationsWorkLoadIdentityPoolsProvidersUndelete
    , ProjectsLocationsWorkLoadIdentityPoolsProvidersUndelete

    -- * Request Lenses
    , plwlippuXgafv
    , plwlippuUploadProtocol
    , plwlippuAccessToken
    , plwlippuUploadType
    , plwlippuPayload
    , plwlippuName
    , plwlippuCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.providers.undelete@ method which the
-- 'ProjectsLocationsWorkLoadIdentityPoolsProvidersUndelete' request conforms to.
type ProjectsLocationsWorkLoadIdentityPoolsProvidersUndeleteResource
     =
     "v1" :>
       CaptureMode "name" "undelete" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       UndeleteWorkLoadIdentityPoolProviderRequest
                       :> Post '[JSON] Operation

-- | Undeletes a WorkloadIdentityPoolProvider, as long as it was deleted
-- fewer than 30 days ago.
--
-- /See:/ 'projectsLocationsWorkLoadIdentityPoolsProvidersUndelete' smart constructor.
data ProjectsLocationsWorkLoadIdentityPoolsProvidersUndelete =
  ProjectsLocationsWorkLoadIdentityPoolsProvidersUndelete'
    { _plwlippuXgafv :: !(Maybe Xgafv)
    , _plwlippuUploadProtocol :: !(Maybe Text)
    , _plwlippuAccessToken :: !(Maybe Text)
    , _plwlippuUploadType :: !(Maybe Text)
    , _plwlippuPayload :: !UndeleteWorkLoadIdentityPoolProviderRequest
    , _plwlippuName :: !Text
    , _plwlippuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkLoadIdentityPoolsProvidersUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwlippuXgafv'
--
-- * 'plwlippuUploadProtocol'
--
-- * 'plwlippuAccessToken'
--
-- * 'plwlippuUploadType'
--
-- * 'plwlippuPayload'
--
-- * 'plwlippuName'
--
-- * 'plwlippuCallback'
projectsLocationsWorkLoadIdentityPoolsProvidersUndelete
    :: UndeleteWorkLoadIdentityPoolProviderRequest -- ^ 'plwlippuPayload'
    -> Text -- ^ 'plwlippuName'
    -> ProjectsLocationsWorkLoadIdentityPoolsProvidersUndelete
projectsLocationsWorkLoadIdentityPoolsProvidersUndelete pPlwlippuPayload_ pPlwlippuName_ =
  ProjectsLocationsWorkLoadIdentityPoolsProvidersUndelete'
    { _plwlippuXgafv = Nothing
    , _plwlippuUploadProtocol = Nothing
    , _plwlippuAccessToken = Nothing
    , _plwlippuUploadType = Nothing
    , _plwlippuPayload = pPlwlippuPayload_
    , _plwlippuName = pPlwlippuName_
    , _plwlippuCallback = Nothing
    }


-- | V1 error format.
plwlippuXgafv :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersUndelete (Maybe Xgafv)
plwlippuXgafv
  = lens _plwlippuXgafv
      (\ s a -> s{_plwlippuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwlippuUploadProtocol :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersUndelete (Maybe Text)
plwlippuUploadProtocol
  = lens _plwlippuUploadProtocol
      (\ s a -> s{_plwlippuUploadProtocol = a})

-- | OAuth access token.
plwlippuAccessToken :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersUndelete (Maybe Text)
plwlippuAccessToken
  = lens _plwlippuAccessToken
      (\ s a -> s{_plwlippuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwlippuUploadType :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersUndelete (Maybe Text)
plwlippuUploadType
  = lens _plwlippuUploadType
      (\ s a -> s{_plwlippuUploadType = a})

-- | Multipart request metadata.
plwlippuPayload :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersUndelete UndeleteWorkLoadIdentityPoolProviderRequest
plwlippuPayload
  = lens _plwlippuPayload
      (\ s a -> s{_plwlippuPayload = a})

-- | Required. The name of the provider to undelete.
plwlippuName :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersUndelete Text
plwlippuName
  = lens _plwlippuName (\ s a -> s{_plwlippuName = a})

-- | JSONP
plwlippuCallback :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersUndelete (Maybe Text)
plwlippuCallback
  = lens _plwlippuCallback
      (\ s a -> s{_plwlippuCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkLoadIdentityPoolsProvidersUndelete
         where
        type Rs
               ProjectsLocationsWorkLoadIdentityPoolsProvidersUndelete
             = Operation
        type Scopes
               ProjectsLocationsWorkLoadIdentityPoolsProvidersUndelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkLoadIdentityPoolsProvidersUndelete'{..}
          = go _plwlippuName _plwlippuXgafv
              _plwlippuUploadProtocol
              _plwlippuAccessToken
              _plwlippuUploadType
              _plwlippuCallback
              (Just AltJSON)
              _plwlippuPayload
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkLoadIdentityPoolsProvidersUndeleteResource)
                      mempty
