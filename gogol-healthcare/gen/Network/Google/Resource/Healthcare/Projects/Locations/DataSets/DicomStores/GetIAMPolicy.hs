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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns an empty policy
-- if the resource exists and does not have a policy set.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.getIamPolicy@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresGetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresGetIAMPolicy
    , ProjectsLocationsDataSetsDicomStoresGetIAMPolicy

    -- * Request Lenses
    , pldsdsgipXgafv
    , pldsdsgipUploadProtocol
    , pldsdsgipAccessToken
    , pldsdsgipUploadType
    , pldsdsgipResource
    , pldsdsgipCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.getIamPolicy@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresGetIAMPolicy' request conforms to.
type ProjectsLocationsDataSetsDicomStoresGetIAMPolicyResource
     =
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
-- /See:/ 'projectsLocationsDataSetsDicomStoresGetIAMPolicy' smart constructor.
data ProjectsLocationsDataSetsDicomStoresGetIAMPolicy =
  ProjectsLocationsDataSetsDicomStoresGetIAMPolicy'
    { _pldsdsgipXgafv          :: !(Maybe Xgafv)
    , _pldsdsgipUploadProtocol :: !(Maybe Text)
    , _pldsdsgipAccessToken    :: !(Maybe Text)
    , _pldsdsgipUploadType     :: !(Maybe Text)
    , _pldsdsgipResource       :: !Text
    , _pldsdsgipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsgipXgafv'
--
-- * 'pldsdsgipUploadProtocol'
--
-- * 'pldsdsgipAccessToken'
--
-- * 'pldsdsgipUploadType'
--
-- * 'pldsdsgipResource'
--
-- * 'pldsdsgipCallback'
projectsLocationsDataSetsDicomStoresGetIAMPolicy
    :: Text -- ^ 'pldsdsgipResource'
    -> ProjectsLocationsDataSetsDicomStoresGetIAMPolicy
projectsLocationsDataSetsDicomStoresGetIAMPolicy pPldsdsgipResource_ =
  ProjectsLocationsDataSetsDicomStoresGetIAMPolicy'
    { _pldsdsgipXgafv = Nothing
    , _pldsdsgipUploadProtocol = Nothing
    , _pldsdsgipAccessToken = Nothing
    , _pldsdsgipUploadType = Nothing
    , _pldsdsgipResource = pPldsdsgipResource_
    , _pldsdsgipCallback = Nothing
    }

-- | V1 error format.
pldsdsgipXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresGetIAMPolicy (Maybe Xgafv)
pldsdsgipXgafv
  = lens _pldsdsgipXgafv
      (\ s a -> s{_pldsdsgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsgipUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresGetIAMPolicy (Maybe Text)
pldsdsgipUploadProtocol
  = lens _pldsdsgipUploadProtocol
      (\ s a -> s{_pldsdsgipUploadProtocol = a})

-- | OAuth access token.
pldsdsgipAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresGetIAMPolicy (Maybe Text)
pldsdsgipAccessToken
  = lens _pldsdsgipAccessToken
      (\ s a -> s{_pldsdsgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsgipUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresGetIAMPolicy (Maybe Text)
pldsdsgipUploadType
  = lens _pldsdsgipUploadType
      (\ s a -> s{_pldsdsgipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
pldsdsgipResource :: Lens' ProjectsLocationsDataSetsDicomStoresGetIAMPolicy Text
pldsdsgipResource
  = lens _pldsdsgipResource
      (\ s a -> s{_pldsdsgipResource = a})

-- | JSONP
pldsdsgipCallback :: Lens' ProjectsLocationsDataSetsDicomStoresGetIAMPolicy (Maybe Text)
pldsdsgipCallback
  = lens _pldsdsgipCallback
      (\ s a -> s{_pldsdsgipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresGetIAMPolicy
         where
        type Rs
               ProjectsLocationsDataSetsDicomStoresGetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsDataSetsDicomStoresGetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresGetIAMPolicy'{..}
          = go _pldsdsgipResource _pldsdsgipXgafv
              _pldsdsgipUploadProtocol
              _pldsdsgipAccessToken
              _pldsdsgipUploadType
              _pldsdsgipCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresGetIAMPolicyResource)
                      mempty
