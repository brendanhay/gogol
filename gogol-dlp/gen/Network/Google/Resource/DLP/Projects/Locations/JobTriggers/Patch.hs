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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a job trigger. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.jobTriggers.patch@.
module Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Patch
    (
    -- * REST Resource
      ProjectsLocationsJobTriggersPatchResource

    -- * Creating a Request
    , projectsLocationsJobTriggersPatch
    , ProjectsLocationsJobTriggersPatch

    -- * Request Lenses
    , pljtpXgafv
    , pljtpUploadProtocol
    , pljtpAccessToken
    , pljtpUploadType
    , pljtpPayload
    , pljtpName
    , pljtpCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.jobTriggers.patch@ method which the
-- 'ProjectsLocationsJobTriggersPatch' request conforms to.
type ProjectsLocationsJobTriggersPatchResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GooglePrivacyDlpV2UpdateJobTriggerRequest
                       :> Patch '[JSON] GooglePrivacyDlpV2JobTrigger

-- | Updates a job trigger. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ 'projectsLocationsJobTriggersPatch' smart constructor.
data ProjectsLocationsJobTriggersPatch =
  ProjectsLocationsJobTriggersPatch'
    { _pljtpXgafv :: !(Maybe Xgafv)
    , _pljtpUploadProtocol :: !(Maybe Text)
    , _pljtpAccessToken :: !(Maybe Text)
    , _pljtpUploadType :: !(Maybe Text)
    , _pljtpPayload :: !GooglePrivacyDlpV2UpdateJobTriggerRequest
    , _pljtpName :: !Text
    , _pljtpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobTriggersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljtpXgafv'
--
-- * 'pljtpUploadProtocol'
--
-- * 'pljtpAccessToken'
--
-- * 'pljtpUploadType'
--
-- * 'pljtpPayload'
--
-- * 'pljtpName'
--
-- * 'pljtpCallback'
projectsLocationsJobTriggersPatch
    :: GooglePrivacyDlpV2UpdateJobTriggerRequest -- ^ 'pljtpPayload'
    -> Text -- ^ 'pljtpName'
    -> ProjectsLocationsJobTriggersPatch
projectsLocationsJobTriggersPatch pPljtpPayload_ pPljtpName_ =
  ProjectsLocationsJobTriggersPatch'
    { _pljtpXgafv = Nothing
    , _pljtpUploadProtocol = Nothing
    , _pljtpAccessToken = Nothing
    , _pljtpUploadType = Nothing
    , _pljtpPayload = pPljtpPayload_
    , _pljtpName = pPljtpName_
    , _pljtpCallback = Nothing
    }


-- | V1 error format.
pljtpXgafv :: Lens' ProjectsLocationsJobTriggersPatch (Maybe Xgafv)
pljtpXgafv
  = lens _pljtpXgafv (\ s a -> s{_pljtpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljtpUploadProtocol :: Lens' ProjectsLocationsJobTriggersPatch (Maybe Text)
pljtpUploadProtocol
  = lens _pljtpUploadProtocol
      (\ s a -> s{_pljtpUploadProtocol = a})

-- | OAuth access token.
pljtpAccessToken :: Lens' ProjectsLocationsJobTriggersPatch (Maybe Text)
pljtpAccessToken
  = lens _pljtpAccessToken
      (\ s a -> s{_pljtpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljtpUploadType :: Lens' ProjectsLocationsJobTriggersPatch (Maybe Text)
pljtpUploadType
  = lens _pljtpUploadType
      (\ s a -> s{_pljtpUploadType = a})

-- | Multipart request metadata.
pljtpPayload :: Lens' ProjectsLocationsJobTriggersPatch GooglePrivacyDlpV2UpdateJobTriggerRequest
pljtpPayload
  = lens _pljtpPayload (\ s a -> s{_pljtpPayload = a})

-- | Required. Resource name of the project and the triggeredJob, for example
-- \`projects\/dlp-test-project\/jobTriggers\/53234423\`.
pljtpName :: Lens' ProjectsLocationsJobTriggersPatch Text
pljtpName
  = lens _pljtpName (\ s a -> s{_pljtpName = a})

-- | JSONP
pljtpCallback :: Lens' ProjectsLocationsJobTriggersPatch (Maybe Text)
pljtpCallback
  = lens _pljtpCallback
      (\ s a -> s{_pljtpCallback = a})

instance GoogleRequest
           ProjectsLocationsJobTriggersPatch
         where
        type Rs ProjectsLocationsJobTriggersPatch =
             GooglePrivacyDlpV2JobTrigger
        type Scopes ProjectsLocationsJobTriggersPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsJobTriggersPatch'{..}
          = go _pljtpName _pljtpXgafv _pljtpUploadProtocol
              _pljtpAccessToken
              _pljtpUploadType
              _pljtpCallback
              (Just AltJSON)
              _pljtpPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsJobTriggersPatchResource)
                      mempty
