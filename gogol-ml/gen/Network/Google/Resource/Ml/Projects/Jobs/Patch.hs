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
-- Module      : Network.Google.Resource.Ml.Projects.Jobs.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a specific job resource. Currently the only supported fields to
-- update are \`labels\`.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.jobs.patch@.
module Network.Google.Resource.Ml.Projects.Jobs.Patch
    (
    -- * REST Resource
      ProjectsJobsPatchResource

    -- * Creating a Request
    , projectsJobsPatch
    , ProjectsJobsPatch

    -- * Request Lenses
    , pjpXgafv
    , pjpUploadProtocol
    , pjpUpdateMask
    , pjpAccessToken
    , pjpUploadType
    , pjpPayload
    , pjpName
    , pjpCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.jobs.patch@ method which the
-- 'ProjectsJobsPatch' request conforms to.
type ProjectsJobsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudMlV1__Job :>
                         Patch '[JSON] GoogleCloudMlV1__Job

-- | Updates a specific job resource. Currently the only supported fields to
-- update are \`labels\`.
--
-- /See:/ 'projectsJobsPatch' smart constructor.
data ProjectsJobsPatch =
  ProjectsJobsPatch'
    { _pjpXgafv :: !(Maybe Xgafv)
    , _pjpUploadProtocol :: !(Maybe Text)
    , _pjpUpdateMask :: !(Maybe GFieldMask)
    , _pjpAccessToken :: !(Maybe Text)
    , _pjpUploadType :: !(Maybe Text)
    , _pjpPayload :: !GoogleCloudMlV1__Job
    , _pjpName :: !Text
    , _pjpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsJobsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjpXgafv'
--
-- * 'pjpUploadProtocol'
--
-- * 'pjpUpdateMask'
--
-- * 'pjpAccessToken'
--
-- * 'pjpUploadType'
--
-- * 'pjpPayload'
--
-- * 'pjpName'
--
-- * 'pjpCallback'
projectsJobsPatch
    :: GoogleCloudMlV1__Job -- ^ 'pjpPayload'
    -> Text -- ^ 'pjpName'
    -> ProjectsJobsPatch
projectsJobsPatch pPjpPayload_ pPjpName_ =
  ProjectsJobsPatch'
    { _pjpXgafv = Nothing
    , _pjpUploadProtocol = Nothing
    , _pjpUpdateMask = Nothing
    , _pjpAccessToken = Nothing
    , _pjpUploadType = Nothing
    , _pjpPayload = pPjpPayload_
    , _pjpName = pPjpName_
    , _pjpCallback = Nothing
    }


-- | V1 error format.
pjpXgafv :: Lens' ProjectsJobsPatch (Maybe Xgafv)
pjpXgafv = lens _pjpXgafv (\ s a -> s{_pjpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjpUploadProtocol :: Lens' ProjectsJobsPatch (Maybe Text)
pjpUploadProtocol
  = lens _pjpUploadProtocol
      (\ s a -> s{_pjpUploadProtocol = a})

-- | Required. Specifies the path, relative to \`Job\`, of the field to
-- update. To adopt etag mechanism, include \`etag\` field in the mask, and
-- include the \`etag\` value in your job resource. For example, to change
-- the labels of a job, the \`update_mask\` parameter would be specified as
-- \`labels\`, \`etag\`, and the \`PATCH\` request body would specify the
-- new value, as follows: { \"labels\": { \"owner\": \"Google\", \"color\":
-- \"Blue\" } \"etag\": \"33a64df551425fcc55e4d42a148795d9f25f89d4\" } If
-- \`etag\` matches the one on the server, the labels of the job will be
-- replaced with the given ones, and the server end \`etag\` will be
-- recalculated. Currently the only supported update masks are \`labels\`
-- and \`etag\`.
pjpUpdateMask :: Lens' ProjectsJobsPatch (Maybe GFieldMask)
pjpUpdateMask
  = lens _pjpUpdateMask
      (\ s a -> s{_pjpUpdateMask = a})

-- | OAuth access token.
pjpAccessToken :: Lens' ProjectsJobsPatch (Maybe Text)
pjpAccessToken
  = lens _pjpAccessToken
      (\ s a -> s{_pjpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjpUploadType :: Lens' ProjectsJobsPatch (Maybe Text)
pjpUploadType
  = lens _pjpUploadType
      (\ s a -> s{_pjpUploadType = a})

-- | Multipart request metadata.
pjpPayload :: Lens' ProjectsJobsPatch GoogleCloudMlV1__Job
pjpPayload
  = lens _pjpPayload (\ s a -> s{_pjpPayload = a})

-- | Required. The job name.
pjpName :: Lens' ProjectsJobsPatch Text
pjpName = lens _pjpName (\ s a -> s{_pjpName = a})

-- | JSONP
pjpCallback :: Lens' ProjectsJobsPatch (Maybe Text)
pjpCallback
  = lens _pjpCallback (\ s a -> s{_pjpCallback = a})

instance GoogleRequest ProjectsJobsPatch where
        type Rs ProjectsJobsPatch = GoogleCloudMlV1__Job
        type Scopes ProjectsJobsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsJobsPatch'{..}
          = go _pjpName _pjpXgafv _pjpUploadProtocol
              _pjpUpdateMask
              _pjpAccessToken
              _pjpUploadType
              _pjpCallback
              (Just AltJSON)
              _pjpPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsJobsPatchResource)
                      mempty
