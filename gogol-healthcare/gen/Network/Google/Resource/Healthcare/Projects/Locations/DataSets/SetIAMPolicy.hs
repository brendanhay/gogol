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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.SetIAMPolicy
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
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.setIamPolicy@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.SetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsDataSetsSetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsDataSetsSetIAMPolicy
    , ProjectsLocationsDataSetsSetIAMPolicy

    -- * Request Lenses
    , pldssipXgafv
    , pldssipUploadProtocol
    , pldssipAccessToken
    , pldssipUploadType
    , pldssipPayload
    , pldssipResource
    , pldssipCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.setIamPolicy@ method which the
-- 'ProjectsLocationsDataSetsSetIAMPolicy' request conforms to.
type ProjectsLocationsDataSetsSetIAMPolicyResource =
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
-- /See:/ 'projectsLocationsDataSetsSetIAMPolicy' smart constructor.
data ProjectsLocationsDataSetsSetIAMPolicy =
  ProjectsLocationsDataSetsSetIAMPolicy'
    { _pldssipXgafv :: !(Maybe Xgafv)
    , _pldssipUploadProtocol :: !(Maybe Text)
    , _pldssipAccessToken :: !(Maybe Text)
    , _pldssipUploadType :: !(Maybe Text)
    , _pldssipPayload :: !SetIAMPolicyRequest
    , _pldssipResource :: !Text
    , _pldssipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldssipXgafv'
--
-- * 'pldssipUploadProtocol'
--
-- * 'pldssipAccessToken'
--
-- * 'pldssipUploadType'
--
-- * 'pldssipPayload'
--
-- * 'pldssipResource'
--
-- * 'pldssipCallback'
projectsLocationsDataSetsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'pldssipPayload'
    -> Text -- ^ 'pldssipResource'
    -> ProjectsLocationsDataSetsSetIAMPolicy
projectsLocationsDataSetsSetIAMPolicy pPldssipPayload_ pPldssipResource_ =
  ProjectsLocationsDataSetsSetIAMPolicy'
    { _pldssipXgafv = Nothing
    , _pldssipUploadProtocol = Nothing
    , _pldssipAccessToken = Nothing
    , _pldssipUploadType = Nothing
    , _pldssipPayload = pPldssipPayload_
    , _pldssipResource = pPldssipResource_
    , _pldssipCallback = Nothing
    }


-- | V1 error format.
pldssipXgafv :: Lens' ProjectsLocationsDataSetsSetIAMPolicy (Maybe Xgafv)
pldssipXgafv
  = lens _pldssipXgafv (\ s a -> s{_pldssipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldssipUploadProtocol :: Lens' ProjectsLocationsDataSetsSetIAMPolicy (Maybe Text)
pldssipUploadProtocol
  = lens _pldssipUploadProtocol
      (\ s a -> s{_pldssipUploadProtocol = a})

-- | OAuth access token.
pldssipAccessToken :: Lens' ProjectsLocationsDataSetsSetIAMPolicy (Maybe Text)
pldssipAccessToken
  = lens _pldssipAccessToken
      (\ s a -> s{_pldssipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldssipUploadType :: Lens' ProjectsLocationsDataSetsSetIAMPolicy (Maybe Text)
pldssipUploadType
  = lens _pldssipUploadType
      (\ s a -> s{_pldssipUploadType = a})

-- | Multipart request metadata.
pldssipPayload :: Lens' ProjectsLocationsDataSetsSetIAMPolicy SetIAMPolicyRequest
pldssipPayload
  = lens _pldssipPayload
      (\ s a -> s{_pldssipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
pldssipResource :: Lens' ProjectsLocationsDataSetsSetIAMPolicy Text
pldssipResource
  = lens _pldssipResource
      (\ s a -> s{_pldssipResource = a})

-- | JSONP
pldssipCallback :: Lens' ProjectsLocationsDataSetsSetIAMPolicy (Maybe Text)
pldssipCallback
  = lens _pldssipCallback
      (\ s a -> s{_pldssipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsSetIAMPolicy
         where
        type Rs ProjectsLocationsDataSetsSetIAMPolicy =
             Policy
        type Scopes ProjectsLocationsDataSetsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsSetIAMPolicy'{..}
          = go _pldssipResource _pldssipXgafv
              _pldssipUploadProtocol
              _pldssipAccessToken
              _pldssipUploadType
              _pldssipCallback
              (Just AltJSON)
              _pldssipPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDataSetsSetIAMPolicyResource)
                      mempty
