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
-- Module      : Network.Google.Resource.DLP.Projects.JobTriggers.Get
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
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.jobTriggers.get@.
module Network.Google.Resource.DLP.Projects.JobTriggers.Get
    (
    -- * REST Resource
      ProjectsJobTriggersGetResource

    -- * Creating a Request
    , projectsJobTriggersGet
    , ProjectsJobTriggersGet

    -- * Request Lenses
    , pjtgXgafv
    , pjtgUploadProtocol
    , pjtgAccessToken
    , pjtgUploadType
    , pjtgName
    , pjtgCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.jobTriggers.get@ method which the
-- 'ProjectsJobTriggersGet' request conforms to.
type ProjectsJobTriggersGetResource =
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
-- /See:/ 'projectsJobTriggersGet' smart constructor.
data ProjectsJobTriggersGet =
  ProjectsJobTriggersGet'
    { _pjtgXgafv :: !(Maybe Xgafv)
    , _pjtgUploadProtocol :: !(Maybe Text)
    , _pjtgAccessToken :: !(Maybe Text)
    , _pjtgUploadType :: !(Maybe Text)
    , _pjtgName :: !Text
    , _pjtgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobTriggersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjtgXgafv'
--
-- * 'pjtgUploadProtocol'
--
-- * 'pjtgAccessToken'
--
-- * 'pjtgUploadType'
--
-- * 'pjtgName'
--
-- * 'pjtgCallback'
projectsJobTriggersGet
    :: Text -- ^ 'pjtgName'
    -> ProjectsJobTriggersGet
projectsJobTriggersGet pPjtgName_ =
  ProjectsJobTriggersGet'
    { _pjtgXgafv = Nothing
    , _pjtgUploadProtocol = Nothing
    , _pjtgAccessToken = Nothing
    , _pjtgUploadType = Nothing
    , _pjtgName = pPjtgName_
    , _pjtgCallback = Nothing
    }


-- | V1 error format.
pjtgXgafv :: Lens' ProjectsJobTriggersGet (Maybe Xgafv)
pjtgXgafv
  = lens _pjtgXgafv (\ s a -> s{_pjtgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjtgUploadProtocol :: Lens' ProjectsJobTriggersGet (Maybe Text)
pjtgUploadProtocol
  = lens _pjtgUploadProtocol
      (\ s a -> s{_pjtgUploadProtocol = a})

-- | OAuth access token.
pjtgAccessToken :: Lens' ProjectsJobTriggersGet (Maybe Text)
pjtgAccessToken
  = lens _pjtgAccessToken
      (\ s a -> s{_pjtgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjtgUploadType :: Lens' ProjectsJobTriggersGet (Maybe Text)
pjtgUploadType
  = lens _pjtgUploadType
      (\ s a -> s{_pjtgUploadType = a})

-- | Required. Resource name of the project and the triggeredJob, for example
-- \`projects\/dlp-test-project\/jobTriggers\/53234423\`.
pjtgName :: Lens' ProjectsJobTriggersGet Text
pjtgName = lens _pjtgName (\ s a -> s{_pjtgName = a})

-- | JSONP
pjtgCallback :: Lens' ProjectsJobTriggersGet (Maybe Text)
pjtgCallback
  = lens _pjtgCallback (\ s a -> s{_pjtgCallback = a})

instance GoogleRequest ProjectsJobTriggersGet where
        type Rs ProjectsJobTriggersGet =
             GooglePrivacyDlpV2JobTrigger
        type Scopes ProjectsJobTriggersGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsJobTriggersGet'{..}
          = go _pjtgName _pjtgXgafv _pjtgUploadProtocol
              _pjtgAccessToken
              _pjtgUploadType
              _pjtgCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobTriggersGetResource)
                      mempty
