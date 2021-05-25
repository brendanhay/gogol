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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running DlpJob. See
-- https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and
-- https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.dlpJobs.get@.
module Network.Google.Resource.DLP.Projects.Locations.DlpJobs.Get
    (
    -- * REST Resource
      ProjectsLocationsDlpJobsGetResource

    -- * Creating a Request
    , projectsLocationsDlpJobsGet
    , ProjectsLocationsDlpJobsGet

    -- * Request Lenses
    , pldjgXgafv
    , pldjgUploadProtocol
    , pldjgAccessToken
    , pldjgUploadType
    , pldjgName
    , pldjgCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.dlpJobs.get@ method which the
-- 'ProjectsLocationsDlpJobsGet' request conforms to.
type ProjectsLocationsDlpJobsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GooglePrivacyDlpV2DlpJob

-- | Gets the latest state of a long-running DlpJob. See
-- https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and
-- https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn
-- more.
--
-- /See:/ 'projectsLocationsDlpJobsGet' smart constructor.
data ProjectsLocationsDlpJobsGet =
  ProjectsLocationsDlpJobsGet'
    { _pldjgXgafv :: !(Maybe Xgafv)
    , _pldjgUploadProtocol :: !(Maybe Text)
    , _pldjgAccessToken :: !(Maybe Text)
    , _pldjgUploadType :: !(Maybe Text)
    , _pldjgName :: !Text
    , _pldjgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDlpJobsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldjgXgafv'
--
-- * 'pldjgUploadProtocol'
--
-- * 'pldjgAccessToken'
--
-- * 'pldjgUploadType'
--
-- * 'pldjgName'
--
-- * 'pldjgCallback'
projectsLocationsDlpJobsGet
    :: Text -- ^ 'pldjgName'
    -> ProjectsLocationsDlpJobsGet
projectsLocationsDlpJobsGet pPldjgName_ =
  ProjectsLocationsDlpJobsGet'
    { _pldjgXgafv = Nothing
    , _pldjgUploadProtocol = Nothing
    , _pldjgAccessToken = Nothing
    , _pldjgUploadType = Nothing
    , _pldjgName = pPldjgName_
    , _pldjgCallback = Nothing
    }


-- | V1 error format.
pldjgXgafv :: Lens' ProjectsLocationsDlpJobsGet (Maybe Xgafv)
pldjgXgafv
  = lens _pldjgXgafv (\ s a -> s{_pldjgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldjgUploadProtocol :: Lens' ProjectsLocationsDlpJobsGet (Maybe Text)
pldjgUploadProtocol
  = lens _pldjgUploadProtocol
      (\ s a -> s{_pldjgUploadProtocol = a})

-- | OAuth access token.
pldjgAccessToken :: Lens' ProjectsLocationsDlpJobsGet (Maybe Text)
pldjgAccessToken
  = lens _pldjgAccessToken
      (\ s a -> s{_pldjgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldjgUploadType :: Lens' ProjectsLocationsDlpJobsGet (Maybe Text)
pldjgUploadType
  = lens _pldjgUploadType
      (\ s a -> s{_pldjgUploadType = a})

-- | Required. The name of the DlpJob resource.
pldjgName :: Lens' ProjectsLocationsDlpJobsGet Text
pldjgName
  = lens _pldjgName (\ s a -> s{_pldjgName = a})

-- | JSONP
pldjgCallback :: Lens' ProjectsLocationsDlpJobsGet (Maybe Text)
pldjgCallback
  = lens _pldjgCallback
      (\ s a -> s{_pldjgCallback = a})

instance GoogleRequest ProjectsLocationsDlpJobsGet
         where
        type Rs ProjectsLocationsDlpJobsGet =
             GooglePrivacyDlpV2DlpJob
        type Scopes ProjectsLocationsDlpJobsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsDlpJobsGet'{..}
          = go _pldjgName _pldjgXgafv _pldjgUploadProtocol
              _pldjgAccessToken
              _pldjgUploadType
              _pldjgCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsDlpJobsGetResource)
                      mempty
