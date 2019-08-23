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
-- Module      : Network.Google.Resource.Tracing.Projects.Traces.BatchWrite
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends new spans to Stackdriver Trace or updates existing traces. If the
-- name of a trace that you send matches that of an existing trace, new
-- spans are added to the existing trace. Attempt to update existing spans
-- results undefined behavior. If the name does not match, a new trace is
-- created with given set of spans.
--
-- /See:/ <https://cloud.google.com/trace Google Tracing API Reference> for @tracing.projects.traces.batchWrite@.
module Network.Google.Resource.Tracing.Projects.Traces.BatchWrite
    (
    -- * REST Resource
      ProjectsTracesBatchWriteResource

    -- * Creating a Request
    , projectsTracesBatchWrite
    , ProjectsTracesBatchWrite

    -- * Request Lenses
    , ptbwXgafv
    , ptbwUploadProtocol
    , ptbwPp
    , ptbwAccessToken
    , ptbwUploadType
    , ptbwPayload
    , ptbwBearerToken
    , ptbwName
    , ptbwCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Tracing.Types

-- | A resource alias for @tracing.projects.traces.batchWrite@ method which the
-- 'ProjectsTracesBatchWrite' request conforms to.
type ProjectsTracesBatchWriteResource =
     "v2" :>
       Capture "name" Text :>
         "traces:batchWrite" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] BatchWriteSpansRequest :>
                             Post '[JSON] Empty

-- | Sends new spans to Stackdriver Trace or updates existing traces. If the
-- name of a trace that you send matches that of an existing trace, new
-- spans are added to the existing trace. Attempt to update existing spans
-- results undefined behavior. If the name does not match, a new trace is
-- created with given set of spans.
--
-- /See:/ 'projectsTracesBatchWrite' smart constructor.
data ProjectsTracesBatchWrite =
  ProjectsTracesBatchWrite'
    { _ptbwXgafv          :: !(Maybe Xgafv)
    , _ptbwUploadProtocol :: !(Maybe Text)
    , _ptbwPp             :: !Bool
    , _ptbwAccessToken    :: !(Maybe Text)
    , _ptbwUploadType     :: !(Maybe Text)
    , _ptbwPayload        :: !BatchWriteSpansRequest
    , _ptbwBearerToken    :: !(Maybe Text)
    , _ptbwName           :: !Text
    , _ptbwCallback       :: !(Maybe Text)
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
-- * 'ptbwPp'
--
-- * 'ptbwAccessToken'
--
-- * 'ptbwUploadType'
--
-- * 'ptbwPayload'
--
-- * 'ptbwBearerToken'
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
    , _ptbwPp = True
    , _ptbwAccessToken = Nothing
    , _ptbwUploadType = Nothing
    , _ptbwPayload = pPtbwPayload_
    , _ptbwBearerToken = Nothing
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

-- | Pretty-print response.
ptbwPp :: Lens' ProjectsTracesBatchWrite Bool
ptbwPp = lens _ptbwPp (\ s a -> s{_ptbwPp = a})

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

-- | OAuth bearer token.
ptbwBearerToken :: Lens' ProjectsTracesBatchWrite (Maybe Text)
ptbwBearerToken
  = lens _ptbwBearerToken
      (\ s a -> s{_ptbwBearerToken = a})

-- | Name of the project where the spans belong to. Format is
-- \`projects\/PROJECT_ID\`.
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
              (Just _ptbwPp)
              _ptbwAccessToken
              _ptbwUploadType
              _ptbwBearerToken
              _ptbwCallback
              (Just AltJSON)
              _ptbwPayload
              tracingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTracesBatchWriteResource)
                      mempty
