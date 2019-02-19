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
-- Module      : Network.Google.Resource.DLP.Projects.JobTriggers.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a job trigger. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.jobTriggers.delete@.
module Network.Google.Resource.DLP.Projects.JobTriggers.Delete
    (
    -- * REST Resource
      ProjectsJobTriggersDeleteResource

    -- * Creating a Request
    , projectsJobTriggersDelete
    , ProjectsJobTriggersDelete

    -- * Request Lenses
    , pjtdXgafv
    , pjtdUploadProtocol
    , pjtdAccessToken
    , pjtdUploadType
    , pjtdName
    , pjtdCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.jobTriggers.delete@ method which the
-- 'ProjectsJobTriggersDelete' request conforms to.
type ProjectsJobTriggersDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes a job trigger. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ 'projectsJobTriggersDelete' smart constructor.
data ProjectsJobTriggersDelete =
  ProjectsJobTriggersDelete'
    { _pjtdXgafv          :: !(Maybe Xgafv)
    , _pjtdUploadProtocol :: !(Maybe Text)
    , _pjtdAccessToken    :: !(Maybe Text)
    , _pjtdUploadType     :: !(Maybe Text)
    , _pjtdName           :: !Text
    , _pjtdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobTriggersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjtdXgafv'
--
-- * 'pjtdUploadProtocol'
--
-- * 'pjtdAccessToken'
--
-- * 'pjtdUploadType'
--
-- * 'pjtdName'
--
-- * 'pjtdCallback'
projectsJobTriggersDelete
    :: Text -- ^ 'pjtdName'
    -> ProjectsJobTriggersDelete
projectsJobTriggersDelete pPjtdName_ =
  ProjectsJobTriggersDelete'
    { _pjtdXgafv = Nothing
    , _pjtdUploadProtocol = Nothing
    , _pjtdAccessToken = Nothing
    , _pjtdUploadType = Nothing
    , _pjtdName = pPjtdName_
    , _pjtdCallback = Nothing
    }


-- | V1 error format.
pjtdXgafv :: Lens' ProjectsJobTriggersDelete (Maybe Xgafv)
pjtdXgafv
  = lens _pjtdXgafv (\ s a -> s{_pjtdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjtdUploadProtocol :: Lens' ProjectsJobTriggersDelete (Maybe Text)
pjtdUploadProtocol
  = lens _pjtdUploadProtocol
      (\ s a -> s{_pjtdUploadProtocol = a})

-- | OAuth access token.
pjtdAccessToken :: Lens' ProjectsJobTriggersDelete (Maybe Text)
pjtdAccessToken
  = lens _pjtdAccessToken
      (\ s a -> s{_pjtdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjtdUploadType :: Lens' ProjectsJobTriggersDelete (Maybe Text)
pjtdUploadType
  = lens _pjtdUploadType
      (\ s a -> s{_pjtdUploadType = a})

-- | Resource name of the project and the triggeredJob, for example
-- \`projects\/dlp-test-project\/jobTriggers\/53234423\`.
pjtdName :: Lens' ProjectsJobTriggersDelete Text
pjtdName = lens _pjtdName (\ s a -> s{_pjtdName = a})

-- | JSONP
pjtdCallback :: Lens' ProjectsJobTriggersDelete (Maybe Text)
pjtdCallback
  = lens _pjtdCallback (\ s a -> s{_pjtdCallback = a})

instance GoogleRequest ProjectsJobTriggersDelete
         where
        type Rs ProjectsJobTriggersDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsJobTriggersDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsJobTriggersDelete'{..}
          = go _pjtdName _pjtdXgafv _pjtdUploadProtocol
              _pjtdAccessToken
              _pjtdUploadType
              _pjtdCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobTriggersDeleteResource)
                      mempty
