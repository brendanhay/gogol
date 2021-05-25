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
-- Module      : Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new ImportJob within a KeyRing. ImportJob.import_method is
-- required.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.importJobs.create@.
module Network.Google.Resource.CloudKMS.Projects.Locations.KeyRings.ImportJobs.Create
    (
    -- * REST Resource
      ProjectsLocationsKeyRingsImportJobsCreateResource

    -- * Creating a Request
    , projectsLocationsKeyRingsImportJobsCreate
    , ProjectsLocationsKeyRingsImportJobsCreate

    -- * Request Lenses
    , plkrijcParent
    , plkrijcXgafv
    , plkrijcImportJobId
    , plkrijcUploadProtocol
    , plkrijcAccessToken
    , plkrijcUploadType
    , plkrijcPayload
    , plkrijcCallback
    ) where

import Network.Google.CloudKMS.Types
import Network.Google.Prelude

-- | A resource alias for @cloudkms.projects.locations.keyRings.importJobs.create@ method which the
-- 'ProjectsLocationsKeyRingsImportJobsCreate' request conforms to.
type ProjectsLocationsKeyRingsImportJobsCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "importJobs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "importJobId" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ImportJob :> Post '[JSON] ImportJob

-- | Create a new ImportJob within a KeyRing. ImportJob.import_method is
-- required.
--
-- /See:/ 'projectsLocationsKeyRingsImportJobsCreate' smart constructor.
data ProjectsLocationsKeyRingsImportJobsCreate =
  ProjectsLocationsKeyRingsImportJobsCreate'
    { _plkrijcParent :: !Text
    , _plkrijcXgafv :: !(Maybe Xgafv)
    , _plkrijcImportJobId :: !(Maybe Text)
    , _plkrijcUploadProtocol :: !(Maybe Text)
    , _plkrijcAccessToken :: !(Maybe Text)
    , _plkrijcUploadType :: !(Maybe Text)
    , _plkrijcPayload :: !ImportJob
    , _plkrijcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsKeyRingsImportJobsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plkrijcParent'
--
-- * 'plkrijcXgafv'
--
-- * 'plkrijcImportJobId'
--
-- * 'plkrijcUploadProtocol'
--
-- * 'plkrijcAccessToken'
--
-- * 'plkrijcUploadType'
--
-- * 'plkrijcPayload'
--
-- * 'plkrijcCallback'
projectsLocationsKeyRingsImportJobsCreate
    :: Text -- ^ 'plkrijcParent'
    -> ImportJob -- ^ 'plkrijcPayload'
    -> ProjectsLocationsKeyRingsImportJobsCreate
projectsLocationsKeyRingsImportJobsCreate pPlkrijcParent_ pPlkrijcPayload_ =
  ProjectsLocationsKeyRingsImportJobsCreate'
    { _plkrijcParent = pPlkrijcParent_
    , _plkrijcXgafv = Nothing
    , _plkrijcImportJobId = Nothing
    , _plkrijcUploadProtocol = Nothing
    , _plkrijcAccessToken = Nothing
    , _plkrijcUploadType = Nothing
    , _plkrijcPayload = pPlkrijcPayload_
    , _plkrijcCallback = Nothing
    }


-- | Required. The name of the KeyRing associated with the ImportJobs.
plkrijcParent :: Lens' ProjectsLocationsKeyRingsImportJobsCreate Text
plkrijcParent
  = lens _plkrijcParent
      (\ s a -> s{_plkrijcParent = a})

-- | V1 error format.
plkrijcXgafv :: Lens' ProjectsLocationsKeyRingsImportJobsCreate (Maybe Xgafv)
plkrijcXgafv
  = lens _plkrijcXgafv (\ s a -> s{_plkrijcXgafv = a})

-- | Required. It must be unique within a KeyRing and match the regular
-- expression \`[a-zA-Z0-9_-]{1,63}\`
plkrijcImportJobId :: Lens' ProjectsLocationsKeyRingsImportJobsCreate (Maybe Text)
plkrijcImportJobId
  = lens _plkrijcImportJobId
      (\ s a -> s{_plkrijcImportJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plkrijcUploadProtocol :: Lens' ProjectsLocationsKeyRingsImportJobsCreate (Maybe Text)
plkrijcUploadProtocol
  = lens _plkrijcUploadProtocol
      (\ s a -> s{_plkrijcUploadProtocol = a})

-- | OAuth access token.
plkrijcAccessToken :: Lens' ProjectsLocationsKeyRingsImportJobsCreate (Maybe Text)
plkrijcAccessToken
  = lens _plkrijcAccessToken
      (\ s a -> s{_plkrijcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plkrijcUploadType :: Lens' ProjectsLocationsKeyRingsImportJobsCreate (Maybe Text)
plkrijcUploadType
  = lens _plkrijcUploadType
      (\ s a -> s{_plkrijcUploadType = a})

-- | Multipart request metadata.
plkrijcPayload :: Lens' ProjectsLocationsKeyRingsImportJobsCreate ImportJob
plkrijcPayload
  = lens _plkrijcPayload
      (\ s a -> s{_plkrijcPayload = a})

-- | JSONP
plkrijcCallback :: Lens' ProjectsLocationsKeyRingsImportJobsCreate (Maybe Text)
plkrijcCallback
  = lens _plkrijcCallback
      (\ s a -> s{_plkrijcCallback = a})

instance GoogleRequest
           ProjectsLocationsKeyRingsImportJobsCreate
         where
        type Rs ProjectsLocationsKeyRingsImportJobsCreate =
             ImportJob
        type Scopes ProjectsLocationsKeyRingsImportJobsCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          ProjectsLocationsKeyRingsImportJobsCreate'{..}
          = go _plkrijcParent _plkrijcXgafv _plkrijcImportJobId
              _plkrijcUploadProtocol
              _plkrijcAccessToken
              _plkrijcUploadType
              _plkrijcCallback
              (Just AltJSON)
              _plkrijcPayload
              cloudKMSService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsKeyRingsImportJobsCreateResource)
                      mempty
