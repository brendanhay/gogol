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
-- Module      : Network.Google.Resource.Tracing.Projects.Traces.Spans.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Span.
--
-- /See:/ <https://cloud.google.com/trace Google Tracing API Reference> for @tracing.projects.traces.spans.create@.
module Network.Google.Resource.Tracing.Projects.Traces.Spans.Create
    (
    -- * REST Resource
      ProjectsTracesSpansCreateResource

    -- * Creating a Request
    , projectsTracesSpansCreate
    , ProjectsTracesSpansCreate

    -- * Request Lenses
    , ptscXgafv
    , ptscUploadProtocol
    , ptscPp
    , ptscAccessToken
    , ptscUploadType
    , ptscPayload
    , ptscBearerToken
    , ptscName
    , ptscCallback
    ) where

import Network.Google.Prelude
import Network.Google.Tracing.Types

-- | A resource alias for @tracing.projects.traces.spans.create@ method which the
-- 'ProjectsTracesSpansCreate' request conforms to.
type ProjectsTracesSpansCreateResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Span :> Put '[JSON] Span

-- | Creates a new Span.
--
-- /See:/ 'projectsTracesSpansCreate' smart constructor.
data ProjectsTracesSpansCreate =
  ProjectsTracesSpansCreate'
    { _ptscXgafv :: !(Maybe Xgafv)
    , _ptscUploadProtocol :: !(Maybe Text)
    , _ptscPp :: !Bool
    , _ptscAccessToken :: !(Maybe Text)
    , _ptscUploadType :: !(Maybe Text)
    , _ptscPayload :: !Span
    , _ptscBearerToken :: !(Maybe Text)
    , _ptscName :: !Text
    , _ptscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTracesSpansCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptscXgafv'
--
-- * 'ptscUploadProtocol'
--
-- * 'ptscPp'
--
-- * 'ptscAccessToken'
--
-- * 'ptscUploadType'
--
-- * 'ptscPayload'
--
-- * 'ptscBearerToken'
--
-- * 'ptscName'
--
-- * 'ptscCallback'
projectsTracesSpansCreate
    :: Span -- ^ 'ptscPayload'
    -> Text -- ^ 'ptscName'
    -> ProjectsTracesSpansCreate
projectsTracesSpansCreate pPtscPayload_ pPtscName_ =
  ProjectsTracesSpansCreate'
    { _ptscXgafv = Nothing
    , _ptscUploadProtocol = Nothing
    , _ptscPp = True
    , _ptscAccessToken = Nothing
    , _ptscUploadType = Nothing
    , _ptscPayload = pPtscPayload_
    , _ptscBearerToken = Nothing
    , _ptscName = pPtscName_
    , _ptscCallback = Nothing
    }


-- | V1 error format.
ptscXgafv :: Lens' ProjectsTracesSpansCreate (Maybe Xgafv)
ptscXgafv
  = lens _ptscXgafv (\ s a -> s{_ptscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptscUploadProtocol :: Lens' ProjectsTracesSpansCreate (Maybe Text)
ptscUploadProtocol
  = lens _ptscUploadProtocol
      (\ s a -> s{_ptscUploadProtocol = a})

-- | Pretty-print response.
ptscPp :: Lens' ProjectsTracesSpansCreate Bool
ptscPp = lens _ptscPp (\ s a -> s{_ptscPp = a})

-- | OAuth access token.
ptscAccessToken :: Lens' ProjectsTracesSpansCreate (Maybe Text)
ptscAccessToken
  = lens _ptscAccessToken
      (\ s a -> s{_ptscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptscUploadType :: Lens' ProjectsTracesSpansCreate (Maybe Text)
ptscUploadType
  = lens _ptscUploadType
      (\ s a -> s{_ptscUploadType = a})

-- | Multipart request metadata.
ptscPayload :: Lens' ProjectsTracesSpansCreate Span
ptscPayload
  = lens _ptscPayload (\ s a -> s{_ptscPayload = a})

-- | OAuth bearer token.
ptscBearerToken :: Lens' ProjectsTracesSpansCreate (Maybe Text)
ptscBearerToken
  = lens _ptscBearerToken
      (\ s a -> s{_ptscBearerToken = a})

-- | The resource name of Span in the format
-- \`projects\/PROJECT_ID\/traces\/TRACE_ID\/spans\/SPAN_ID\`. \`TRACE_ID\`
-- is a unique identifier for a trace within a project and is a
-- base16-encoded, case-insensitive string and is required to be 32 char
-- long. \`SPAN_ID\` is a unique identifier for a span within a trace. It
-- is a base 16-encoded, case-insensitive string of a 8-bytes array and is
-- required to be 16 char long.
ptscName :: Lens' ProjectsTracesSpansCreate Text
ptscName = lens _ptscName (\ s a -> s{_ptscName = a})

-- | JSONP
ptscCallback :: Lens' ProjectsTracesSpansCreate (Maybe Text)
ptscCallback
  = lens _ptscCallback (\ s a -> s{_ptscCallback = a})

instance GoogleRequest ProjectsTracesSpansCreate
         where
        type Rs ProjectsTracesSpansCreate = Span
        type Scopes ProjectsTracesSpansCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/trace.append"]
        requestClient ProjectsTracesSpansCreate'{..}
          = go _ptscName _ptscXgafv _ptscUploadProtocol
              (Just _ptscPp)
              _ptscAccessToken
              _ptscUploadType
              _ptscBearerToken
              _ptscCallback
              (Just AltJSON)
              _ptscPayload
              tracingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTracesSpansCreateResource)
                      mempty
