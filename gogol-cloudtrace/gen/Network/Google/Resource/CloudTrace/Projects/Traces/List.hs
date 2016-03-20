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
-- Module      : Network.Google.Resource.CloudTrace.Projects.Traces.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns of a list of traces that match the specified filter conditions.
--
-- /See:/ <https://cloud.google.com/tools/cloud-trace Google Cloud Trace API Reference> for @cloudtrace.projects.traces.list@.
module Network.Google.Resource.CloudTrace.Projects.Traces.List
    (
    -- * REST Resource
      ProjectsTracesListResource

    -- * Creating a Request
    , projectsTracesList
    , ProjectsTracesList

    -- * Request Lenses
    , ptlXgafv
    , ptlUploadProtocol
    , ptlOrderBy
    , ptlStartTime
    , ptlPp
    , ptlAccessToken
    , ptlUploadType
    , ptlBearerToken
    , ptlEndTime
    , ptlView
    , ptlFilter
    , ptlPageToken
    , ptlProjectId
    , ptlPageSize
    , ptlCallback
    ) where

import           Network.Google.CloudTrace.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudtrace.projects.traces.list@ method which the
-- 'ProjectsTracesList' request conforms to.
type ProjectsTracesListResource =
     "v1" :>
       "projects" :>
         Capture "projectId" Text :>
           "traces" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "orderBy" Text :>
                   QueryParam "startTime" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "endTime" Text :>
                               QueryParam "view" Text :>
                                 QueryParam "filter" Text :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "pageSize" (Textual Int32) :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] ListTracesResponse

-- | Returns of a list of traces that match the specified filter conditions.
--
-- /See:/ 'projectsTracesList' smart constructor.
data ProjectsTracesList = ProjectsTracesList
    { _ptlXgafv          :: !(Maybe Text)
    , _ptlUploadProtocol :: !(Maybe Text)
    , _ptlOrderBy        :: !(Maybe Text)
    , _ptlStartTime      :: !(Maybe Text)
    , _ptlPp             :: !Bool
    , _ptlAccessToken    :: !(Maybe Text)
    , _ptlUploadType     :: !(Maybe Text)
    , _ptlBearerToken    :: !(Maybe Text)
    , _ptlEndTime        :: !(Maybe Text)
    , _ptlView           :: !(Maybe Text)
    , _ptlFilter         :: !(Maybe Text)
    , _ptlPageToken      :: !(Maybe Text)
    , _ptlProjectId      :: !Text
    , _ptlPageSize       :: !(Maybe (Textual Int32))
    , _ptlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTracesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
-- * 'ptlView'
--
-- * 'ptlFilter'
--
-- * 'ptlPageToken'
--
-- * 'ptlProjectId'
--
-- * 'ptlPageSize'
--
-- * 'ptlCallback'
projectsTracesList
    :: Text -- ^ 'ptlProjectId'
    -> ProjectsTracesList
projectsTracesList pPtlProjectId_ =
    ProjectsTracesList
    { _ptlXgafv = Nothing
    , _ptlUploadProtocol = Nothing
    , _ptlOrderBy = Nothing
    , _ptlStartTime = Nothing
    , _ptlPp = True
    , _ptlAccessToken = Nothing
    , _ptlUploadType = Nothing
    , _ptlBearerToken = Nothing
    , _ptlEndTime = Nothing
    , _ptlView = Nothing
    , _ptlFilter = Nothing
    , _ptlPageToken = Nothing
    , _ptlProjectId = pPtlProjectId_
    , _ptlPageSize = Nothing
    , _ptlCallback = Nothing
    }

-- | V1 error format.
ptlXgafv :: Lens' ProjectsTracesList (Maybe Text)
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

-- | End of the time interval (inclusive) during which the trace data was
-- collected from the application.
ptlStartTime :: Lens' ProjectsTracesList (Maybe Text)
ptlStartTime
  = lens _ptlStartTime (\ s a -> s{_ptlStartTime = a})

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

-- | Start of the time interval (inclusive) during which the trace data was
-- collected from the application.
ptlEndTime :: Lens' ProjectsTracesList (Maybe Text)
ptlEndTime
  = lens _ptlEndTime (\ s a -> s{_ptlEndTime = a})

-- | Type of data returned for traces in the list. Optional. Default is
-- \`MINIMAL\`.
ptlView :: Lens' ProjectsTracesList (Maybe Text)
ptlView = lens _ptlView (\ s a -> s{_ptlView = a})

-- | An optional filter for the request.
ptlFilter :: Lens' ProjectsTracesList (Maybe Text)
ptlFilter
  = lens _ptlFilter (\ s a -> s{_ptlFilter = a})

-- | Token identifying the page of results to return. If provided, use the
-- value of the \`next_page_token\` field from a previous request.
-- Optional.
ptlPageToken :: Lens' ProjectsTracesList (Maybe Text)
ptlPageToken
  = lens _ptlPageToken (\ s a -> s{_ptlPageToken = a})

-- | ID of the Cloud project where the trace data is stored.
ptlProjectId :: Lens' ProjectsTracesList Text
ptlProjectId
  = lens _ptlProjectId (\ s a -> s{_ptlProjectId = a})

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
        requestClient ProjectsTracesList{..}
          = go _ptlProjectId _ptlXgafv _ptlUploadProtocol
              _ptlOrderBy
              _ptlStartTime
              (Just _ptlPp)
              _ptlAccessToken
              _ptlUploadType
              _ptlBearerToken
              _ptlEndTime
              _ptlView
              _ptlFilter
              _ptlPageToken
              _ptlPageSize
              _ptlCallback
              (Just AltJSON)
              cloudTraceService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTracesListResource)
                      mempty
