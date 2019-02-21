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
-- Module      : Network.Google.Resource.Tracing.Projects.Traces.ListSpans
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of spans within a trace.
--
-- /See:/ <https://cloud.google.com/trace Google Tracing API Reference> for @tracing.projects.traces.listSpans@.
module Network.Google.Resource.Tracing.Projects.Traces.ListSpans
    (
    -- * REST Resource
      ProjectsTracesListSpansResource

    -- * Creating a Request
    , projectsTracesListSpans
    , ProjectsTracesListSpans

    -- * Request Lenses
    , ptlsParent
    , ptlsXgafv
    , ptlsUploadProtocol
    , ptlsPp
    , ptlsAccessToken
    , ptlsUploadType
    , ptlsBearerToken
    , ptlsPageToken
    , ptlsCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Tracing.Types

-- | A resource alias for @tracing.projects.traces.listSpans@ method which the
-- 'ProjectsTracesListSpans' request conforms to.
type ProjectsTracesListSpansResource =
     "v2" :>
       CaptureMode "parent" "listSpans" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListSpansResponse

-- | Returns a list of spans within a trace.
--
-- /See:/ 'projectsTracesListSpans' smart constructor.
data ProjectsTracesListSpans =
  ProjectsTracesListSpans'
    { _ptlsParent         :: !Text
    , _ptlsXgafv          :: !(Maybe Xgafv)
    , _ptlsUploadProtocol :: !(Maybe Text)
    , _ptlsPp             :: !Bool
    , _ptlsAccessToken    :: !(Maybe Text)
    , _ptlsUploadType     :: !(Maybe Text)
    , _ptlsBearerToken    :: !(Maybe Text)
    , _ptlsPageToken      :: !(Maybe Text)
    , _ptlsCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTracesListSpans' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptlsParent'
--
-- * 'ptlsXgafv'
--
-- * 'ptlsUploadProtocol'
--
-- * 'ptlsPp'
--
-- * 'ptlsAccessToken'
--
-- * 'ptlsUploadType'
--
-- * 'ptlsBearerToken'
--
-- * 'ptlsPageToken'
--
-- * 'ptlsCallback'
projectsTracesListSpans
    :: Text -- ^ 'ptlsParent'
    -> ProjectsTracesListSpans
projectsTracesListSpans pPtlsParent_ =
  ProjectsTracesListSpans'
    { _ptlsParent = pPtlsParent_
    , _ptlsXgafv = Nothing
    , _ptlsUploadProtocol = Nothing
    , _ptlsPp = True
    , _ptlsAccessToken = Nothing
    , _ptlsUploadType = Nothing
    , _ptlsBearerToken = Nothing
    , _ptlsPageToken = Nothing
    , _ptlsCallback = Nothing
    }


-- | ID of the trace for which to list child spans. Format is
-- \`projects\/PROJECT_ID\/traces\/TRACE_ID\`.
ptlsParent :: Lens' ProjectsTracesListSpans Text
ptlsParent
  = lens _ptlsParent (\ s a -> s{_ptlsParent = a})

-- | V1 error format.
ptlsXgafv :: Lens' ProjectsTracesListSpans (Maybe Xgafv)
ptlsXgafv
  = lens _ptlsXgafv (\ s a -> s{_ptlsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptlsUploadProtocol :: Lens' ProjectsTracesListSpans (Maybe Text)
ptlsUploadProtocol
  = lens _ptlsUploadProtocol
      (\ s a -> s{_ptlsUploadProtocol = a})

-- | Pretty-print response.
ptlsPp :: Lens' ProjectsTracesListSpans Bool
ptlsPp = lens _ptlsPp (\ s a -> s{_ptlsPp = a})

-- | OAuth access token.
ptlsAccessToken :: Lens' ProjectsTracesListSpans (Maybe Text)
ptlsAccessToken
  = lens _ptlsAccessToken
      (\ s a -> s{_ptlsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptlsUploadType :: Lens' ProjectsTracesListSpans (Maybe Text)
ptlsUploadType
  = lens _ptlsUploadType
      (\ s a -> s{_ptlsUploadType = a})

-- | OAuth bearer token.
ptlsBearerToken :: Lens' ProjectsTracesListSpans (Maybe Text)
ptlsBearerToken
  = lens _ptlsBearerToken
      (\ s a -> s{_ptlsBearerToken = a})

-- | Token identifying the page of results to return. If provided, use the
-- value of the \`nextPageToken\` field from a previous request. Optional.
ptlsPageToken :: Lens' ProjectsTracesListSpans (Maybe Text)
ptlsPageToken
  = lens _ptlsPageToken
      (\ s a -> s{_ptlsPageToken = a})

-- | JSONP
ptlsCallback :: Lens' ProjectsTracesListSpans (Maybe Text)
ptlsCallback
  = lens _ptlsCallback (\ s a -> s{_ptlsCallback = a})

instance GoogleRequest ProjectsTracesListSpans where
        type Rs ProjectsTracesListSpans = ListSpansResponse
        type Scopes ProjectsTracesListSpans =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/trace.readonly"]
        requestClient ProjectsTracesListSpans'{..}
          = go _ptlsParent _ptlsXgafv _ptlsUploadProtocol
              (Just _ptlsPp)
              _ptlsAccessToken
              _ptlsUploadType
              _ptlsBearerToken
              _ptlsPageToken
              _ptlsCallback
              (Just AltJSON)
              tracingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTracesListSpansResource)
                      mempty
