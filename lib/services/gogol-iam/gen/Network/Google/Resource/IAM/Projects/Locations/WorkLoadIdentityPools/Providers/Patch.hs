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
-- Module      : Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing WorkloadIdentityPoolProvider.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.projects.locations.workloadIdentityPools.providers.patch@.
module Network.Google.Resource.IAM.Projects.Locations.WorkLoadIdentityPools.Providers.Patch
    (
    -- * REST Resource
      ProjectsLocationsWorkLoadIdentityPoolsProvidersPatchResource

    -- * Creating a Request
    , projectsLocationsWorkLoadIdentityPoolsProvidersPatch
    , ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch

    -- * Request Lenses
    , plwlipppXgafv
    , plwlipppUploadProtocol
    , plwlipppUpdateMask
    , plwlipppAccessToken
    , plwlipppUploadType
    , plwlipppPayload
    , plwlipppName
    , plwlipppCallback
    ) where

import Network.Google.IAM.Types
import Network.Google.Prelude

-- | A resource alias for @iam.projects.locations.workloadIdentityPools.providers.patch@ method which the
-- 'ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch' request conforms to.
type ProjectsLocationsWorkLoadIdentityPoolsProvidersPatchResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] WorkLoadIdentityPoolProvider :>
                         Patch '[JSON] Operation

-- | Updates an existing WorkloadIdentityPoolProvider.
--
-- /See:/ 'projectsLocationsWorkLoadIdentityPoolsProvidersPatch' smart constructor.
data ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch =
  ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch'
    { _plwlipppXgafv :: !(Maybe Xgafv)
    , _plwlipppUploadProtocol :: !(Maybe Text)
    , _plwlipppUpdateMask :: !(Maybe GFieldMask)
    , _plwlipppAccessToken :: !(Maybe Text)
    , _plwlipppUploadType :: !(Maybe Text)
    , _plwlipppPayload :: !WorkLoadIdentityPoolProvider
    , _plwlipppName :: !Text
    , _plwlipppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwlipppXgafv'
--
-- * 'plwlipppUploadProtocol'
--
-- * 'plwlipppUpdateMask'
--
-- * 'plwlipppAccessToken'
--
-- * 'plwlipppUploadType'
--
-- * 'plwlipppPayload'
--
-- * 'plwlipppName'
--
-- * 'plwlipppCallback'
projectsLocationsWorkLoadIdentityPoolsProvidersPatch
    :: WorkLoadIdentityPoolProvider -- ^ 'plwlipppPayload'
    -> Text -- ^ 'plwlipppName'
    -> ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch
projectsLocationsWorkLoadIdentityPoolsProvidersPatch pPlwlipppPayload_ pPlwlipppName_ =
  ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch'
    { _plwlipppXgafv = Nothing
    , _plwlipppUploadProtocol = Nothing
    , _plwlipppUpdateMask = Nothing
    , _plwlipppAccessToken = Nothing
    , _plwlipppUploadType = Nothing
    , _plwlipppPayload = pPlwlipppPayload_
    , _plwlipppName = pPlwlipppName_
    , _plwlipppCallback = Nothing
    }


-- | V1 error format.
plwlipppXgafv :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch (Maybe Xgafv)
plwlipppXgafv
  = lens _plwlipppXgafv
      (\ s a -> s{_plwlipppXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwlipppUploadProtocol :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch (Maybe Text)
plwlipppUploadProtocol
  = lens _plwlipppUploadProtocol
      (\ s a -> s{_plwlipppUploadProtocol = a})

-- | Required. The list of fields to update.
plwlipppUpdateMask :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch (Maybe GFieldMask)
plwlipppUpdateMask
  = lens _plwlipppUpdateMask
      (\ s a -> s{_plwlipppUpdateMask = a})

-- | OAuth access token.
plwlipppAccessToken :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch (Maybe Text)
plwlipppAccessToken
  = lens _plwlipppAccessToken
      (\ s a -> s{_plwlipppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwlipppUploadType :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch (Maybe Text)
plwlipppUploadType
  = lens _plwlipppUploadType
      (\ s a -> s{_plwlipppUploadType = a})

-- | Multipart request metadata.
plwlipppPayload :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch WorkLoadIdentityPoolProvider
plwlipppPayload
  = lens _plwlipppPayload
      (\ s a -> s{_plwlipppPayload = a})

-- | Output only. The resource name of the provider.
plwlipppName :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch Text
plwlipppName
  = lens _plwlipppName (\ s a -> s{_plwlipppName = a})

-- | JSONP
plwlipppCallback :: Lens' ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch (Maybe Text)
plwlipppCallback
  = lens _plwlipppCallback
      (\ s a -> s{_plwlipppCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch
         where
        type Rs
               ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch
             = Operation
        type Scopes
               ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkLoadIdentityPoolsProvidersPatch'{..}
          = go _plwlipppName _plwlipppXgafv
              _plwlipppUploadProtocol
              _plwlipppUpdateMask
              _plwlipppAccessToken
              _plwlipppUploadType
              _plwlipppCallback
              (Just AltJSON)
              _plwlipppPayload
              iAMService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkLoadIdentityPoolsProvidersPatchResource)
                      mempty
