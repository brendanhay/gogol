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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.Operations.TestIAMPermissions
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error.Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.operations.testIamPermissions@.
module Network.Google.Resource.Dataproc.Projects.Regions.Operations.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsRegionsOperationsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsRegionsOperationsTestIAMPermissions
    , ProjectsRegionsOperationsTestIAMPermissions

    -- * Request Lenses
    , protipXgafv
    , protipUploadProtocol
    , protipAccessToken
    , protipUploadType
    , protipPayload
    , protipResource
    , protipCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.operations.testIamPermissions@ method which the
-- 'ProjectsRegionsOperationsTestIAMPermissions' request conforms to.
type ProjectsRegionsOperationsTestIAMPermissionsResource
     =
     "v1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TestIAMPermissionsRequest :>
                       Post '[JSON] TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error.Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ 'projectsRegionsOperationsTestIAMPermissions' smart constructor.
data ProjectsRegionsOperationsTestIAMPermissions =
  ProjectsRegionsOperationsTestIAMPermissions'
    { _protipXgafv :: !(Maybe Xgafv)
    , _protipUploadProtocol :: !(Maybe Text)
    , _protipAccessToken :: !(Maybe Text)
    , _protipUploadType :: !(Maybe Text)
    , _protipPayload :: !TestIAMPermissionsRequest
    , _protipResource :: !Text
    , _protipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsOperationsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'protipXgafv'
--
-- * 'protipUploadProtocol'
--
-- * 'protipAccessToken'
--
-- * 'protipUploadType'
--
-- * 'protipPayload'
--
-- * 'protipResource'
--
-- * 'protipCallback'
projectsRegionsOperationsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'protipPayload'
    -> Text -- ^ 'protipResource'
    -> ProjectsRegionsOperationsTestIAMPermissions
projectsRegionsOperationsTestIAMPermissions pProtipPayload_ pProtipResource_ =
  ProjectsRegionsOperationsTestIAMPermissions'
    { _protipXgafv = Nothing
    , _protipUploadProtocol = Nothing
    , _protipAccessToken = Nothing
    , _protipUploadType = Nothing
    , _protipPayload = pProtipPayload_
    , _protipResource = pProtipResource_
    , _protipCallback = Nothing
    }


-- | V1 error format.
protipXgafv :: Lens' ProjectsRegionsOperationsTestIAMPermissions (Maybe Xgafv)
protipXgafv
  = lens _protipXgafv (\ s a -> s{_protipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
protipUploadProtocol :: Lens' ProjectsRegionsOperationsTestIAMPermissions (Maybe Text)
protipUploadProtocol
  = lens _protipUploadProtocol
      (\ s a -> s{_protipUploadProtocol = a})

-- | OAuth access token.
protipAccessToken :: Lens' ProjectsRegionsOperationsTestIAMPermissions (Maybe Text)
protipAccessToken
  = lens _protipAccessToken
      (\ s a -> s{_protipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
protipUploadType :: Lens' ProjectsRegionsOperationsTestIAMPermissions (Maybe Text)
protipUploadType
  = lens _protipUploadType
      (\ s a -> s{_protipUploadType = a})

-- | Multipart request metadata.
protipPayload :: Lens' ProjectsRegionsOperationsTestIAMPermissions TestIAMPermissionsRequest
protipPayload
  = lens _protipPayload
      (\ s a -> s{_protipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
protipResource :: Lens' ProjectsRegionsOperationsTestIAMPermissions Text
protipResource
  = lens _protipResource
      (\ s a -> s{_protipResource = a})

-- | JSONP
protipCallback :: Lens' ProjectsRegionsOperationsTestIAMPermissions (Maybe Text)
protipCallback
  = lens _protipCallback
      (\ s a -> s{_protipCallback = a})

instance GoogleRequest
           ProjectsRegionsOperationsTestIAMPermissions
         where
        type Rs ProjectsRegionsOperationsTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes
               ProjectsRegionsOperationsTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsOperationsTestIAMPermissions'{..}
          = go _protipResource _protipXgafv
              _protipUploadProtocol
              _protipAccessToken
              _protipUploadType
              _protipCallback
              (Just AltJSON)
              _protipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsRegionsOperationsTestIAMPermissionsResource)
                      mempty
