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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy. Can return \`NOT_FOUND\`, \`INVALID_ARGUMENT\`, and
-- \`PERMISSION_DENIED\` errors.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.importJobs.setIamPolicy@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsImportJobsSetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsKeyRingsImportJobsSetIAMPolicy
    , ProjectsLocationsKeyRingsImportJobsSetIAMPolicy

    -- * Request Lenses
    , plkrijsipXgafv
    , plkrijsipUploadProtocol
    , plkrijsipAccessToken
    , plkrijsipUploadType
    , plkrijsipPayload
    , plkrijsipResource
    , plkrijsipCallback
    ) where

import Network.Google.CloudKMS.Types
import Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.importJobs.setIamPolicy@ method which the
-- 'ProjectsLocationsKeyRingsImportJobsSetIAMPolicy' request conforms to.
type ProjectsLocationsKeyRingsImportJobsSetIAMPolicyResource
     =
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

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy. Can return \`NOT_FOUND\`, \`INVALID_ARGUMENT\`, and
-- \`PERMISSION_DENIED\` errors.
--
-- /See:/ 'projectsLocationsKeyRingsImportJobsSetIAMPolicy' smart constructor.
data ProjectsLocationsKeyRingsImportJobsSetIAMPolicy =
  ProjectsLocationsKeyRingsImportJobsSetIAMPolicy'
    { _plkrijsipXgafv :: !(Maybe Xgafv)
    , _plkrijsipUploadProtocol :: !(Maybe Text)
    , _plkrijsipAccessToken :: !(Maybe Text)
    , _plkrijsipUploadType :: !(Maybe Text)
    , _plkrijsipPayload :: !SetIAMPolicyRequest
    , _plkrijsipResource :: !Text
    , _plkrijsipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsImportJobsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrijsipXgafv'
--
-- * 'plkrijsipUploadProtocol'
--
-- * 'plkrijsipAccessToken'
--
-- * 'plkrijsipUploadType'
--
-- * 'plkrijsipPayload'
--
-- * 'plkrijsipResource'
--
-- * 'plkrijsipCallback'
projectsLocationsKeyRingsImportJobsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'plkrijsipPayload'
    -> Text -- ^ 'plkrijsipResource'
    -> ProjectsLocationsKeyRingsImportJobsSetIAMPolicy
projectsLocationsKeyRingsImportJobsSetIAMPolicy pPlkrijsipPayload_ pPlkrijsipResource_ =
  ProjectsLocationsKeyRingsImportJobsSetIAMPolicy'
    { _plkrijsipXgafv = Nothing
    , _plkrijsipUploadProtocol = Nothing
    , _plkrijsipAccessToken = Nothing
    , _plkrijsipUploadType = Nothing
    , _plkrijsipPayload = pPlkrijsipPayload_
    , _plkrijsipResource = pPlkrijsipResource_
    , _plkrijsipCallback = Nothing
    }


-- | V1 error format.
plkrijsipXgafv :: Lens' ProjectsLocationsKeyRingsImportJobsSetIAMPolicy (Maybe Xgafv)
plkrijsipXgafv
  = lens _plkrijsipXgafv
      (\ s a -> s{_plkrijsipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrijsipUploadProtocol :: Lens' ProjectsLocationsKeyRingsImportJobsSetIAMPolicy (Maybe Text)
plkrijsipUploadProtocol
  = lens _plkrijsipUploadProtocol
      (\ s a -> s{_plkrijsipUploadProtocol = a})

-- | OAuth access token.
plkrijsipAccessToken :: Lens' ProjectsLocationsKeyRingsImportJobsSetIAMPolicy (Maybe Text)
plkrijsipAccessToken
  = lens _plkrijsipAccessToken
      (\ s a -> s{_plkrijsipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrijsipUploadType :: Lens' ProjectsLocationsKeyRingsImportJobsSetIAMPolicy (Maybe Text)
plkrijsipUploadType
  = lens _plkrijsipUploadType
      (\ s a -> s{_plkrijsipUploadType = a})

-- | Multipart request metadata.
plkrijsipPayload :: Lens' ProjectsLocationsKeyRingsImportJobsSetIAMPolicy SetIAMPolicyRequest
plkrijsipPayload
  = lens _plkrijsipPayload
      (\ s a -> s{_plkrijsipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
plkrijsipResource :: Lens' ProjectsLocationsKeyRingsImportJobsSetIAMPolicy Text
plkrijsipResource
  = lens _plkrijsipResource
      (\ s a -> s{_plkrijsipResource = a})

-- | JSONP
plkrijsipCallback :: Lens' ProjectsLocationsKeyRingsImportJobsSetIAMPolicy (Maybe Text)
plkrijsipCallback
  = lens _plkrijsipCallback
      (\ s a -> s{_plkrijsipCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsImportJobsSetIAMPolicy
         where
        type Rs
               ProjectsLocationsKeyRingsImportJobsSetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsKeyRingsImportJobsSetIAMPolicy
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsImportJobsSetIAMPolicy'{..}
          = go _plkrijsipResource _plkrijsipXgafv
              _plkrijsipUploadProtocol
              _plkrijsipAccessToken
              _plkrijsipUploadType
              _plkrijsipCallback
              (Just AltJSON)
              _plkrijsipPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsImportJobsSetIAMPolicyResource)
                      mempty
