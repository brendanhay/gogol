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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. Returns NOT_FOUND error
-- if the resource does not exist. Returns an empty policy if the resource
-- exists but does not have a policy set. Authorization requires the Google
-- IAM permission \`healthcare.AnnotationStores.getIamPolicy\` on the
-- specified resource
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.annotationStores.getIamPolicy@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.GetIAMPolicy
    (
    -- * REST Resource
      ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicyResource

    -- * Creating a Request
    , projectsLocationsDataSetsAnnotationStoresGetIAMPolicy
    , ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicy

    -- * Request Lenses
    , pldsasgipXgafv
    , pldsasgipUploadProtocol
    , pldsasgipAccessToken
    , pldsasgipUploadType
    , pldsasgipPayload
    , pldsasgipResource
    , pldsasgipCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.annotationStores.getIamPolicy@ method which the
-- 'ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicy' request conforms to.
type ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicyResource
     =
     "v1alpha" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Gets the access control policy for a resource. Returns NOT_FOUND error
-- if the resource does not exist. Returns an empty policy if the resource
-- exists but does not have a policy set. Authorization requires the Google
-- IAM permission \`healthcare.AnnotationStores.getIamPolicy\` on the
-- specified resource
--
-- /See:/ 'projectsLocationsDataSetsAnnotationStoresGetIAMPolicy' smart constructor.
data ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicy =
  ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicy'
    { _pldsasgipXgafv          :: !(Maybe Xgafv)
    , _pldsasgipUploadProtocol :: !(Maybe Text)
    , _pldsasgipAccessToken    :: !(Maybe Text)
    , _pldsasgipUploadType     :: !(Maybe Text)
    , _pldsasgipPayload        :: !GetIAMPolicyRequest
    , _pldsasgipResource       :: !Text
    , _pldsasgipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsasgipXgafv'
--
-- * 'pldsasgipUploadProtocol'
--
-- * 'pldsasgipAccessToken'
--
-- * 'pldsasgipUploadType'
--
-- * 'pldsasgipPayload'
--
-- * 'pldsasgipResource'
--
-- * 'pldsasgipCallback'
projectsLocationsDataSetsAnnotationStoresGetIAMPolicy
    :: GetIAMPolicyRequest -- ^ 'pldsasgipPayload'
    -> Text -- ^ 'pldsasgipResource'
    -> ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicy
projectsLocationsDataSetsAnnotationStoresGetIAMPolicy pPldsasgipPayload_ pPldsasgipResource_ =
  ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicy'
    { _pldsasgipXgafv = Nothing
    , _pldsasgipUploadProtocol = Nothing
    , _pldsasgipAccessToken = Nothing
    , _pldsasgipUploadType = Nothing
    , _pldsasgipPayload = pPldsasgipPayload_
    , _pldsasgipResource = pPldsasgipResource_
    , _pldsasgipCallback = Nothing
    }

-- | V1 error format.
pldsasgipXgafv :: Lens' ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicy (Maybe Xgafv)
pldsasgipXgafv
  = lens _pldsasgipXgafv
      (\ s a -> s{_pldsasgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsasgipUploadProtocol :: Lens' ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicy (Maybe Text)
pldsasgipUploadProtocol
  = lens _pldsasgipUploadProtocol
      (\ s a -> s{_pldsasgipUploadProtocol = a})

-- | OAuth access token.
pldsasgipAccessToken :: Lens' ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicy (Maybe Text)
pldsasgipAccessToken
  = lens _pldsasgipAccessToken
      (\ s a -> s{_pldsasgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsasgipUploadType :: Lens' ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicy (Maybe Text)
pldsasgipUploadType
  = lens _pldsasgipUploadType
      (\ s a -> s{_pldsasgipUploadType = a})

-- | Multipart request metadata.
pldsasgipPayload :: Lens' ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicy GetIAMPolicyRequest
pldsasgipPayload
  = lens _pldsasgipPayload
      (\ s a -> s{_pldsasgipPayload = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
pldsasgipResource :: Lens' ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicy Text
pldsasgipResource
  = lens _pldsasgipResource
      (\ s a -> s{_pldsasgipResource = a})

-- | JSONP
pldsasgipCallback :: Lens' ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicy (Maybe Text)
pldsasgipCallback
  = lens _pldsasgipCallback
      (\ s a -> s{_pldsasgipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicy
         where
        type Rs
               ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicy
             = Policy
        type Scopes
               ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicy
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicy'{..}
          = go _pldsasgipResource _pldsasgipXgafv
              _pldsasgipUploadProtocol
              _pldsasgipAccessToken
              _pldsasgipUploadType
              _pldsasgipCallback
              (Just AltJSON)
              _pldsasgipPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsAnnotationStoresGetIAMPolicyResource)
                      mempty
