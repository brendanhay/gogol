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
-- Module      : Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests the specified permissions against the IAM access control policy
-- for a function. If the function does not exist, this will return an
-- empty set of permissions, not a NOT_FOUND error.
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.testIamPermissions@.
module Network.Google.Resource.CloudFunctions.Projects.Locations.Functions.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsLocationsFunctionsTestIAMPermissionsResource

    -- * Creating a Request
    , projectsLocationsFunctionsTestIAMPermissions
    , ProjectsLocationsFunctionsTestIAMPermissions

    -- * Request Lenses
    , plftipXgafv
    , plftipUploadProtocol
    , plftipAccessToken
    , plftipUploadType
    , plftipPayload
    , plftipResource
    , plftipCallback
    ) where

import           Network.Google.CloudFunctions.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudfunctions.projects.locations.functions.testIamPermissions@ method which the
-- 'ProjectsLocationsFunctionsTestIAMPermissions' request conforms to.
type ProjectsLocationsFunctionsTestIAMPermissionsResource
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

-- | Tests the specified permissions against the IAM access control policy
-- for a function. If the function does not exist, this will return an
-- empty set of permissions, not a NOT_FOUND error.
--
-- /See:/ 'projectsLocationsFunctionsTestIAMPermissions' smart constructor.
data ProjectsLocationsFunctionsTestIAMPermissions =
  ProjectsLocationsFunctionsTestIAMPermissions'
    { _plftipXgafv          :: !(Maybe Xgafv)
    , _plftipUploadProtocol :: !(Maybe Text)
    , _plftipAccessToken    :: !(Maybe Text)
    , _plftipUploadType     :: !(Maybe Text)
    , _plftipPayload        :: !TestIAMPermissionsRequest
    , _plftipResource       :: !Text
    , _plftipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsFunctionsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plftipXgafv'
--
-- * 'plftipUploadProtocol'
--
-- * 'plftipAccessToken'
--
-- * 'plftipUploadType'
--
-- * 'plftipPayload'
--
-- * 'plftipResource'
--
-- * 'plftipCallback'
projectsLocationsFunctionsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'plftipPayload'
    -> Text -- ^ 'plftipResource'
    -> ProjectsLocationsFunctionsTestIAMPermissions
projectsLocationsFunctionsTestIAMPermissions pPlftipPayload_ pPlftipResource_ =
  ProjectsLocationsFunctionsTestIAMPermissions'
    { _plftipXgafv = Nothing
    , _plftipUploadProtocol = Nothing
    , _plftipAccessToken = Nothing
    , _plftipUploadType = Nothing
    , _plftipPayload = pPlftipPayload_
    , _plftipResource = pPlftipResource_
    , _plftipCallback = Nothing
    }


-- | V1 error format.
plftipXgafv :: Lens' ProjectsLocationsFunctionsTestIAMPermissions (Maybe Xgafv)
plftipXgafv
  = lens _plftipXgafv (\ s a -> s{_plftipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plftipUploadProtocol :: Lens' ProjectsLocationsFunctionsTestIAMPermissions (Maybe Text)
plftipUploadProtocol
  = lens _plftipUploadProtocol
      (\ s a -> s{_plftipUploadProtocol = a})

-- | OAuth access token.
plftipAccessToken :: Lens' ProjectsLocationsFunctionsTestIAMPermissions (Maybe Text)
plftipAccessToken
  = lens _plftipAccessToken
      (\ s a -> s{_plftipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plftipUploadType :: Lens' ProjectsLocationsFunctionsTestIAMPermissions (Maybe Text)
plftipUploadType
  = lens _plftipUploadType
      (\ s a -> s{_plftipUploadType = a})

-- | Multipart request metadata.
plftipPayload :: Lens' ProjectsLocationsFunctionsTestIAMPermissions TestIAMPermissionsRequest
plftipPayload
  = lens _plftipPayload
      (\ s a -> s{_plftipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
plftipResource :: Lens' ProjectsLocationsFunctionsTestIAMPermissions Text
plftipResource
  = lens _plftipResource
      (\ s a -> s{_plftipResource = a})

-- | JSONP
plftipCallback :: Lens' ProjectsLocationsFunctionsTestIAMPermissions (Maybe Text)
plftipCallback
  = lens _plftipCallback
      (\ s a -> s{_plftipCallback = a})

instance GoogleRequest
           ProjectsLocationsFunctionsTestIAMPermissions
         where
        type Rs ProjectsLocationsFunctionsTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsLocationsFunctionsTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsFunctionsTestIAMPermissions'{..}
          = go _plftipResource _plftipXgafv
              _plftipUploadProtocol
              _plftipAccessToken
              _plftipUploadType
              _plftipCallback
              (Just AltJSON)
              _plftipPayload
              cloudFunctionsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsFunctionsTestIAMPermissionsResource)
                      mempty
