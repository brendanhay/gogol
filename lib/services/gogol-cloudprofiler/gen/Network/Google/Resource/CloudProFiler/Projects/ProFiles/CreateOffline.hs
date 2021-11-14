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
-- Module      : Network.Google.Resource.CloudProFiler.Projects.ProFiles.CreateOffline
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- CreateOfflineProfile creates a new profile resource in the offline mode.
-- The client provides the profile to create along with the profile bytes,
-- the server records it.
--
-- /See:/ <https://cloud.google.com/profiler/ Stackdriver Profiler API Reference> for @cloudprofiler.projects.profiles.createOffline@.
module Network.Google.Resource.CloudProFiler.Projects.ProFiles.CreateOffline
    (
    -- * REST Resource
      ProjectsProFilesCreateOfflineResource

    -- * Creating a Request
    , projectsProFilesCreateOffline
    , ProjectsProFilesCreateOffline

    -- * Request Lenses
    , ppfcoParent
    , ppfcoXgafv
    , ppfcoUploadProtocol
    , ppfcoAccessToken
    , ppfcoUploadType
    , ppfcoPayload
    , ppfcoCallback
    ) where

import Network.Google.CloudProFiler.Types
import Network.Google.Prelude

-- | A resource alias for @cloudprofiler.projects.profiles.createOffline@ method which the
-- 'ProjectsProFilesCreateOffline' request conforms to.
type ProjectsProFilesCreateOfflineResource =
     "v2" :>
       Capture "parent" Text :>
         "profiles:createOffline" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ProFile :> Post '[JSON] ProFile

-- | CreateOfflineProfile creates a new profile resource in the offline mode.
-- The client provides the profile to create along with the profile bytes,
-- the server records it.
--
-- /See:/ 'projectsProFilesCreateOffline' smart constructor.
data ProjectsProFilesCreateOffline =
  ProjectsProFilesCreateOffline'
    { _ppfcoParent :: !Text
    , _ppfcoXgafv :: !(Maybe Xgafv)
    , _ppfcoUploadProtocol :: !(Maybe Text)
    , _ppfcoAccessToken :: !(Maybe Text)
    , _ppfcoUploadType :: !(Maybe Text)
    , _ppfcoPayload :: !ProFile
    , _ppfcoCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsProFilesCreateOffline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppfcoParent'
--
-- * 'ppfcoXgafv'
--
-- * 'ppfcoUploadProtocol'
--
-- * 'ppfcoAccessToken'
--
-- * 'ppfcoUploadType'
--
-- * 'ppfcoPayload'
--
-- * 'ppfcoCallback'
projectsProFilesCreateOffline
    :: Text -- ^ 'ppfcoParent'
    -> ProFile -- ^ 'ppfcoPayload'
    -> ProjectsProFilesCreateOffline
projectsProFilesCreateOffline pPpfcoParent_ pPpfcoPayload_ =
  ProjectsProFilesCreateOffline'
    { _ppfcoParent = pPpfcoParent_
    , _ppfcoXgafv = Nothing
    , _ppfcoUploadProtocol = Nothing
    , _ppfcoAccessToken = Nothing
    , _ppfcoUploadType = Nothing
    , _ppfcoPayload = pPpfcoPayload_
    , _ppfcoCallback = Nothing
    }


-- | Parent project to create the profile in.
ppfcoParent :: Lens' ProjectsProFilesCreateOffline Text
ppfcoParent
  = lens _ppfcoParent (\ s a -> s{_ppfcoParent = a})

-- | V1 error format.
ppfcoXgafv :: Lens' ProjectsProFilesCreateOffline (Maybe Xgafv)
ppfcoXgafv
  = lens _ppfcoXgafv (\ s a -> s{_ppfcoXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ppfcoUploadProtocol :: Lens' ProjectsProFilesCreateOffline (Maybe Text)
ppfcoUploadProtocol
  = lens _ppfcoUploadProtocol
      (\ s a -> s{_ppfcoUploadProtocol = a})

-- | OAuth access token.
ppfcoAccessToken :: Lens' ProjectsProFilesCreateOffline (Maybe Text)
ppfcoAccessToken
  = lens _ppfcoAccessToken
      (\ s a -> s{_ppfcoAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ppfcoUploadType :: Lens' ProjectsProFilesCreateOffline (Maybe Text)
ppfcoUploadType
  = lens _ppfcoUploadType
      (\ s a -> s{_ppfcoUploadType = a})

-- | Multipart request metadata.
ppfcoPayload :: Lens' ProjectsProFilesCreateOffline ProFile
ppfcoPayload
  = lens _ppfcoPayload (\ s a -> s{_ppfcoPayload = a})

-- | JSONP
ppfcoCallback :: Lens' ProjectsProFilesCreateOffline (Maybe Text)
ppfcoCallback
  = lens _ppfcoCallback
      (\ s a -> s{_ppfcoCallback = a})

instance GoogleRequest ProjectsProFilesCreateOffline
         where
        type Rs ProjectsProFilesCreateOffline = ProFile
        type Scopes ProjectsProFilesCreateOffline =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.write"]
        requestClient ProjectsProFilesCreateOffline'{..}
          = go _ppfcoParent _ppfcoXgafv _ppfcoUploadProtocol
              _ppfcoAccessToken
              _ppfcoUploadType
              _ppfcoCallback
              (Just AltJSON)
              _ppfcoPayload
              cloudProfilerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsProFilesCreateOfflineResource)
                      mempty
