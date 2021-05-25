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
-- Module      : Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new WorkloadIdentityPoolProvider in a WorkloadIdentityPool.
-- You cannot reuse the name of a deleted provider until 30 days after
-- deletion.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.providers.create@.
module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Create
    (
    -- * REST Resource
      ProjectsLocationsWorkLoadIdentityPoolsProvidersCreateResource

    -- * Creating a Request
    , projectsLocationsWorkLoadIdentityPoolsProvidersCreate
    , ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate

    -- * Request Lenses
    , plwlippcParent
    , plwlippcXgafv
    , plwlippcUploadProtocol
    , plwlippcAccessToken
    , plwlippcUploadType
    , plwlippcPayload
    , plwlippcWorkLoadIdentityPoolProviderId
    , plwlippcCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.providers.create@ method which the
-- 'ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate' request conforms to.
type ProjectsLocationsWorkLoadIdentityPoolsProvidersCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "providers" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "workloadIdentityPoolProviderId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] WorkLoadIdentityPoolProvider :>
                           Post '[JSON] Operation

-- | Creates a new WorkloadIdentityPoolProvider in a WorkloadIdentityPool.
-- You cannot reuse the name of a deleted provider until 30 days after
-- deletion.
--
-- /See:/ 'projectsLocationsWorkLoadIdentityPoolsProvidersCreate' smart constructor.
data ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate =
  ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate'
    { _plwlippcParent :: !Text
    , _plwlippcXgafv :: !(Maybe Xgafv)
    , _plwlippcUploadProtocol :: !(Maybe Text)
    , _plwlippcAccessToken :: !(Maybe Text)
    , _plwlippcUploadType :: !(Maybe Text)
    , _plwlippcPayload :: !WorkLoadIdentityPoolProvider
    , _plwlippcWorkLoadIdentityPoolProviderId :: !(Maybe Text)
    , _plwlippcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwlippcParent'
--
-- * 'plwlippcXgafv'
--
-- * 'plwlippcUploadProtocol'
--
-- * 'plwlippcAccessToken'
--
-- * 'plwlippcUploadType'
--
-- * 'plwlippcPayload'
--
-- * 'plwlippcWorkLoadIdentityPoolProviderId'
--
-- * 'plwlippcCallback'
projectsLocationsWorkLoadIdentityPoolsProvidersCreate
    :: Text -- ^ 'plwlippcParent'
    -> WorkLoadIdentityPoolProvider -- ^ 'plwlippcPayload'
    -> ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate
projectsLocationsWorkLoadIdentityPoolsProvidersCreate pPlwlippcParent_ pPlwlippcPayload_ =
  ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate'
    { _plwlippcParent = pPlwlippcParent_
    , _plwlippcXgafv = Nothing
    , _plwlippcUploadProtocol = Nothing
    , _plwlippcAccessToken = Nothing
    , _plwlippcUploadType = Nothing
    , _plwlippcPayload = pPlwlippcPayload_
    , _plwlippcWorkLoadIdentityPoolProviderId = Nothing
    , _plwlippcCallback = Nothing
    }


-- | Required. The pool to create this provider in.
plwlippcParent :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate Text
plwlippcParent
  = lens _plwlippcParent
      (\ s a -> s{_plwlippcParent = a})

-- | V1 error format.
plwlippcXgafv :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate (Maybe Xgafv)
plwlippcXgafv
  = lens _plwlippcXgafv
      (\ s a -> s{_plwlippcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwlippcUploadProtocol :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate (Maybe Text)
plwlippcUploadProtocol
  = lens _plwlippcUploadProtocol
      (\ s a -> s{_plwlippcUploadProtocol = a})

-- | OAuth access token.
plwlippcAccessToken :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate (Maybe Text)
plwlippcAccessToken
  = lens _plwlippcAccessToken
      (\ s a -> s{_plwlippcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwlippcUploadType :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate (Maybe Text)
plwlippcUploadType
  = lens _plwlippcUploadType
      (\ s a -> s{_plwlippcUploadType = a})

-- | Multipart request metadata.
plwlippcPayload :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate WorkLoadIdentityPoolProvider
plwlippcPayload
  = lens _plwlippcPayload
      (\ s a -> s{_plwlippcPayload = a})

-- | Required. The ID for the provider, which becomes the final component of
-- the resource name. This value must be 4-32 characters, and may contain
-- the characters [a-z0-9-]. The prefix \`gcp-\` is reserved for use by
-- Google, and may not be specified.
plwlippcWorkLoadIdentityPoolProviderId :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate (Maybe Text)
plwlippcWorkLoadIdentityPoolProviderId
  = lens _plwlippcWorkLoadIdentityPoolProviderId
      (\ s a ->
         s{_plwlippcWorkLoadIdentityPoolProviderId = a})

-- | JSONP
plwlippcCallback :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate (Maybe Text)
plwlippcCallback
  = lens _plwlippcCallback
      (\ s a -> s{_plwlippcCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate
         where
        type Rs
               ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate
             = Operation
        type Scopes
               ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkLoadIdentityPoolsProvidersCreate'{..}
          = go _plwlippcParent _plwlippcXgafv
              _plwlippcUploadProtocol
              _plwlippcAccessToken
              _plwlippcUploadType
              _plwlippcWorkLoadIdentityPoolProviderId
              _plwlippcCallback
              (Just AltJSON)
              _plwlippcPayload
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkLoadIdentityPoolsProvidersCreateResource)
                      mempty
