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
-- Module      : Network.Google.Resource.BigQuery.Jobs.GetQueryResults
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the results of a query job.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.getQueryResults@.
module Network.Google.Resource.BigQuery.Jobs.GetQueryResults
    (
    -- * REST Resource
      JobsGetQueryResultsResource

    -- * Creating a Request
    , jobsGetQueryResults
    , JobsGetQueryResults

    -- * Request Lenses
    , jgqrJobId
    , jgqrLocation
    , jgqrTimeoutMs
    , jgqrPageToken
    , jgqrProjectId
    , jgqrStartIndex
    , jgqrMaxResults
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.jobs.getQueryResults@ method which the
-- 'JobsGetQueryResults' request conforms to.
type JobsGetQueryResultsResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "queries" :>
               Capture "jobId" Text :>
                 QueryParam "location" Text :>
                   QueryParam "timeoutMs" (Textual Word32) :>
                     QueryParam "pageToken" Text :>
                       QueryParam "startIndex" (Textual Word64) :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] GetQueryResultsResponse

-- | Retrieves the results of a query job.
--
-- /See:/ 'jobsGetQueryResults' smart constructor.
data JobsGetQueryResults =
  JobsGetQueryResults'
    { _jgqrJobId :: !Text
    , _jgqrLocation :: !(Maybe Text)
    , _jgqrTimeoutMs :: !(Maybe (Textual Word32))
    , _jgqrPageToken :: !(Maybe Text)
    , _jgqrProjectId :: !Text
    , _jgqrStartIndex :: !(Maybe (Textual Word64))
    , _jgqrMaxResults :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobsGetQueryResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jgqrJobId'
--
-- * 'jgqrLocation'
--
-- * 'jgqrTimeoutMs'
--
-- * 'jgqrPageToken'
--
-- * 'jgqrProjectId'
--
-- * 'jgqrStartIndex'
--
-- * 'jgqrMaxResults'
jobsGetQueryResults
    :: Text -- ^ 'jgqrJobId'
    -> Text -- ^ 'jgqrProjectId'
    -> JobsGetQueryResults
jobsGetQueryResults pJgqrJobId_ pJgqrProjectId_ =
  JobsGetQueryResults'
    { _jgqrJobId = pJgqrJobId_
    , _jgqrLocation = Nothing
    , _jgqrTimeoutMs = Nothing
    , _jgqrPageToken = Nothing
    , _jgqrProjectId = pJgqrProjectId_
    , _jgqrStartIndex = Nothing
    , _jgqrMaxResults = Nothing
    }


-- | [Required] Job ID of the query job
jgqrJobId :: Lens' JobsGetQueryResults Text
jgqrJobId
  = lens _jgqrJobId (\ s a -> s{_jgqrJobId = a})

-- | The geographic location where the job should run. Required except for US
-- and EU. See details at
-- https:\/\/cloud.google.com\/bigquery\/docs\/locations#specifying_your_location.
jgqrLocation :: Lens' JobsGetQueryResults (Maybe Text)
jgqrLocation
  = lens _jgqrLocation (\ s a -> s{_jgqrLocation = a})

-- | How long to wait for the query to complete, in milliseconds, before
-- returning. Default is 10 seconds. If the timeout passes before the job
-- completes, the \'jobComplete\' field in the response will be false
jgqrTimeoutMs :: Lens' JobsGetQueryResults (Maybe Word32)
jgqrTimeoutMs
  = lens _jgqrTimeoutMs
      (\ s a -> s{_jgqrTimeoutMs = a})
      . mapping _Coerce

-- | Page token, returned by a previous call, to request the next page of
-- results
jgqrPageToken :: Lens' JobsGetQueryResults (Maybe Text)
jgqrPageToken
  = lens _jgqrPageToken
      (\ s a -> s{_jgqrPageToken = a})

-- | [Required] Project ID of the query job
jgqrProjectId :: Lens' JobsGetQueryResults Text
jgqrProjectId
  = lens _jgqrProjectId
      (\ s a -> s{_jgqrProjectId = a})

-- | Zero-based index of the starting row
jgqrStartIndex :: Lens' JobsGetQueryResults (Maybe Word64)
jgqrStartIndex
  = lens _jgqrStartIndex
      (\ s a -> s{_jgqrStartIndex = a})
      . mapping _Coerce

-- | Maximum number of results to read
jgqrMaxResults :: Lens' JobsGetQueryResults (Maybe Word32)
jgqrMaxResults
  = lens _jgqrMaxResults
      (\ s a -> s{_jgqrMaxResults = a})
      . mapping _Coerce

instance GoogleRequest JobsGetQueryResults where
        type Rs JobsGetQueryResults = GetQueryResultsResponse
        type Scopes JobsGetQueryResults =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient JobsGetQueryResults'{..}
          = go _jgqrProjectId _jgqrJobId _jgqrLocation
              _jgqrTimeoutMs
              _jgqrPageToken
              _jgqrStartIndex
              _jgqrMaxResults
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient
                      (Proxy :: Proxy JobsGetQueryResultsResource)
                      mempty
