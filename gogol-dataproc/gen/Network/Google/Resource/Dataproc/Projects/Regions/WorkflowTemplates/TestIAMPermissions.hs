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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
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
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.workflowTemplates.testIamPermissions@.
module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsRegionsWorkflowTemplatesTestIAMPermissionsResource

    -- * Creating a Request
    , projectsRegionsWorkflowTemplatesTestIAMPermissions
    , ProjectsRegionsWorkflowTemplatesTestIAMPermissions

    -- * Request Lenses
    , prwttipXgafv
    , prwttipUploadProtocol
    , prwttipAccessToken
    , prwttipUploadType
    , prwttipPayload
    , prwttipResource
    , prwttipCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.workflowTemplates.testIamPermissions@ method which the
-- 'ProjectsRegionsWorkflowTemplatesTestIAMPermissions' request conforms to.
type ProjectsRegionsWorkflowTemplatesTestIAMPermissionsResource
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
-- /See:/ 'projectsRegionsWorkflowTemplatesTestIAMPermissions' smart constructor.
data ProjectsRegionsWorkflowTemplatesTestIAMPermissions =
  ProjectsRegionsWorkflowTemplatesTestIAMPermissions'
    { _prwttipXgafv          :: !(Maybe Xgafv)
    , _prwttipUploadProtocol :: !(Maybe Text)
    , _prwttipAccessToken    :: !(Maybe Text)
    , _prwttipUploadType     :: !(Maybe Text)
    , _prwttipPayload        :: !TestIAMPermissionsRequest
    , _prwttipResource       :: !Text
    , _prwttipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsRegionsWorkflowTemplatesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prwttipXgafv'
--
-- * 'prwttipUploadProtocol'
--
-- * 'prwttipAccessToken'
--
-- * 'prwttipUploadType'
--
-- * 'prwttipPayload'
--
-- * 'prwttipResource'
--
-- * 'prwttipCallback'
projectsRegionsWorkflowTemplatesTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'prwttipPayload'
    -> Text -- ^ 'prwttipResource'
    -> ProjectsRegionsWorkflowTemplatesTestIAMPermissions
projectsRegionsWorkflowTemplatesTestIAMPermissions pPrwttipPayload_ pPrwttipResource_ =
  ProjectsRegionsWorkflowTemplatesTestIAMPermissions'
    { _prwttipXgafv = Nothing
    , _prwttipUploadProtocol = Nothing
    , _prwttipAccessToken = Nothing
    , _prwttipUploadType = Nothing
    , _prwttipPayload = pPrwttipPayload_
    , _prwttipResource = pPrwttipResource_
    , _prwttipCallback = Nothing
    }

-- | V1 error format.
prwttipXgafv :: Lens' ProjectsRegionsWorkflowTemplatesTestIAMPermissions (Maybe Xgafv)
prwttipXgafv
  = lens _prwttipXgafv (\ s a -> s{_prwttipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prwttipUploadProtocol :: Lens' ProjectsRegionsWorkflowTemplatesTestIAMPermissions (Maybe Text)
prwttipUploadProtocol
  = lens _prwttipUploadProtocol
      (\ s a -> s{_prwttipUploadProtocol = a})

-- | OAuth access token.
prwttipAccessToken :: Lens' ProjectsRegionsWorkflowTemplatesTestIAMPermissions (Maybe Text)
prwttipAccessToken
  = lens _prwttipAccessToken
      (\ s a -> s{_prwttipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prwttipUploadType :: Lens' ProjectsRegionsWorkflowTemplatesTestIAMPermissions (Maybe Text)
prwttipUploadType
  = lens _prwttipUploadType
      (\ s a -> s{_prwttipUploadType = a})

-- | Multipart request metadata.
prwttipPayload :: Lens' ProjectsRegionsWorkflowTemplatesTestIAMPermissions TestIAMPermissionsRequest
prwttipPayload
  = lens _prwttipPayload
      (\ s a -> s{_prwttipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
prwttipResource :: Lens' ProjectsRegionsWorkflowTemplatesTestIAMPermissions Text
prwttipResource
  = lens _prwttipResource
      (\ s a -> s{_prwttipResource = a})

-- | JSONP
prwttipCallback :: Lens' ProjectsRegionsWorkflowTemplatesTestIAMPermissions (Maybe Text)
prwttipCallback
  = lens _prwttipCallback
      (\ s a -> s{_prwttipCallback = a})

instance GoogleRequest
           ProjectsRegionsWorkflowTemplatesTestIAMPermissions
         where
        type Rs
               ProjectsRegionsWorkflowTemplatesTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsRegionsWorkflowTemplatesTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsWorkflowTemplatesTestIAMPermissions'{..}
          = go _prwttipResource _prwttipXgafv
              _prwttipUploadProtocol
              _prwttipAccessToken
              _prwttipUploadType
              _prwttipCallback
              (Just AltJSON)
              _prwttipPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsRegionsWorkflowTemplatesTestIAMPermissionsResource)
                      mempty
