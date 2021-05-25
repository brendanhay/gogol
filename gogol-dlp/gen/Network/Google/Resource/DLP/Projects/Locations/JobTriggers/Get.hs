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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a job trigger. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.jobTriggers.get@.
module Network.Google.Resource.DLP.Projects.Locations.JobTriggers.Get
    (
    -- * REST Resource
      ProjectsLocationsJobTriggersGetResource

    -- * Creating a Request
    , projectsLocationsJobTriggersGet
    , ProjectsLocationsJobTriggersGet

    -- * Request Lenses
    , pljtgXgafv
    , pljtgUploadProtocol
    , pljtgAccessToken
    , pljtgUploadType
    , pljtgName
    , pljtgCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.jobTriggers.get@ method which the
-- 'ProjectsLocationsJobTriggersGet' request conforms to.
type ProjectsLocationsJobTriggersGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GooglePrivacyDlpV2JobTrigger

-- | Gets a job trigger. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ 'projectsLocationsJobTriggersGet' smart constructor.
data ProjectsLocationsJobTriggersGet =
  ProjectsLocationsJobTriggersGet'
    { _pljtgXgafv :: !(Maybe Xgafv)
    , _pljtgUploadProtocol :: !(Maybe Text)
    , _pljtgAccessToken :: !(Maybe Text)
    , _pljtgUploadType :: !(Maybe Text)
    , _pljtgName :: !Text
    , _pljtgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsJobTriggersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pljtgXgafv'
--
-- * 'pljtgUploadProtocol'
--
-- * 'pljtgAccessToken'
--
-- * 'pljtgUploadType'
--
-- * 'pljtgName'
--
-- * 'pljtgCallback'
projectsLocationsJobTriggersGet
    :: Text -- ^ 'pljtgName'
    -> ProjectsLocationsJobTriggersGet
projectsLocationsJobTriggersGet pPljtgName_ =
  ProjectsLocationsJobTriggersGet'
    { _pljtgXgafv = Nothing
    , _pljtgUploadProtocol = Nothing
    , _pljtgAccessToken = Nothing
    , _pljtgUploadType = Nothing
    , _pljtgName = pPljtgName_
    , _pljtgCallback = Nothing
    }


-- | V1 error format.
pljtgXgafv :: Lens' ProjectsLocationsJobTriggersGet (Maybe Xgafv)
pljtgXgafv
  = lens _pljtgXgafv (\ s a -> s{_pljtgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pljtgUploadProtocol :: Lens' ProjectsLocationsJobTriggersGet (Maybe Text)
pljtgUploadProtocol
  = lens _pljtgUploadProtocol
      (\ s a -> s{_pljtgUploadProtocol = a})

-- | OAuth access token.
pljtgAccessToken :: Lens' ProjectsLocationsJobTriggersGet (Maybe Text)
pljtgAccessToken
  = lens _pljtgAccessToken
      (\ s a -> s{_pljtgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pljtgUploadType :: Lens' ProjectsLocationsJobTriggersGet (Maybe Text)
pljtgUploadType
  = lens _pljtgUploadType
      (\ s a -> s{_pljtgUploadType = a})

-- | Required. Resource name of the project and the triggeredJob, for example
-- \`projects\/dlp-test-project\/jobTriggers\/53234423\`.
pljtgName :: Lens' ProjectsLocationsJobTriggersGet Text
pljtgName
  = lens _pljtgName (\ s a -> s{_pljtgName = a})

-- | JSONP
pljtgCallback :: Lens' ProjectsLocationsJobTriggersGet (Maybe Text)
pljtgCallback
  = lens _pljtgCallback
      (\ s a -> s{_pljtgCallback = a})

instance GoogleRequest
           ProjectsLocationsJobTriggersGet
         where
        type Rs ProjectsLocationsJobTriggersGet =
             GooglePrivacyDlpV2JobTrigger
        type Scopes ProjectsLocationsJobTriggersGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsJobTriggersGet'{..}
          = go _pljtgName _pljtgXgafv _pljtgUploadProtocol
              _pljtgAccessToken
              _pljtgUploadType
              _pljtgCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsJobTriggersGetResource)
                      mempty
