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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the
-- resource does not exist, this will return an empty set of permissions,
-- not a NOT_FOUND error. There is no permission required to make this API
-- call.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.annotationStores.testIamPermissions@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.TestIAMPermissions
    (
    -- * REST Resource
      ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissionsResource

    -- * Creating a Request
    , projectsLocationsDataSetsAnnotationStoresTestIAMPermissions
    , ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissions

    -- * Request Lenses
    , pldsastipXgafv
    , pldsastipUploadProtocol
    , pldsastipAccessToken
    , pldsastipUploadType
    , pldsastipPayload
    , pldsastipResource
    , pldsastipCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.annotationStores.testIamPermissions@ method which the
-- 'ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissions' request conforms to.
type ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissionsResource
     =
     "v1alpha" :>
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
-- not a NOT_FOUND error. There is no permission required to make this API
-- call.
--
-- /See:/ 'projectsLocationsDataSetsAnnotationStoresTestIAMPermissions' smart constructor.
data ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissions =
  ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissions'
    { _pldsastipXgafv          :: !(Maybe Xgafv)
    , _pldsastipUploadProtocol :: !(Maybe Text)
    , _pldsastipAccessToken    :: !(Maybe Text)
    , _pldsastipUploadType     :: !(Maybe Text)
    , _pldsastipPayload        :: !TestIAMPermissionsRequest
    , _pldsastipResource       :: !Text
    , _pldsastipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsastipXgafv'
--
-- * 'pldsastipUploadProtocol'
--
-- * 'pldsastipAccessToken'
--
-- * 'pldsastipUploadType'
--
-- * 'pldsastipPayload'
--
-- * 'pldsastipResource'
--
-- * 'pldsastipCallback'
projectsLocationsDataSetsAnnotationStoresTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'pldsastipPayload'
    -> Text -- ^ 'pldsastipResource'
    -> ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissions
projectsLocationsDataSetsAnnotationStoresTestIAMPermissions pPldsastipPayload_ pPldsastipResource_ =
  ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissions'
    { _pldsastipXgafv = Nothing
    , _pldsastipUploadProtocol = Nothing
    , _pldsastipAccessToken = Nothing
    , _pldsastipUploadType = Nothing
    , _pldsastipPayload = pPldsastipPayload_
    , _pldsastipResource = pPldsastipResource_
    , _pldsastipCallback = Nothing
    }


-- | V1 error format.
pldsastipXgafv :: Lens' ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissions (Maybe Xgafv)
pldsastipXgafv
  = lens _pldsastipXgafv
      (\ s a -> s{_pldsastipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsastipUploadProtocol :: Lens' ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissions (Maybe Text)
pldsastipUploadProtocol
  = lens _pldsastipUploadProtocol
      (\ s a -> s{_pldsastipUploadProtocol = a})

-- | OAuth access token.
pldsastipAccessToken :: Lens' ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissions (Maybe Text)
pldsastipAccessToken
  = lens _pldsastipAccessToken
      (\ s a -> s{_pldsastipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsastipUploadType :: Lens' ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissions (Maybe Text)
pldsastipUploadType
  = lens _pldsastipUploadType
      (\ s a -> s{_pldsastipUploadType = a})

-- | Multipart request metadata.
pldsastipPayload :: Lens' ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissions TestIAMPermissionsRequest
pldsastipPayload
  = lens _pldsastipPayload
      (\ s a -> s{_pldsastipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
pldsastipResource :: Lens' ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissions Text
pldsastipResource
  = lens _pldsastipResource
      (\ s a -> s{_pldsastipResource = a})

-- | JSONP
pldsastipCallback :: Lens' ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissions (Maybe Text)
pldsastipCallback
  = lens _pldsastipCallback
      (\ s a -> s{_pldsastipCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissions
         where
        type Rs
               ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissions
             = TestIAMPermissionsResponse
        type Scopes
               ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissions'{..}
          = go _pldsastipResource _pldsastipXgafv
              _pldsastipUploadProtocol
              _pldsastipAccessToken
              _pldsastipUploadType
              _pldsastipCallback
              (Just AltJSON)
              _pldsastipPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsAnnotationStoresTestIAMPermissionsResource)
                      mempty
