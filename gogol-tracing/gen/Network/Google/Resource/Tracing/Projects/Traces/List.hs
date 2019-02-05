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
-- Module      : Network.Google.Resource.Tracing.Projects.Traces.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns of a list of traces that match the specified filter conditions.
--
-- /See:/ <https://cloud.google.com/trace Google Tracing API Reference> for @tracing.projects.traces.list@.
module Network.Google.Resource.Tracing.Projects.Traces.List
    (
    -- * REST Resource
      ProjectsTracesListResource

    -- * Creating a Request
    , projectsTracesList
    , ProjectsTracesList

    -- * Request Lenses
    , ptlParent
    , ptlXgafv
    , ptlUploadProtocol
    , ptlOrderBy
    , ptlStartTime
    , ptlPp
    , ptlAccessToken
    , ptlUploadType
    , ptlBearerToken
    , ptlEndTime
    , ptlFilter
    , ptlPageToken
    , ptlPageSize
    , ptlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Tracing.Types

-- | A resource alias for @tracing.projects.traces.list@ method which the
-- 'ProjectsTracesList' request conforms to.
type ProjectsTracesListResource =
     "v2" :>
       Capture "parent" Text :>
         "traces" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "startTime" DateTime' :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "endTime" DateTime' :>
                             QueryParam "filter" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "pageSize" (Textual Int32) :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] ListTracesResponse

-- | Returns of a list of traces that match the specified filter conditions.
--
-- /See:/ 'projectsTracesList' smart constructor.
data ProjectsTracesList = ProjectsTracesList'
    { _ptlParent         :: !Text
    , _ptlXgafv          :: !(Maybe Xgafv)
    , _ptlUploadProtocol :: !(Maybe Text)
    , _ptlOrderBy        :: !(Maybe Text)
    , _ptlStartTime      :: !(Maybe DateTime')
    , _ptlPp             :: !Bool
    , _ptlAccessToken    :: !(Maybe Text)
    , _ptlUploadType     :: !(Maybe Text)
    , _ptlBearerToken    :: !(Maybe Text)
    , _ptlEndTime        :: !(Maybe DateTime')
    , _ptlFilter         :: !(Maybe Text)
    , _ptlPageToken      :: !(Maybe Text)
    , _ptlPageSize       :: !(Maybe (Textual Int32))
    , _ptlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTracesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptlParent'
--
-- * 'ptlXgafv'
--
-- * 'ptlUploadProtocol'
--
-- * 'ptlOrderBy'
--
-- * 'ptlStartTime'
--
-- * 'ptlPp'
--
-- * 'ptlAccessToken'
--
-- * 'ptlUploadType'
--
-- * 'ptlBearerToken'
--
-- * 'ptlEndTime'
--
-- * 'ptlFilter'
--
-- * 'ptlPageToken'
--
-- * 'ptlPageSize'
--
-- * 'ptlCallback'
projectsTracesList
    :: Text -- ^ 'ptlParent'
    -> ProjectsTracesList
projectsTracesList pPtlParent_ =
    ProjectsTracesList'
    { _ptlParent = pPtlParent_
    , _ptlXgafv = Nothing
    , _ptlUploadProtocol = Nothing
    , _ptlOrderBy = Nothing
    , _ptlStartTime = Nothing
    , _ptlPp = True
    , _ptlAccessToken = Nothing
    , _ptlUploadType = Nothing
    , _ptlBearerToken = Nothing
    , _ptlEndTime = Nothing
    , _ptlFilter = Nothing
    , _ptlPageToken = Nothing
    , _ptlPageSize = Nothing
    , _ptlCallback = Nothing
    }

-- | ID of the Cloud project where the trace data is stored which is
-- \`projects\/PROJECT_ID\`.
ptlParent :: Lens' ProjectsTracesList Text
ptlParent
  = lens _ptlParent (\ s a -> s{_ptlParent = a})

-- | V1 error format.
ptlXgafv :: Lens' ProjectsTracesList (Maybe Xgafv)
ptlXgafv = lens _ptlXgafv (\ s a -> s{_ptlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptlUploadProtocol :: Lens' ProjectsTracesList (Maybe Text)
ptlUploadProtocol
  = lens _ptlUploadProtocol
      (\ s a -> s{_ptlUploadProtocol = a})

-- | Field used to sort the returned traces. Optional. Can be one of the
-- following: * \`trace_id\` * \`name\` (\`name\` field of root span in the
-- trace) * \`duration\` (difference between \`end_time\` and
-- \`start_time\` fields of the root span) * \`start\` (\`start_time\`
-- field of the root span) Descending order can be specified by appending
-- \`desc\` to the sort field (for example, \`name desc\`). Only one sort
-- field is permitted.
ptlOrderBy :: Lens' ProjectsTracesList (Maybe Text)
ptlOrderBy
  = lens _ptlOrderBy (\ s a -> s{_ptlOrderBy = a})

-- | Start of the time interval (inclusive) during which the trace data was
-- collected from the application.
ptlStartTime :: Lens' ProjectsTracesList (Maybe UTCTime)
ptlStartTime
  = lens _ptlStartTime (\ s a -> s{_ptlStartTime = a})
      . mapping _DateTime

-- | Pretty-print response.
ptlPp :: Lens' ProjectsTracesList Bool
ptlPp = lens _ptlPp (\ s a -> s{_ptlPp = a})

-- | OAuth access token.
ptlAccessToken :: Lens' ProjectsTracesList (Maybe Text)
ptlAccessToken
  = lens _ptlAccessToken
      (\ s a -> s{_ptlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptlUploadType :: Lens' ProjectsTracesList (Maybe Text)
ptlUploadType
  = lens _ptlUploadType
      (\ s a -> s{_ptlUploadType = a})

-- | OAuth bearer token.
ptlBearerToken :: Lens' ProjectsTracesList (Maybe Text)
ptlBearerToken
  = lens _ptlBearerToken
      (\ s a -> s{_ptlBearerToken = a})

-- | End of the time interval (inclusive) during which the trace data was
-- collected from the application.
ptlEndTime :: Lens' ProjectsTracesList (Maybe UTCTime)
ptlEndTime
  = lens _ptlEndTime (\ s a -> s{_ptlEndTime = a}) .
      mapping _DateTime

-- | An optional filter for the request. Example: \`version_label_key:a
-- some_label:some_label_key\` returns traces from version \`a\` and has
-- \`some_label\` with \`some_label_key\`.
ptlFilter :: Lens' ProjectsTracesList (Maybe Text)
ptlFilter
  = lens _ptlFilter (\ s a -> s{_ptlFilter = a})

-- | Token identifying the page of results to return. If provided, use the
-- value of the \`next_page_token\` field from a previous request.
-- Optional.
ptlPageToken :: Lens' ProjectsTracesList (Maybe Text)
ptlPageToken
  = lens _ptlPageToken (\ s a -> s{_ptlPageToken = a})

-- | Maximum number of traces to return. If not specified or \<= 0, the
-- implementation selects a reasonable value. The implementation may return
-- fewer traces than the requested page size. Optional.
ptlPageSize :: Lens' ProjectsTracesList (Maybe Int32)
ptlPageSize
  = lens _ptlPageSize (\ s a -> s{_ptlPageSize = a}) .
      mapping _Coerce

-- | JSONP
ptlCallback :: Lens' ProjectsTracesList (Maybe Text)
ptlCallback
  = lens _ptlCallback (\ s a -> s{_ptlCallback = a})

instance GoogleRequest ProjectsTracesList where
        type Rs ProjectsTracesList = ListTracesResponse
        type Scopes ProjectsTracesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/trace.readonly"]
        requestClient ProjectsTracesList'{..}
          = go _ptlParent _ptlXgafv _ptlUploadProtocol
              _ptlOrderBy
              _ptlStartTime
              (Just _ptlPp)
              _ptlAccessToken
              _ptlUploadType
              _ptlBearerToken
              _ptlEndTime
              _ptlFilter
              _ptlPageToken
              _ptlPageSize
              _ptlCallback
              (Just AltJSON)
              tracingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTracesListResource)
                      mempty
