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
-- Module      : Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing WorkloadIdentityPool.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.patch@.
module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Patch
    (
    -- * REST Resource
      ProjectsLocationsWorkLoadIdentityPoolsPatchResource

    -- * Creating a Request
    , projectsLocationsWorkLoadIdentityPoolsPatch
    , ProjectsLocationsWorkLoadIdentityPoolsPatch

    -- * Request Lenses
    , plwlippXgafv
    , plwlippUploadProtocol
    , plwlippUpdateMask
    , plwlippAccessToken
    , plwlippUploadType
    , plwlippPayload
    , plwlippName
    , plwlippCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.patch@ method which the
-- 'ProjectsLocationsWorkLoadIdentityPoolsPatch' request conforms to.
type ProjectsLocationsWorkLoadIdentityPoolsPatchResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] WorkLoadIdentityPool :>
                         Patch '[JSON] Operation

-- | Updates an existing WorkloadIdentityPool.
--
-- /See:/ 'projectsLocationsWorkLoadIdentityPoolsPatch' smart constructor.
data ProjectsLocationsWorkLoadIdentityPoolsPatch =
  ProjectsLocationsWorkLoadIdentityPoolsPatch'
    { _plwlippXgafv :: !(Maybe Xgafv)
    , _plwlippUploadProtocol :: !(Maybe Text)
    , _plwlippUpdateMask :: !(Maybe GFieldMask)
    , _plwlippAccessToken :: !(Maybe Text)
    , _plwlippUploadType :: !(Maybe Text)
    , _plwlippPayload :: !WorkLoadIdentityPool
    , _plwlippName :: !Text
    , _plwlippCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkLoadIdentityPoolsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwlippXgafv'
--
-- * 'plwlippUploadProtocol'
--
-- * 'plwlippUpdateMask'
--
-- * 'plwlippAccessToken'
--
-- * 'plwlippUploadType'
--
-- * 'plwlippPayload'
--
-- * 'plwlippName'
--
-- * 'plwlippCallback'
projectsLocationsWorkLoadIdentityPoolsPatch
    :: WorkLoadIdentityPool -- ^ 'plwlippPayload'
    -> Text -- ^ 'plwlippName'
    -> ProjectsLocationsWorkLoadIdentityPoolsPatch
projectsLocationsWorkLoadIdentityPoolsPatch pPlwlippPayload_ pPlwlippName_ =
  ProjectsLocationsWorkLoadIdentityPoolsPatch'
    { _plwlippXgafv = Nothing
    , _plwlippUploadProtocol = Nothing
    , _plwlippUpdateMask = Nothing
    , _plwlippAccessToken = Nothing
    , _plwlippUploadType = Nothing
    , _plwlippPayload = pPlwlippPayload_
    , _plwlippName = pPlwlippName_
    , _plwlippCallback = Nothing
    }


-- | V1 error format.
plwlippXgafv :: Lens' ProjectsLocationsWorkLoadIdentityPoolsPatch (Maybe Xgafv)
plwlippXgafv
  = lens _plwlippXgafv (\ s a -> s{_plwlippXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwlippUploadProtocol :: Lens' ProjectsLocationsWorkLoadIdentityPoolsPatch (Maybe Text)
plwlippUploadProtocol
  = lens _plwlippUploadProtocol
      (\ s a -> s{_plwlippUploadProtocol = a})

-- | Required. The list of fields update.
plwlippUpdateMask :: Lens' ProjectsLocationsWorkLoadIdentityPoolsPatch (Maybe GFieldMask)
plwlippUpdateMask
  = lens _plwlippUpdateMask
      (\ s a -> s{_plwlippUpdateMask = a})

-- | OAuth access token.
plwlippAccessToken :: Lens' ProjectsLocationsWorkLoadIdentityPoolsPatch (Maybe Text)
plwlippAccessToken
  = lens _plwlippAccessToken
      (\ s a -> s{_plwlippAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwlippUploadType :: Lens' ProjectsLocationsWorkLoadIdentityPoolsPatch (Maybe Text)
plwlippUploadType
  = lens _plwlippUploadType
      (\ s a -> s{_plwlippUploadType = a})

-- | Multipart request metadata.
plwlippPayload :: Lens' ProjectsLocationsWorkLoadIdentityPoolsPatch WorkLoadIdentityPool
plwlippPayload
  = lens _plwlippPayload
      (\ s a -> s{_plwlippPayload = a})

-- | Output only. The resource name of the pool.
plwlippName :: Lens' ProjectsLocationsWorkLoadIdentityPoolsPatch Text
plwlippName
  = lens _plwlippName (\ s a -> s{_plwlippName = a})

-- | JSONP
plwlippCallback :: Lens' ProjectsLocationsWorkLoadIdentityPoolsPatch (Maybe Text)
plwlippCallback
  = lens _plwlippCallback
      (\ s a -> s{_plwlippCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkLoadIdentityPoolsPatch
         where
        type Rs ProjectsLocationsWorkLoadIdentityPoolsPatch =
             Operation
        type Scopes
               ProjectsLocationsWorkLoadIdentityPoolsPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkLoadIdentityPoolsPatch'{..}
          = go _plwlippName _plwlippXgafv
              _plwlippUploadProtocol
              _plwlippUpdateMask
              _plwlippAccessToken
              _plwlippUploadType
              _plwlippCallback
              (Just AltJSON)
              _plwlippPayload
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkLoadIdentityPoolsPatchResource)
                      mempty
