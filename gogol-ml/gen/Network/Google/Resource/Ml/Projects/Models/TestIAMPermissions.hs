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
-- Module      : Network.Google.Resource.Ml.Projects.Models.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error. Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ <https://cloud.google.com/ml/ Cloud Machine Learning Engine Reference> for @ml.projects.models.testIamPermissions@.
module Network.Google.Resource.Ml.Projects.Models.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsModelsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsModelsTestIAMPermissions
    , ProjectsModelsTestIAMPermissions

    -- * Request Lenses
    , pmtipXgafv
    , pmtipUploadProtocol
    , pmtipAccessToken
    , pmtipUploadType
    , pmtipPayload
    , pmtipResource
    , pmtipCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.models.testIamPermissions@ method which the
-- 'ProjectsModelsTestIAMPermissions' request conforms to.
type ProjectsModelsTestIAMPermissionsResource =
     "v1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleIAMV1__TestIAMPermissionsRequest
                       :>
                       Post '[JSON] GoogleIAMV1__TestIAMPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error. Note: This operation is designed to be used for
-- building permission-aware UIs and command-line tools, not for
-- authorization checking. This operation may \"fail open\" without
-- warning.
--
-- /See:/ 'projectsModelsTestIAMPermissions' smart constructor.
data ProjectsModelsTestIAMPermissions =
  ProjectsModelsTestIAMPermissions'
    { _pmtipXgafv          :: !(Maybe Xgafv)
    , _pmtipUploadProtocol :: !(Maybe Text)
    , _pmtipAccessToken    :: !(Maybe Text)
    , _pmtipUploadType     :: !(Maybe Text)
    , _pmtipPayload        :: !GoogleIAMV1__TestIAMPermissionsRequest
    , _pmtipResource       :: !Text
    , _pmtipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsModelsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmtipXgafv'
--
-- * 'pmtipUploadProtocol'
--
-- * 'pmtipAccessToken'
--
-- * 'pmtipUploadType'
--
-- * 'pmtipPayload'
--
-- * 'pmtipResource'
--
-- * 'pmtipCallback'
projectsModelsTestIAMPermissions
    :: GoogleIAMV1__TestIAMPermissionsRequest -- ^ 'pmtipPayload'
    -> Text -- ^ 'pmtipResource'
    -> ProjectsModelsTestIAMPermissions
projectsModelsTestIAMPermissions pPmtipPayload_ pPmtipResource_ =
  ProjectsModelsTestIAMPermissions'
    { _pmtipXgafv = Nothing
    , _pmtipUploadProtocol = Nothing
    , _pmtipAccessToken = Nothing
    , _pmtipUploadType = Nothing
    , _pmtipPayload = pPmtipPayload_
    , _pmtipResource = pPmtipResource_
    , _pmtipCallback = Nothing
    }

-- | V1 error format.
pmtipXgafv :: Lens' ProjectsModelsTestIAMPermissions (Maybe Xgafv)
pmtipXgafv
  = lens _pmtipXgafv (\ s a -> s{_pmtipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmtipUploadProtocol :: Lens' ProjectsModelsTestIAMPermissions (Maybe Text)
pmtipUploadProtocol
  = lens _pmtipUploadProtocol
      (\ s a -> s{_pmtipUploadProtocol = a})

-- | OAuth access token.
pmtipAccessToken :: Lens' ProjectsModelsTestIAMPermissions (Maybe Text)
pmtipAccessToken
  = lens _pmtipAccessToken
      (\ s a -> s{_pmtipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmtipUploadType :: Lens' ProjectsModelsTestIAMPermissions (Maybe Text)
pmtipUploadType
  = lens _pmtipUploadType
      (\ s a -> s{_pmtipUploadType = a})

-- | Multipart request metadata.
pmtipPayload :: Lens' ProjectsModelsTestIAMPermissions GoogleIAMV1__TestIAMPermissionsRequest
pmtipPayload
  = lens _pmtipPayload (\ s a -> s{_pmtipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pmtipResource :: Lens' ProjectsModelsTestIAMPermissions Text
pmtipResource
  = lens _pmtipResource
      (\ s a -> s{_pmtipResource = a})

-- | JSONP
pmtipCallback :: Lens' ProjectsModelsTestIAMPermissions (Maybe Text)
pmtipCallback
  = lens _pmtipCallback
      (\ s a -> s{_pmtipCallback = a})

instance GoogleRequest
           ProjectsModelsTestIAMPermissions
         where
        type Rs ProjectsModelsTestIAMPermissions =
             GoogleIAMV1__TestIAMPermissionsResponse
        type Scopes ProjectsModelsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsModelsTestIAMPermissions'{..}
          = go _pmtipResource _pmtipXgafv _pmtipUploadProtocol
              _pmtipAccessToken
              _pmtipUploadType
              _pmtipCallback
              (Just AltJSON)
              _pmtipPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsModelsTestIAMPermissionsResource)
                      mempty
