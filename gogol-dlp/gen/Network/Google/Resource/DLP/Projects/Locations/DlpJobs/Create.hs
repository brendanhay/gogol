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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new job to inspect storage or calculate risk metrics. See
-- https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and
-- https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn
-- more. When no InfoTypes or CustomInfoTypes are specified in inspect
-- jobs, the system will automatically choose what detectors to run. By
-- default this may be all types, but may change over time as detectors are
-- updated.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.dlpJobs.create@.
module Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Create
    (
    -- * REST Resource
      ProjectsLocationsDlpJobsCreateResource

    -- * Creating a Request
    , projectsLocationsDlpJobsCreate
    , ProjectsLocationsDlpJobsCreate

    -- * Request Lenses
    , proParent
    , proXgafv
    , proUploadProtocol
    , proAccessToken
    , proUploadType
    , proPayload
    , proCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.dlpJobs.create@ method which the
-- 'ProjectsLocationsDlpJobsCreate' request conforms to.
type ProjectsLocationsDlpJobsCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "dlpJobs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GooglePrivacyDlpV2CreateDlpJobRequest
                         :> Post '[JSON] GooglePrivacyDlpV2DlpJob

-- | Creates a new job to inspect storage or calculate risk metrics. See
-- https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and
-- https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn
-- more. When no InfoTypes or CustomInfoTypes are specified in inspect
-- jobs, the system will automatically choose what detectors to run. By
-- default this may be all types, but may change over time as detectors are
-- updated.
--
-- /See:/ 'projectsLocationsDlpJobsCreate' smart constructor.
data ProjectsLocationsDlpJobsCreate =
  ProjectsLocationsDlpJobsCreate'
    { _proParent :: !Text
    , _proXgafv :: !(Maybe Xgafv)
    , _proUploadProtocol :: !(Maybe Text)
    , _proAccessToken :: !(Maybe Text)
    , _proUploadType :: !(Maybe Text)
    , _proPayload :: !GooglePrivacyDlpV2CreateDlpJobRequest
    , _proCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDlpJobsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proParent'
--
-- * 'proXgafv'
--
-- * 'proUploadProtocol'
--
-- * 'proAccessToken'
--
-- * 'proUploadType'
--
-- * 'proPayload'
--
-- * 'proCallback'
projectsLocationsDlpJobsCreate
    :: Text -- ^ 'proParent'
    -> GooglePrivacyDlpV2CreateDlpJobRequest -- ^ 'proPayload'
    -> ProjectsLocationsDlpJobsCreate
projectsLocationsDlpJobsCreate pProParent_ pProPayload_ =
  ProjectsLocationsDlpJobsCreate'
    { _proParent = pProParent_
    , _proXgafv = Nothing
    , _proUploadProtocol = Nothing
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proPayload = pProPayload_
    , _proCallback = Nothing
    }


-- | Required. Parent resource name. The format of this value varies
-- depending on whether you have [specified a processing
-- location](https:\/\/cloud.google.com\/dlp\/docs\/specifying-location): +
-- Projects scope, location specified:
-- \`projects\/\`PROJECT_ID\`\/locations\/\`LOCATION_ID + Projects scope,
-- no location specified (defaults to global): \`projects\/\`PROJECT_ID The
-- following example \`parent\` string specifies a parent project with the
-- identifier \`example-project\`, and specifies the \`europe-west3\`
-- location for processing data:
-- parent=projects\/example-project\/locations\/europe-west3
proParent :: Lens' ProjectsLocationsDlpJobsCreate Text
proParent
  = lens _proParent (\ s a -> s{_proParent = a})

-- | V1 error format.
proXgafv :: Lens' ProjectsLocationsDlpJobsCreate (Maybe Xgafv)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProjectsLocationsDlpJobsCreate (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | OAuth access token.
proAccessToken :: Lens' ProjectsLocationsDlpJobsCreate (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProjectsLocationsDlpJobsCreate (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | Multipart request metadata.
proPayload :: Lens' ProjectsLocationsDlpJobsCreate GooglePrivacyDlpV2CreateDlpJobRequest
proPayload
  = lens _proPayload (\ s a -> s{_proPayload = a})

-- | JSONP
proCallback :: Lens' ProjectsLocationsDlpJobsCreate (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

instance GoogleRequest ProjectsLocationsDlpJobsCreate
         where
        type Rs ProjectsLocationsDlpJobsCreate =
             GooglePrivacyDlpV2DlpJob
        type Scopes ProjectsLocationsDlpJobsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsDlpJobsCreate'{..}
          = go _proParent _proXgafv _proUploadProtocol
              _proAccessToken
              _proUploadType
              _proCallback
              (Just AltJSON)
              _proPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDlpJobsCreateResource)
                      mempty
