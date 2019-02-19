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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.getIamPolicy@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsDataSetsGetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsDataSetsGetIAMPolicy
    , ProjectsLocationsDataSetsGetIAMPolicy

    -- * Request Lenses
    , pldsgipXgafv
    , pldsgipUploadProtocol
    , pldsgipAccessToken
    , pldsgipUploadType
    , pldsgipResource
    , pldsgipCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.getIamPolicy@ method which the
-- 'ProjectsLocationsDataSetsGetIAMPolicy' request conforms to.
type ProjectsLocationsDataSetsGetIAMPolicyResource =
     "v1alpha" :>
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
-- /See:/ 'projectsLocationsDataSetsGetIAMPolicy' smart constructor.
data ProjectsLocationsDataSetsGetIAMPolicy =
  ProjectsLocationsDataSetsGetIAMPolicy'
    { _pldsgipXgafv          :: !(Maybe Xgafv)
    , _pldsgipUploadProtocol :: !(Maybe Text)
    , _pldsgipAccessToken    :: !(Maybe Text)
    , _pldsgipUploadType     :: !(Maybe Text)
    , _pldsgipResource       :: !Text
    , _pldsgipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsgipXgafv'
--
-- * 'pldsgipUploadProtocol'
--
-- * 'pldsgipAccessToken'
--
-- * 'pldsgipUploadType'
--
-- * 'pldsgipResource'
--
-- * 'pldsgipCallback'
projectsLocationsDataSetsGetIAMPolicy
    :: Text -- ^ 'pldsgipResource'
    -> ProjectsLocationsDataSetsGetIAMPolicy
projectsLocationsDataSetsGetIAMPolicy pPldsgipResource_ =
  ProjectsLocationsDataSetsGetIAMPolicy'
    { _pldsgipXgafv = Nothing
    , _pldsgipUploadProtocol = Nothing
    , _pldsgipAccessToken = Nothing
    , _pldsgipUploadType = Nothing
    , _pldsgipResource = pPldsgipResource_
    , _pldsgipCallback = Nothing
    }


-- | V1 error format.
pldsgipXgafv :: Lens' ProjectsLocationsDataSetsGetIAMPolicy (Maybe Xgafv)
pldsgipXgafv
  = lens _pldsgipXgafv (\ s a -> s{_pldsgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsgipUploadProtocol :: Lens' ProjectsLocationsDataSetsGetIAMPolicy (Maybe Text)
pldsgipUploadProtocol
  = lens _pldsgipUploadProtocol
      (\ s a -> s{_pldsgipUploadProtocol = a})

-- | OAuth access token.
pldsgipAccessToken :: Lens' ProjectsLocationsDataSetsGetIAMPolicy (Maybe Text)
pldsgipAccessToken
  = lens _pldsgipAccessToken
      (\ s a -> s{_pldsgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsgipUploadType :: Lens' ProjectsLocationsDataSetsGetIAMPolicy (Maybe Text)
pldsgipUploadType
  = lens _pldsgipUploadType
      (\ s a -> s{_pldsgipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
pldsgipResource :: Lens' ProjectsLocationsDataSetsGetIAMPolicy Text
pldsgipResource
  = lens _pldsgipResource
      (\ s a -> s{_pldsgipResource = a})

-- | JSONP
pldsgipCallback :: Lens' ProjectsLocationsDataSetsGetIAMPolicy (Maybe Text)
pldsgipCallback
  = lens _pldsgipCallback
      (\ s a -> s{_pldsgipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsGetIAMPolicy
         where
        type Rs ProjectsLocationsDataSetsGetIAMPolicy =
             Policy
        type Scopes ProjectsLocationsDataSetsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsGetIAMPolicy'{..}
          = go _pldsgipResource _pldsgipXgafv
              _pldsgipUploadProtocol
              _pldsgipAccessToken
              _pldsgipUploadType
              _pldsgipCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDataSetsGetIAMPolicyResource)
                      mempty
