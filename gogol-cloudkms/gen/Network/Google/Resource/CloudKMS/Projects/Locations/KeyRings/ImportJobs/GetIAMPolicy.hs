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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.importJobs.getIamPolicy@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsImportJobsGetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsKeyRingsImportJobsGetIAMPolicy
    , ProjectsLocationsKeyRingsImportJobsGetIAMPolicy

    -- * Request Lenses
    , plkrijgipXgafv
    , plkrijgipUploadProtocol
    , plkrijgipAccessToken
    , plkrijgipUploadType
    , plkrijgipResource
    , plkrijgipCallback
    ) where

import           Network.Google.CloudKMS.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.importJobs.getIamPolicy@ method which the
-- 'ProjectsLocationsKeyRingsImportJobsGetIAMPolicy' request conforms to.
type ProjectsLocationsKeyRingsImportJobsGetIAMPolicyResource
     =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ 'projectsLocationsKeyRingsImportJobsGetIAMPolicy' smart constructor.
data ProjectsLocationsKeyRingsImportJobsGetIAMPolicy =
  ProjectsLocationsKeyRingsImportJobsGetIAMPolicy'
    { _plkrijgipXgafv          :: !(Maybe Xgafv)
    , _plkrijgipUploadProtocol :: !(Maybe Text)
    , _plkrijgipAccessToken    :: !(Maybe Text)
    , _plkrijgipUploadType     :: !(Maybe Text)
    , _plkrijgipResource       :: !Text
    , _plkrijgipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsImportJobsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrijgipXgafv'
--
-- * 'plkrijgipUploadProtocol'
--
-- * 'plkrijgipAccessToken'
--
-- * 'plkrijgipUploadType'
--
-- * 'plkrijgipResource'
--
-- * 'plkrijgipCallback'
projectsLocationsKeyRingsImportJobsGetIAMPolicy
    :: Text -- ^ 'plkrijgipResource'
    -> ProjectsLocationsKeyRingsImportJobsGetIAMPolicy
projectsLocationsKeyRingsImportJobsGetIAMPolicy pPlkrijgipResource_ =
  ProjectsLocationsKeyRingsImportJobsGetIAMPolicy'
    { _plkrijgipXgafv = Nothing
    , _plkrijgipUploadProtocol = Nothing
    , _plkrijgipAccessToken = Nothing
    , _plkrijgipUploadType = Nothing
    , _plkrijgipResource = pPlkrijgipResource_
    , _plkrijgipCallback = Nothing
    }


-- | V1 error format.
plkrijgipXgafv :: Lens' ProjectsLocationsKeyRingsImportJobsGetIAMPolicy (Maybe Xgafv)
plkrijgipXgafv
  = lens _plkrijgipXgafv
      (\ s a -> s{_plkrijgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrijgipUploadProtocol :: Lens' ProjectsLocationsKeyRingsImportJobsGetIAMPolicy (Maybe Text)
plkrijgipUploadProtocol
  = lens _plkrijgipUploadProtocol
      (\ s a -> s{_plkrijgipUploadProtocol = a})

-- | OAuth access token.
plkrijgipAccessToken :: Lens' ProjectsLocationsKeyRingsImportJobsGetIAMPolicy (Maybe Text)
plkrijgipAccessToken
  = lens _plkrijgipAccessToken
      (\ s a -> s{_plkrijgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrijgipUploadType :: Lens' ProjectsLocationsKeyRingsImportJobsGetIAMPolicy (Maybe Text)
plkrijgipUploadType
  = lens _plkrijgipUploadType
      (\ s a -> s{_plkrijgipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
plkrijgipResource :: Lens' ProjectsLocationsKeyRingsImportJobsGetIAMPolicy Text
plkrijgipResource
  = lens _plkrijgipResource
      (\ s a -> s{_plkrijgipResource = a})

-- | JSONP
plkrijgipCallback :: Lens' ProjectsLocationsKeyRingsImportJobsGetIAMPolicy (Maybe Text)
plkrijgipCallback
  = lens _plkrijgipCallback
      (\ s a -> s{_plkrijgipCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsImportJobsGetIAMPolicy
         where
        type Rs
               ProjectsLocationsKeyRingsImportJobsGetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsKeyRingsImportJobsGetIAMPolicy
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsImportJobsGetIAMPolicy'{..}
          = go _plkrijgipResource _plkrijgipXgafv
              _plkrijgipUploadProtocol
              _plkrijgipAccessToken
              _plkrijgipUploadType
              _plkrijgipCallback
              (Just AltJSON)
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsImportJobsGetIAMPolicyResource)
                      mempty
