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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata for a given ImportJob.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.importJobs.get@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.Get
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsImportJobsGetResource

    -- * Creating a Request
    , projectsLocationsKeyRingsImportJobsGet
    , ProjectsLocationsKeyRingsImportJobsGet

    -- * Request Lenses
    , plkrijgXgafv
    , plkrijgUploadProtocol
    , plkrijgAccessToken
    , plkrijgUploadType
    , plkrijgName
    , plkrijgCallback
    ) where

import Network.Google.CloudKMS.Types
import Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.importJobs.get@ method which the
-- 'ProjectsLocationsKeyRingsImportJobsGet' request conforms to.
type ProjectsLocationsKeyRingsImportJobsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] ImportJob

-- | Returns metadata for a given ImportJob.
--
-- /See:/ 'projectsLocationsKeyRingsImportJobsGet' smart constructor.
data ProjectsLocationsKeyRingsImportJobsGet =
  ProjectsLocationsKeyRingsImportJobsGet'
    { _plkrijgXgafv :: !(Maybe Xgafv)
    , _plkrijgUploadProtocol :: !(Maybe Text)
    , _plkrijgAccessToken :: !(Maybe Text)
    , _plkrijgUploadType :: !(Maybe Text)
    , _plkrijgName :: !Text
    , _plkrijgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsImportJobsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrijgXgafv'
--
-- * 'plkrijgUploadProtocol'
--
-- * 'plkrijgAccessToken'
--
-- * 'plkrijgUploadType'
--
-- * 'plkrijgName'
--
-- * 'plkrijgCallback'
projectsLocationsKeyRingsImportJobsGet
    :: Text -- ^ 'plkrijgName'
    -> ProjectsLocationsKeyRingsImportJobsGet
projectsLocationsKeyRingsImportJobsGet pPlkrijgName_ =
  ProjectsLocationsKeyRingsImportJobsGet'
    { _plkrijgXgafv = Nothing
    , _plkrijgUploadProtocol = Nothing
    , _plkrijgAccessToken = Nothing
    , _plkrijgUploadType = Nothing
    , _plkrijgName = pPlkrijgName_
    , _plkrijgCallback = Nothing
    }


-- | V1 error format.
plkrijgXgafv :: Lens' ProjectsLocationsKeyRingsImportJobsGet (Maybe Xgafv)
plkrijgXgafv
  = lens _plkrijgXgafv (\ s a -> s{_plkrijgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrijgUploadProtocol :: Lens' ProjectsLocationsKeyRingsImportJobsGet (Maybe Text)
plkrijgUploadProtocol
  = lens _plkrijgUploadProtocol
      (\ s a -> s{_plkrijgUploadProtocol = a})

-- | OAuth access token.
plkrijgAccessToken :: Lens' ProjectsLocationsKeyRingsImportJobsGet (Maybe Text)
plkrijgAccessToken
  = lens _plkrijgAccessToken
      (\ s a -> s{_plkrijgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrijgUploadType :: Lens' ProjectsLocationsKeyRingsImportJobsGet (Maybe Text)
plkrijgUploadType
  = lens _plkrijgUploadType
      (\ s a -> s{_plkrijgUploadType = a})

-- | Required. The name of the ImportJob to get.
plkrijgName :: Lens' ProjectsLocationsKeyRingsImportJobsGet Text
plkrijgName
  = lens _plkrijgName (\ s a -> s{_plkrijgName = a})

-- | JSONP
plkrijgCallback :: Lens' ProjectsLocationsKeyRingsImportJobsGet (Maybe Text)
plkrijgCallback
  = lens _plkrijgCallback
      (\ s a -> s{_plkrijgCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsImportJobsGet
         where
        type Rs ProjectsLocationsKeyRingsImportJobsGet =
             ImportJob
        type Scopes ProjectsLocationsKeyRingsImportJobsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsImportJobsGet'{..}
          = go _plkrijgName _plkrijgXgafv
              _plkrijgUploadProtocol
              _plkrijgAccessToken
              _plkrijgUploadType
              _plkrijgCallback
              (Just AltJSON)
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsKeyRingsImportJobsGetResource)
                      mempty
