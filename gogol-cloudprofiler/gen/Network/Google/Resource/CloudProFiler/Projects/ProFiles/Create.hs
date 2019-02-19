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
-- Module      : Network.Google.Resource.CloudProFiler.Projects.ProFiles.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- CreateProfile creates a new profile resource in the online mode. The
-- server ensures that the new profiles are created at a constant rate per
-- deployment, so the creation request may hang for some time until the
-- next profile session is available. The request may fail with ABORTED
-- error if the creation is not available within ~1m, the response will
-- indicate the duration of the backoff the client should take before
-- attempting creating a profile again. The backoff duration is returned in
-- google.rpc.RetryInfo extension on the response status. To a gRPC client,
-- the extension will be return as a binary-serialized proto in the
-- trailing metadata item named \"google.rpc.retryinfo-bin\".
--
-- /See:/ <https://cloud.google.com/profiler/ Stackdriver Profiler API Reference> for @cloudprofiler.projects.profiles.create@.
module Network.Google.Resource.CloudProFiler.Projects.ProFiles.Create
    (
    -- * REST Resource
      ProjectsProFilesCreateResource

    -- * Creating a Request
    , projectsProFilesCreate
    , ProjectsProFilesCreate

    -- * Request Lenses
    , ppfcParent
    , ppfcXgafv
    , ppfcUploadProtocol
    , ppfcAccessToken
    , ppfcUploadType
    , ppfcPayload
    , ppfcCallback
    ) where

import           Network.Google.CloudProFiler.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudprofiler.projects.profiles.create@ method which the
-- 'ProjectsProFilesCreate' request conforms to.
type ProjectsProFilesCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "profiles" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateProFileRequest :>
                         Post '[JSON] ProFile

-- | CreateProfile creates a new profile resource in the online mode. The
-- server ensures that the new profiles are created at a constant rate per
-- deployment, so the creation request may hang for some time until the
-- next profile session is available. The request may fail with ABORTED
-- error if the creation is not available within ~1m, the response will
-- indicate the duration of the backoff the client should take before
-- attempting creating a profile again. The backoff duration is returned in
-- google.rpc.RetryInfo extension on the response status. To a gRPC client,
-- the extension will be return as a binary-serialized proto in the
-- trailing metadata item named \"google.rpc.retryinfo-bin\".
--
-- /See:/ 'projectsProFilesCreate' smart constructor.
data ProjectsProFilesCreate =
  ProjectsProFilesCreate'
    { _ppfcParent         :: !Text
    , _ppfcXgafv          :: !(Maybe Xgafv)
    , _ppfcUploadProtocol :: !(Maybe Text)
    , _ppfcAccessToken    :: !(Maybe Text)
    , _ppfcUploadType     :: !(Maybe Text)
    , _ppfcPayload        :: !CreateProFileRequest
    , _ppfcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsProFilesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppfcParent'
--
-- * 'ppfcXgafv'
--
-- * 'ppfcUploadProtocol'
--
-- * 'ppfcAccessToken'
--
-- * 'ppfcUploadType'
--
-- * 'ppfcPayload'
--
-- * 'ppfcCallback'
projectsProFilesCreate
    :: Text -- ^ 'ppfcParent'
    -> CreateProFileRequest -- ^ 'ppfcPayload'
    -> ProjectsProFilesCreate
projectsProFilesCreate pPpfcParent_ pPpfcPayload_ =
  ProjectsProFilesCreate'
    { _ppfcParent = pPpfcParent_
    , _ppfcXgafv = Nothing
    , _ppfcUploadProtocol = Nothing
    , _ppfcAccessToken = Nothing
    , _ppfcUploadType = Nothing
    , _ppfcPayload = pPpfcPayload_
    , _ppfcCallback = Nothing
    }

-- | Parent project to create the profile in.
ppfcParent :: Lens' ProjectsProFilesCreate Text
ppfcParent
  = lens _ppfcParent (\ s a -> s{_ppfcParent = a})

-- | V1 error format.
ppfcXgafv :: Lens' ProjectsProFilesCreate (Maybe Xgafv)
ppfcXgafv
  = lens _ppfcXgafv (\ s a -> s{_ppfcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ppfcUploadProtocol :: Lens' ProjectsProFilesCreate (Maybe Text)
ppfcUploadProtocol
  = lens _ppfcUploadProtocol
      (\ s a -> s{_ppfcUploadProtocol = a})

-- | OAuth access token.
ppfcAccessToken :: Lens' ProjectsProFilesCreate (Maybe Text)
ppfcAccessToken
  = lens _ppfcAccessToken
      (\ s a -> s{_ppfcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ppfcUploadType :: Lens' ProjectsProFilesCreate (Maybe Text)
ppfcUploadType
  = lens _ppfcUploadType
      (\ s a -> s{_ppfcUploadType = a})

-- | Multipart request metadata.
ppfcPayload :: Lens' ProjectsProFilesCreate CreateProFileRequest
ppfcPayload
  = lens _ppfcPayload (\ s a -> s{_ppfcPayload = a})

-- | JSONP
ppfcCallback :: Lens' ProjectsProFilesCreate (Maybe Text)
ppfcCallback
  = lens _ppfcCallback (\ s a -> s{_ppfcCallback = a})

instance GoogleRequest ProjectsProFilesCreate where
        type Rs ProjectsProFilesCreate = ProFile
        type Scopes ProjectsProFilesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.write"]
        requestClient ProjectsProFilesCreate'{..}
          = go _ppfcParent _ppfcXgafv _ppfcUploadProtocol
              _ppfcAccessToken
              _ppfcUploadType
              _ppfcCallback
              (Just AltJSON)
              _ppfcPayload
              cloudProfilerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsProFilesCreateResource)
                      mempty
