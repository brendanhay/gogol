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
-- Module      : Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new WorkloadIdentityPool. You cannot reuse the name of a
-- deleted pool until 30 days after deletion.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.create@.
module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Create
    (
    -- * REST Resource
      ProjectsLocationsWorkLoadIdentityPoolsCreateResource

    -- * Creating a Request
    , projectsLocationsWorkLoadIdentityPoolsCreate
    , ProjectsLocationsWorkLoadIdentityPoolsCreate

    -- * Request Lenses
    , plwlipcParent
    , plwlipcXgafv
    , plwlipcUploadProtocol
    , plwlipcAccessToken
    , plwlipcWorkLoadIdentityPoolId
    , plwlipcUploadType
    , plwlipcPayload
    , plwlipcCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.create@ method which the
-- 'ProjectsLocationsWorkLoadIdentityPoolsCreate' request conforms to.
type ProjectsLocationsWorkLoadIdentityPoolsCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "workloadIdentityPools" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "workloadIdentityPoolId" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] WorkLoadIdentityPool :>
                           Post '[JSON] Operation

-- | Creates a new WorkloadIdentityPool. You cannot reuse the name of a
-- deleted pool until 30 days after deletion.
--
-- /See:/ 'projectsLocationsWorkLoadIdentityPoolsCreate' smart constructor.
data ProjectsLocationsWorkLoadIdentityPoolsCreate =
  ProjectsLocationsWorkLoadIdentityPoolsCreate'
    { _plwlipcParent :: !Text
    , _plwlipcXgafv :: !(Maybe Xgafv)
    , _plwlipcUploadProtocol :: !(Maybe Text)
    , _plwlipcAccessToken :: !(Maybe Text)
    , _plwlipcWorkLoadIdentityPoolId :: !(Maybe Text)
    , _plwlipcUploadType :: !(Maybe Text)
    , _plwlipcPayload :: !WorkLoadIdentityPool
    , _plwlipcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkLoadIdentityPoolsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwlipcParent'
--
-- * 'plwlipcXgafv'
--
-- * 'plwlipcUploadProtocol'
--
-- * 'plwlipcAccessToken'
--
-- * 'plwlipcWorkLoadIdentityPoolId'
--
-- * 'plwlipcUploadType'
--
-- * 'plwlipcPayload'
--
-- * 'plwlipcCallback'
projectsLocationsWorkLoadIdentityPoolsCreate
    :: Text -- ^ 'plwlipcParent'
    -> WorkLoadIdentityPool -- ^ 'plwlipcPayload'
    -> ProjectsLocationsWorkLoadIdentityPoolsCreate
projectsLocationsWorkLoadIdentityPoolsCreate pPlwlipcParent_ pPlwlipcPayload_ =
  ProjectsLocationsWorkLoadIdentityPoolsCreate'
    { _plwlipcParent = pPlwlipcParent_
    , _plwlipcXgafv = Nothing
    , _plwlipcUploadProtocol = Nothing
    , _plwlipcAccessToken = Nothing
    , _plwlipcWorkLoadIdentityPoolId = Nothing
    , _plwlipcUploadType = Nothing
    , _plwlipcPayload = pPlwlipcPayload_
    , _plwlipcCallback = Nothing
    }


-- | Required. The parent resource to create the pool in. The only supported
-- location is \`global\`.
plwlipcParent :: Lens' ProjectsLocationsWorkLoadIdentityPoolsCreate Text
plwlipcParent
  = lens _plwlipcParent
      (\ s a -> s{_plwlipcParent = a})

-- | V1 error format.
plwlipcXgafv :: Lens' ProjectsLocationsWorkLoadIdentityPoolsCreate (Maybe Xgafv)
plwlipcXgafv
  = lens _plwlipcXgafv (\ s a -> s{_plwlipcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwlipcUploadProtocol :: Lens' ProjectsLocationsWorkLoadIdentityPoolsCreate (Maybe Text)
plwlipcUploadProtocol
  = lens _plwlipcUploadProtocol
      (\ s a -> s{_plwlipcUploadProtocol = a})

-- | OAuth access token.
plwlipcAccessToken :: Lens' ProjectsLocationsWorkLoadIdentityPoolsCreate (Maybe Text)
plwlipcAccessToken
  = lens _plwlipcAccessToken
      (\ s a -> s{_plwlipcAccessToken = a})

-- | Required. The ID to use for the pool, which becomes the final component
-- of the resource name. This value should be 4-32 characters, and may
-- contain the characters [a-z0-9-]. The prefix \`gcp-\` is reserved for
-- use by Google, and may not be specified.
plwlipcWorkLoadIdentityPoolId :: Lens' ProjectsLocationsWorkLoadIdentityPoolsCreate (Maybe Text)
plwlipcWorkLoadIdentityPoolId
  = lens _plwlipcWorkLoadIdentityPoolId
      (\ s a -> s{_plwlipcWorkLoadIdentityPoolId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwlipcUploadType :: Lens' ProjectsLocationsWorkLoadIdentityPoolsCreate (Maybe Text)
plwlipcUploadType
  = lens _plwlipcUploadType
      (\ s a -> s{_plwlipcUploadType = a})

-- | Multipart request metadata.
plwlipcPayload :: Lens' ProjectsLocationsWorkLoadIdentityPoolsCreate WorkLoadIdentityPool
plwlipcPayload
  = lens _plwlipcPayload
      (\ s a -> s{_plwlipcPayload = a})

-- | JSONP
plwlipcCallback :: Lens' ProjectsLocationsWorkLoadIdentityPoolsCreate (Maybe Text)
plwlipcCallback
  = lens _plwlipcCallback
      (\ s a -> s{_plwlipcCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkLoadIdentityPoolsCreate
         where
        type Rs ProjectsLocationsWorkLoadIdentityPoolsCreate
             = Operation
        type Scopes
               ProjectsLocationsWorkLoadIdentityPoolsCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkLoadIdentityPoolsCreate'{..}
          = go _plwlipcParent _plwlipcXgafv
              _plwlipcUploadProtocol
              _plwlipcAccessToken
              _plwlipcWorkLoadIdentityPoolId
              _plwlipcUploadType
              _plwlipcCallback
              (Just AltJSON)
              _plwlipcPayload
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkLoadIdentityPoolsCreateResource)
                      mempty
