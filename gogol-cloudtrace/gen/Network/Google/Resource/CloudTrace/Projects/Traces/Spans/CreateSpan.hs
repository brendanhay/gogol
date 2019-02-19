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
-- Module      : Network.Google.Resource.CloudTrace.Projects.Traces.Spans.CreateSpan
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new span.
--
-- /See:/ <https://cloud.google.com/trace Stackdriver Trace API Reference> for @cloudtrace.projects.traces.spans.createSpan@.
module Network.Google.Resource.CloudTrace.Projects.Traces.Spans.CreateSpan
    (
    -- * REST Resource
      ProjectsTracesSpansCreateSpanResource

    -- * Creating a Request
    , projectsTracesSpansCreateSpan
    , ProjectsTracesSpansCreateSpan

    -- * Request Lenses
    , ptscsXgafv
    , ptscsUploadProtocol
    , ptscsAccessToken
    , ptscsUploadType
    , ptscsPayload
    , ptscsName
    , ptscsCallback
    ) where

import           Network.Google.CloudTrace.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudtrace.projects.traces.spans.createSpan@ method which the
-- 'ProjectsTracesSpansCreateSpan' request conforms to.
type ProjectsTracesSpansCreateSpanResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Span :> Post '[JSON] Span

-- | Creates a new span.
--
-- /See:/ 'projectsTracesSpansCreateSpan' smart constructor.
data ProjectsTracesSpansCreateSpan =
  ProjectsTracesSpansCreateSpan'
    { _ptscsXgafv          :: !(Maybe Xgafv)
    , _ptscsUploadProtocol :: !(Maybe Text)
    , _ptscsAccessToken    :: !(Maybe Text)
    , _ptscsUploadType     :: !(Maybe Text)
    , _ptscsPayload        :: !Span
    , _ptscsName           :: !Text
    , _ptscsCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTracesSpansCreateSpan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptscsXgafv'
--
-- * 'ptscsUploadProtocol'
--
-- * 'ptscsAccessToken'
--
-- * 'ptscsUploadType'
--
-- * 'ptscsPayload'
--
-- * 'ptscsName'
--
-- * 'ptscsCallback'
projectsTracesSpansCreateSpan
    :: Span -- ^ 'ptscsPayload'
    -> Text -- ^ 'ptscsName'
    -> ProjectsTracesSpansCreateSpan
projectsTracesSpansCreateSpan pPtscsPayload_ pPtscsName_ =
  ProjectsTracesSpansCreateSpan'
    { _ptscsXgafv = Nothing
    , _ptscsUploadProtocol = Nothing
    , _ptscsAccessToken = Nothing
    , _ptscsUploadType = Nothing
    , _ptscsPayload = pPtscsPayload_
    , _ptscsName = pPtscsName_
    , _ptscsCallback = Nothing
    }


-- | V1 error format.
ptscsXgafv :: Lens' ProjectsTracesSpansCreateSpan (Maybe Xgafv)
ptscsXgafv
  = lens _ptscsXgafv (\ s a -> s{_ptscsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptscsUploadProtocol :: Lens' ProjectsTracesSpansCreateSpan (Maybe Text)
ptscsUploadProtocol
  = lens _ptscsUploadProtocol
      (\ s a -> s{_ptscsUploadProtocol = a})

-- | OAuth access token.
ptscsAccessToken :: Lens' ProjectsTracesSpansCreateSpan (Maybe Text)
ptscsAccessToken
  = lens _ptscsAccessToken
      (\ s a -> s{_ptscsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptscsUploadType :: Lens' ProjectsTracesSpansCreateSpan (Maybe Text)
ptscsUploadType
  = lens _ptscsUploadType
      (\ s a -> s{_ptscsUploadType = a})

-- | Multipart request metadata.
ptscsPayload :: Lens' ProjectsTracesSpansCreateSpan Span
ptscsPayload
  = lens _ptscsPayload (\ s a -> s{_ptscsPayload = a})

-- | The resource name of the span in the following format:
-- projects\/[PROJECT_ID]\/traces\/[TRACE_ID]\/spans\/SPAN_ID is a unique
-- identifier for a trace within a project; it is a 32-character
-- hexadecimal encoding of a 16-byte array. [SPAN_ID] is a unique
-- identifier for a span within a trace; it is a 16-character hexadecimal
-- encoding of an 8-byte array.
ptscsName :: Lens' ProjectsTracesSpansCreateSpan Text
ptscsName
  = lens _ptscsName (\ s a -> s{_ptscsName = a})

-- | JSONP
ptscsCallback :: Lens' ProjectsTracesSpansCreateSpan (Maybe Text)
ptscsCallback
  = lens _ptscsCallback
      (\ s a -> s{_ptscsCallback = a})

instance GoogleRequest ProjectsTracesSpansCreateSpan
         where
        type Rs ProjectsTracesSpansCreateSpan = Span
        type Scopes ProjectsTracesSpansCreateSpan =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/trace.append"]
        requestClient ProjectsTracesSpansCreateSpan'{..}
          = go _ptscsName _ptscsXgafv _ptscsUploadProtocol
              _ptscsAccessToken
              _ptscsUploadType
              _ptscsCallback
              (Just AltJSON)
              _ptscsPayload
              cloudTraceService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsTracesSpansCreateSpanResource)
                      mempty
