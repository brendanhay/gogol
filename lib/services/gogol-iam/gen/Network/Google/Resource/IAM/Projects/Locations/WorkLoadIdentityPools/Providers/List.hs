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
-- Module      : Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all non-deleted WorkloadIdentityPoolProviders in a
-- WorkloadIdentityPool. If \`show_deleted\` is set to \`true\`, then
-- deleted providers are also listed.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.providers.list@.
module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.List
    (
    -- * REST Resource
      ProjectsLocationsWorkLoadIdentityPoolsProvidersListResource

    -- * Creating a Request
    , projectsLocationsWorkLoadIdentityPoolsProvidersList
    , ProjectsLocationsWorkLoadIdentityPoolsProvidersList

    -- * Request Lenses
    , plwlipplParent
    , plwlipplXgafv
    , plwlipplUploadProtocol
    , plwlipplAccessToken
    , plwlipplUploadType
    , plwlipplShowDeleted
    , plwlipplPageToken
    , plwlipplPageSize
    , plwlipplCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.providers.list@ method which the
-- 'ProjectsLocationsWorkLoadIdentityPoolsProvidersList' request conforms to.
type ProjectsLocationsWorkLoadIdentityPoolsProvidersListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "providers" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "showDeleted" Bool :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON]
                               ListWorkLoadIdentityPoolProvidersResponse

-- | Lists all non-deleted WorkloadIdentityPoolProviders in a
-- WorkloadIdentityPool. If \`show_deleted\` is set to \`true\`, then
-- deleted providers are also listed.
--
-- /See:/ 'projectsLocationsWorkLoadIdentityPoolsProvidersList' smart constructor.
data ProjectsLocationsWorkLoadIdentityPoolsProvidersList =
  ProjectsLocationsWorkLoadIdentityPoolsProvidersList'
    { _plwlipplParent :: !Text
    , _plwlipplXgafv :: !(Maybe Xgafv)
    , _plwlipplUploadProtocol :: !(Maybe Text)
    , _plwlipplAccessToken :: !(Maybe Text)
    , _plwlipplUploadType :: !(Maybe Text)
    , _plwlipplShowDeleted :: !(Maybe Bool)
    , _plwlipplPageToken :: !(Maybe Text)
    , _plwlipplPageSize :: !(Maybe (Textual Int32))
    , _plwlipplCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkLoadIdentityPoolsProvidersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwlipplParent'
--
-- * 'plwlipplXgafv'
--
-- * 'plwlipplUploadProtocol'
--
-- * 'plwlipplAccessToken'
--
-- * 'plwlipplUploadType'
--
-- * 'plwlipplShowDeleted'
--
-- * 'plwlipplPageToken'
--
-- * 'plwlipplPageSize'
--
-- * 'plwlipplCallback'
projectsLocationsWorkLoadIdentityPoolsProvidersList
    :: Text -- ^ 'plwlipplParent'
    -> ProjectsLocationsWorkLoadIdentityPoolsProvidersList
projectsLocationsWorkLoadIdentityPoolsProvidersList pPlwlipplParent_ =
  ProjectsLocationsWorkLoadIdentityPoolsProvidersList'
    { _plwlipplParent = pPlwlipplParent_
    , _plwlipplXgafv = Nothing
    , _plwlipplUploadProtocol = Nothing
    , _plwlipplAccessToken = Nothing
    , _plwlipplUploadType = Nothing
    , _plwlipplShowDeleted = Nothing
    , _plwlipplPageToken = Nothing
    , _plwlipplPageSize = Nothing
    , _plwlipplCallback = Nothing
    }


-- | Required. The pool to list providers for.
plwlipplParent :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersList Text
plwlipplParent
  = lens _plwlipplParent
      (\ s a -> s{_plwlipplParent = a})

-- | V1 error format.
plwlipplXgafv :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersList (Maybe Xgafv)
plwlipplXgafv
  = lens _plwlipplXgafv
      (\ s a -> s{_plwlipplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwlipplUploadProtocol :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersList (Maybe Text)
plwlipplUploadProtocol
  = lens _plwlipplUploadProtocol
      (\ s a -> s{_plwlipplUploadProtocol = a})

-- | OAuth access token.
plwlipplAccessToken :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersList (Maybe Text)
plwlipplAccessToken
  = lens _plwlipplAccessToken
      (\ s a -> s{_plwlipplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwlipplUploadType :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersList (Maybe Text)
plwlipplUploadType
  = lens _plwlipplUploadType
      (\ s a -> s{_plwlipplUploadType = a})

-- | Whether to return soft-deleted providers.
plwlipplShowDeleted :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersList (Maybe Bool)
plwlipplShowDeleted
  = lens _plwlipplShowDeleted
      (\ s a -> s{_plwlipplShowDeleted = a})

-- | A page token, received from a previous
-- \`ListWorkloadIdentityPoolProviders\` call. Provide this to retrieve the
-- subsequent page.
plwlipplPageToken :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersList (Maybe Text)
plwlipplPageToken
  = lens _plwlipplPageToken
      (\ s a -> s{_plwlipplPageToken = a})

-- | The maximum number of providers to return. If unspecified, at most 50
-- providers are returned. The maximum value is 100; values above 100 are
-- truncated to 100.
plwlipplPageSize :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersList (Maybe Int32)
plwlipplPageSize
  = lens _plwlipplPageSize
      (\ s a -> s{_plwlipplPageSize = a})
      . mapping _Coerce

-- | JSONP
plwlipplCallback :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersList (Maybe Text)
plwlipplCallback
  = lens _plwlipplCallback
      (\ s a -> s{_plwlipplCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkLoadIdentityPoolsProvidersList
         where
        type Rs
               ProjectsLocationsWorkLoadIdentityPoolsProvidersList
             = ListWorkLoadIdentityPoolProvidersResponse
        type Scopes
               ProjectsLocationsWorkLoadIdentityPoolsProvidersList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkLoadIdentityPoolsProvidersList'{..}
          = go _plwlipplParent _plwlipplXgafv
              _plwlipplUploadProtocol
              _plwlipplAccessToken
              _plwlipplUploadType
              _plwlipplShowDeleted
              _plwlipplPageToken
              _plwlipplPageSize
              _plwlipplCallback
              (Just AltJSON)
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkLoadIdentityPoolsProvidersListResource)
                      mempty
