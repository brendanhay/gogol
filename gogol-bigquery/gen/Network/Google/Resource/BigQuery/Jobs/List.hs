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
-- Module      : Network.Google.Resource.BigQuery.Jobs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all jobs that you started in the specified project. Job
-- information is available for a six month period after creation. The job
-- list is sorted in reverse chronological order, by job creation time.
-- Requires the Can View project role, or the Is Owner project role if you
-- set the allUsers property.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.list@.
module Network.Google.Resource.BigQuery.Jobs.List
    (
    -- * REST Resource
      JobsListResource

    -- * Creating a Request
    , jobsList
    , JobsList

    -- * Request Lenses
    , jlMaxCreationTime
    , jlMinCreationTime
    , jlStateFilter
    , jlProjection
    , jlPageToken
    , jlProjectId
    , jlAllUsers
    , jlMaxResults
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquery.jobs.list@ method which the
-- 'JobsList' request conforms to.
type JobsListResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "jobs" :>
               QueryParam "maxCreationTime" (Textual Word64) :>
                 QueryParam "minCreationTime" (Textual Word64) :>
                   QueryParams "stateFilter" JobsListStateFilter :>
                     QueryParam "projection" JobsListProjection :>
                       QueryParam "pageToken" Text :>
                         QueryParam "allUsers" Bool :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "alt" AltJSON :> Get '[JSON] JobList

-- | Lists all jobs that you started in the specified project. Job
-- information is available for a six month period after creation. The job
-- list is sorted in reverse chronological order, by job creation time.
-- Requires the Can View project role, or the Is Owner project role if you
-- set the allUsers property.
--
-- /See:/ 'jobsList' smart constructor.
data JobsList = JobsList'
    { _jlMaxCreationTime :: !(Maybe (Textual Word64))
    , _jlMinCreationTime :: !(Maybe (Textual Word64))
    , _jlStateFilter     :: !(Maybe [JobsListStateFilter])
    , _jlProjection      :: !(Maybe JobsListProjection)
    , _jlPageToken       :: !(Maybe Text)
    , _jlProjectId       :: !Text
    , _jlAllUsers        :: !(Maybe Bool)
    , _jlMaxResults      :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jlMaxCreationTime'
--
-- * 'jlMinCreationTime'
--
-- * 'jlStateFilter'
--
-- * 'jlProjection'
--
-- * 'jlPageToken'
--
-- * 'jlProjectId'
--
-- * 'jlAllUsers'
--
-- * 'jlMaxResults'
jobsList
    :: Text -- ^ 'jlProjectId'
    -> JobsList
jobsList pJlProjectId_ =
    JobsList'
    { _jlMaxCreationTime = Nothing
    , _jlMinCreationTime = Nothing
    , _jlStateFilter = Nothing
    , _jlProjection = Nothing
    , _jlPageToken = Nothing
    , _jlProjectId = pJlProjectId_
    , _jlAllUsers = Nothing
    , _jlMaxResults = Nothing
    }

-- | Max value for job creation time, in milliseconds since the POSIX epoch.
-- If set, only jobs created before or at this timestamp are returned
jlMaxCreationTime :: Lens' JobsList (Maybe Word64)
jlMaxCreationTime
  = lens _jlMaxCreationTime
      (\ s a -> s{_jlMaxCreationTime = a})
      . mapping _Coerce

-- | Min value for job creation time, in milliseconds since the POSIX epoch.
-- If set, only jobs created after or at this timestamp are returned
jlMinCreationTime :: Lens' JobsList (Maybe Word64)
jlMinCreationTime
  = lens _jlMinCreationTime
      (\ s a -> s{_jlMinCreationTime = a})
      . mapping _Coerce

-- | Filter for job state
jlStateFilter :: Lens' JobsList [JobsListStateFilter]
jlStateFilter
  = lens _jlStateFilter
      (\ s a -> s{_jlStateFilter = a})
      . _Default
      . _Coerce

-- | Restrict information returned to a set of selected fields
jlProjection :: Lens' JobsList (Maybe JobsListProjection)
jlProjection
  = lens _jlProjection (\ s a -> s{_jlProjection = a})

-- | Page token, returned by a previous call, to request the next page of
-- results
jlPageToken :: Lens' JobsList (Maybe Text)
jlPageToken
  = lens _jlPageToken (\ s a -> s{_jlPageToken = a})

-- | Project ID of the jobs to list
jlProjectId :: Lens' JobsList Text
jlProjectId
  = lens _jlProjectId (\ s a -> s{_jlProjectId = a})

-- | Whether to display jobs owned by all users in the project. Default false
jlAllUsers :: Lens' JobsList (Maybe Bool)
jlAllUsers
  = lens _jlAllUsers (\ s a -> s{_jlAllUsers = a})

-- | Maximum number of results to return
jlMaxResults :: Lens' JobsList (Maybe Word32)
jlMaxResults
  = lens _jlMaxResults (\ s a -> s{_jlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest JobsList where
        type Rs JobsList = JobList
        type Scopes JobsList =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient JobsList'{..}
          = go _jlProjectId _jlMaxCreationTime
              _jlMinCreationTime
              (_jlStateFilter ^. _Default)
              _jlProjection
              _jlPageToken
              _jlAllUsers
              _jlMaxResults
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy JobsListResource)
                      mempty
