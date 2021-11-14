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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a job trigger to run DLP actions such as scanning storage for
-- sensitive information on a set schedule. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.jobTriggers.create@.
module Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Create
    (
    -- * REST Resource
      ProjectsLocationsJobTriggersCreateResource

    -- * Creating a Request
    , projectsLocationsJobTriggersCreate
    , ProjectsLocationsJobTriggersCreate

    -- * Request Lenses
    , pljtcParent
    , pljtcXgafv
    , pljtcUploadProtocol
    , pljtcAccessToken
    , pljtcUploadType
    , pljtcPayload
    , pljtcCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.jobTriggers.create@ method which the
-- 'ProjectsLocationsJobTriggersCreate' request conforms to.
type ProjectsLocationsJobTriggersCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "jobTriggers" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GooglePrivacyDlpV2CreateJobTriggerRequest
                         :> Post '[JSON] GooglePrivacyDlpV2JobTrigger

-- | Creates a job trigger to run DLP actions such as scanning storage for
-- sensitive information on a set schedule. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ 'projectsLocationsJobTriggersCreate' smart constructor.
data ProjectsLocationsJobTriggersCreate =
  ProjectsLocationsJobTriggersCreate'
    { _pljtcParent :: !Text
    , _pljtcXgafv :: !(Maybe Xgafv)
    , _pljtcUploadProtocol :: !(Maybe Text)
    , _pljtcAccessToken :: !(Maybe Text)
    , _pljtcUploadType :: !(Maybe Text)
    , _pljtcPayload :: !GooglePrivacyDlpV2CreateJobTriggerRequest
    , _pljtcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobTriggersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljtcParent'
--
-- * 'pljtcXgafv'
--
-- * 'pljtcUploadProtocol'
--
-- * 'pljtcAccessToken'
--
-- * 'pljtcUploadType'
--
-- * 'pljtcPayload'
--
-- * 'pljtcCallback'
projectsLocationsJobTriggersCreate
    :: Text -- ^ 'pljtcParent'
    -> GooglePrivacyDlpV2CreateJobTriggerRequest -- ^ 'pljtcPayload'
    -> ProjectsLocationsJobTriggersCreate
projectsLocationsJobTriggersCreate pPljtcParent_ pPljtcPayload_ =
  ProjectsLocationsJobTriggersCreate'
    { _pljtcParent = pPljtcParent_
    , _pljtcXgafv = Nothing
    , _pljtcUploadProtocol = Nothing
    , _pljtcAccessToken = Nothing
    , _pljtcUploadType = Nothing
    , _pljtcPayload = pPljtcPayload_
    , _pljtcCallback = Nothing
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
pljtcParent :: Lens' ProjectsLocationsJobTriggersCreate Text
pljtcParent
  = lens _pljtcParent (\ s a -> s{_pljtcParent = a})

-- | V1 error format.
pljtcXgafv :: Lens' ProjectsLocationsJobTriggersCreate (Maybe Xgafv)
pljtcXgafv
  = lens _pljtcXgafv (\ s a -> s{_pljtcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljtcUploadProtocol :: Lens' ProjectsLocationsJobTriggersCreate (Maybe Text)
pljtcUploadProtocol
  = lens _pljtcUploadProtocol
      (\ s a -> s{_pljtcUploadProtocol = a})

-- | OAuth access token.
pljtcAccessToken :: Lens' ProjectsLocationsJobTriggersCreate (Maybe Text)
pljtcAccessToken
  = lens _pljtcAccessToken
      (\ s a -> s{_pljtcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljtcUploadType :: Lens' ProjectsLocationsJobTriggersCreate (Maybe Text)
pljtcUploadType
  = lens _pljtcUploadType
      (\ s a -> s{_pljtcUploadType = a})

-- | Multipart request metadata.
pljtcPayload :: Lens' ProjectsLocationsJobTriggersCreate GooglePrivacyDlpV2CreateJobTriggerRequest
pljtcPayload
  = lens _pljtcPayload (\ s a -> s{_pljtcPayload = a})

-- | JSONP
pljtcCallback :: Lens' ProjectsLocationsJobTriggersCreate (Maybe Text)
pljtcCallback
  = lens _pljtcCallback
      (\ s a -> s{_pljtcCallback = a})

instance GoogleRequest
           ProjectsLocationsJobTriggersCreate
         where
        type Rs ProjectsLocationsJobTriggersCreate =
             GooglePrivacyDlpV2JobTrigger
        type Scopes ProjectsLocationsJobTriggersCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsJobTriggersCreate'{..}
          = go _pljtcParent _pljtcXgafv _pljtcUploadProtocol
              _pljtcAccessToken
              _pljtcUploadType
              _pljtcCallback
              (Just AltJSON)
              _pljtcPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsJobTriggersCreateResource)
                      mempty
