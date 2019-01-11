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
-- Module      : Network.Google.Resource.DLP.Projects.DlpJobs.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a long-running DlpJob. This method indicates that the client is
-- no longer interested in the DlpJob result. The job will be cancelled if
-- possible. See https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage
-- and https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to
-- learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.dlpJobs.delete@.
module Network.Google.Resource.DLP.Projects.DlpJobs.Delete
    (
    -- * REST Resource
      ProjectsDlpJobsDeleteResource

    -- * Creating a Request
    , projectsDlpJobsDelete
    , ProjectsDlpJobsDelete

    -- * Request Lenses
    , pdjdXgafv
    , pdjdUploadProtocol
    , pdjdAccessToken
    , pdjdUploadType
    , pdjdName
    , pdjdCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.dlpJobs.delete@ method which the
-- 'ProjectsDlpJobsDelete' request conforms to.
type ProjectsDlpJobsDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes a long-running DlpJob. This method indicates that the client is
-- no longer interested in the DlpJob result. The job will be cancelled if
-- possible. See https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage
-- and https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to
-- learn more.
--
-- /See:/ 'projectsDlpJobsDelete' smart constructor.
data ProjectsDlpJobsDelete = ProjectsDlpJobsDelete'
    { _pdjdXgafv          :: !(Maybe Xgafv)
    , _pdjdUploadProtocol :: !(Maybe Text)
    , _pdjdAccessToken    :: !(Maybe Text)
    , _pdjdUploadType     :: !(Maybe Text)
    , _pdjdName           :: !Text
    , _pdjdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsDlpJobsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdjdXgafv'
--
-- * 'pdjdUploadProtocol'
--
-- * 'pdjdAccessToken'
--
-- * 'pdjdUploadType'
--
-- * 'pdjdName'
--
-- * 'pdjdCallback'
projectsDlpJobsDelete
    :: Text -- ^ 'pdjdName'
    -> ProjectsDlpJobsDelete
projectsDlpJobsDelete pPdjdName_ =
    ProjectsDlpJobsDelete'
    { _pdjdXgafv = Nothing
    , _pdjdUploadProtocol = Nothing
    , _pdjdAccessToken = Nothing
    , _pdjdUploadType = Nothing
    , _pdjdName = pPdjdName_
    , _pdjdCallback = Nothing
    }

-- | V1 error format.
pdjdXgafv :: Lens' ProjectsDlpJobsDelete (Maybe Xgafv)
pdjdXgafv
  = lens _pdjdXgafv (\ s a -> s{_pdjdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdjdUploadProtocol :: Lens' ProjectsDlpJobsDelete (Maybe Text)
pdjdUploadProtocol
  = lens _pdjdUploadProtocol
      (\ s a -> s{_pdjdUploadProtocol = a})

-- | OAuth access token.
pdjdAccessToken :: Lens' ProjectsDlpJobsDelete (Maybe Text)
pdjdAccessToken
  = lens _pdjdAccessToken
      (\ s a -> s{_pdjdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdjdUploadType :: Lens' ProjectsDlpJobsDelete (Maybe Text)
pdjdUploadType
  = lens _pdjdUploadType
      (\ s a -> s{_pdjdUploadType = a})

-- | The name of the DlpJob resource to be deleted.
pdjdName :: Lens' ProjectsDlpJobsDelete Text
pdjdName = lens _pdjdName (\ s a -> s{_pdjdName = a})

-- | JSONP
pdjdCallback :: Lens' ProjectsDlpJobsDelete (Maybe Text)
pdjdCallback
  = lens _pdjdCallback (\ s a -> s{_pdjdCallback = a})

instance GoogleRequest ProjectsDlpJobsDelete where
        type Rs ProjectsDlpJobsDelete = GoogleProtobufEmpty
        type Scopes ProjectsDlpJobsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsDlpJobsDelete'{..}
          = go _pdjdName _pdjdXgafv _pdjdUploadProtocol
              _pdjdAccessToken
              _pdjdUploadType
              _pdjdCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsDlpJobsDeleteResource)
                      mempty
