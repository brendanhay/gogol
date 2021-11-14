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
-- Module      : Network.Google.Resource.CloudTrace.Projects.Traces.BatchWrite
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends new spans to new or existing traces. You cannot update existing
-- spans.
--
-- /See:/ <https://cloud.google.com/trace Cloud Trace API Reference> for @cloudtrace.projects.traces.batchWrite@.
module Network.Google.Resource.CloudTrace.Projects.Traces.BatchWrite
    (
    -- * REST Resource
      ProjectsTracesBatchWriteResource

    -- * Creating a Request
    , projectsTracesBatchWrite
    , ProjectsTracesBatchWrite

    -- * Request Lenses
    , ptbwXgafv
    , ptbwUploadProtocol
    , ptbwAccessToken
    , ptbwUploadType
    , ptbwPayload
    , ptbwName
    , ptbwCallback
    ) where

import Network.Google.CloudTrace.Types
import Network.Google.Prelude

-- | A resource alias for @cloudtrace.projects.traces.batchWrite@ method which the
-- 'ProjectsTracesBatchWrite' request conforms to.
type ProjectsTracesBatchWriteResource =
     "v2" :>
       Capture "name" Text :>
         "traces:batchWrite" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BatchWriteSpansRequest :>
                         Post '[JSON] Empty

-- | Sends new spans to new or existing traces. You cannot update existing
-- spans.
--
-- /See:/ 'projectsTracesBatchWrite' smart constructor.
data ProjectsTracesBatchWrite =
  ProjectsTracesBatchWrite'
    { _ptbwXgafv :: !(Maybe Xgafv)
    , _ptbwUploadProtocol :: !(Maybe Text)
    , _ptbwAccessToken :: !(Maybe Text)
    , _ptbwUploadType :: !(Maybe Text)
    , _ptbwPayload :: !BatchWriteSpansRequest
    , _ptbwName :: !Text
    , _ptbwCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTracesBatchWrite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptbwXgafv'
--
-- * 'ptbwUploadProtocol'
--
-- * 'ptbwAccessToken'
--
-- * 'ptbwUploadType'
--
-- * 'ptbwPayload'
--
-- * 'ptbwName'
--
-- * 'ptbwCallback'
projectsTracesBatchWrite
    :: BatchWriteSpansRequest -- ^ 'ptbwPayload'
    -> Text -- ^ 'ptbwName'
    -> ProjectsTracesBatchWrite
projectsTracesBatchWrite pPtbwPayload_ pPtbwName_ =
  ProjectsTracesBatchWrite'
    { _ptbwXgafv = Nothing
    , _ptbwUploadProtocol = Nothing
    , _ptbwAccessToken = Nothing
    , _ptbwUploadType = Nothing
    , _ptbwPayload = pPtbwPayload_
    , _ptbwName = pPtbwName_
    , _ptbwCallback = Nothing
    }


-- | V1 error format.
ptbwXgafv :: Lens' ProjectsTracesBatchWrite (Maybe Xgafv)
ptbwXgafv
  = lens _ptbwXgafv (\ s a -> s{_ptbwXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptbwUploadProtocol :: Lens' ProjectsTracesBatchWrite (Maybe Text)
ptbwUploadProtocol
  = lens _ptbwUploadProtocol
      (\ s a -> s{_ptbwUploadProtocol = a})

-- | OAuth access token.
ptbwAccessToken :: Lens' ProjectsTracesBatchWrite (Maybe Text)
ptbwAccessToken
  = lens _ptbwAccessToken
      (\ s a -> s{_ptbwAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptbwUploadType :: Lens' ProjectsTracesBatchWrite (Maybe Text)
ptbwUploadType
  = lens _ptbwUploadType
      (\ s a -> s{_ptbwUploadType = a})

-- | Multipart request metadata.
ptbwPayload :: Lens' ProjectsTracesBatchWrite BatchWriteSpansRequest
ptbwPayload
  = lens _ptbwPayload (\ s a -> s{_ptbwPayload = a})

-- | Required. The name of the project where the spans belong. The format is
-- \`projects\/[PROJECT_ID]\`.
ptbwName :: Lens' ProjectsTracesBatchWrite Text
ptbwName = lens _ptbwName (\ s a -> s{_ptbwName = a})

-- | JSONP
ptbwCallback :: Lens' ProjectsTracesBatchWrite (Maybe Text)
ptbwCallback
  = lens _ptbwCallback (\ s a -> s{_ptbwCallback = a})

instance GoogleRequest ProjectsTracesBatchWrite where
        type Rs ProjectsTracesBatchWrite = Empty
        type Scopes ProjectsTracesBatchWrite =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/trace.append"]
        requestClient ProjectsTracesBatchWrite'{..}
          = go _ptbwName _ptbwXgafv _ptbwUploadProtocol
              _ptbwAccessToken
              _ptbwUploadType
              _ptbwCallback
              (Just AltJSON)
              _ptbwPayload
              cloudTraceService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTracesBatchWriteResource)
                      mempty
