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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all jobs that you started in the specified project. Job
-- information is available for a six month period after creation. The job
-- list is sorted in reverse chronological order, by job creation time.
-- Requires the Can View project role, or the Is Owner project role if you
-- set the allUsers property.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigQueryJobsList@.
module Network.Google.Resource.BigQuery.Jobs.List
    (
    -- * REST Resource
      JobsListResource

    -- * Creating a Request
    , jobsList'
    , JobsList'

    -- * Request Lenses
    , jlStateFilter
    , jlProjection
    , jlPageToken
    , jlProjectId
    , jlAllUsers
    , jlMaxResults
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigQueryJobsList@ method which the
-- 'JobsList'' request conforms to.
type JobsListResource =
     "projects" :>
       Capture "projectId" Text :>
         "jobs" :>
           QueryParams "stateFilter" JobsListStateFilter :>
             QueryParam "projection" JobsListProjection :>
               QueryParam "pageToken" Text :>
                 QueryParam "allUsers" Bool :>
                   QueryParam "maxResults" Word32 :>
                     QueryParam "alt" AltJSON :> Get '[JSON] JobList

-- | Lists all jobs that you started in the specified project. Job
-- information is available for a six month period after creation. The job
-- list is sorted in reverse chronological order, by job creation time.
-- Requires the Can View project role, or the Is Owner project role if you
-- set the allUsers property.
--
-- /See:/ 'jobsList'' smart constructor.
data JobsList' = JobsList'
    { _jlStateFilter :: !(Maybe [JobsListStateFilter])
    , _jlProjection  :: !(Maybe JobsListProjection)
    , _jlPageToken   :: !(Maybe Text)
    , _jlProjectId   :: !Text
    , _jlAllUsers    :: !(Maybe Bool)
    , _jlMaxResults  :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
jobsList'
    :: Text -- ^ 'projectId'
    -> JobsList'
jobsList' pJlProjectId_ =
    JobsList'
    { _jlStateFilter = Nothing
    , _jlProjection = Nothing
    , _jlPageToken = Nothing
    , _jlProjectId = pJlProjectId_
    , _jlAllUsers = Nothing
    , _jlMaxResults = Nothing
    }

-- | Filter for job state
jlStateFilter :: Lens' JobsList' [JobsListStateFilter]
jlStateFilter
  = lens _jlStateFilter
      (\ s a -> s{_jlStateFilter = a})
      . _Default
      . _Coerce

-- | Restrict information returned to a set of selected fields
jlProjection :: Lens' JobsList' (Maybe JobsListProjection)
jlProjection
  = lens _jlProjection (\ s a -> s{_jlProjection = a})

-- | Page token, returned by a previous call, to request the next page of
-- results
jlPageToken :: Lens' JobsList' (Maybe Text)
jlPageToken
  = lens _jlPageToken (\ s a -> s{_jlPageToken = a})

-- | Project ID of the jobs to list
jlProjectId :: Lens' JobsList' Text
jlProjectId
  = lens _jlProjectId (\ s a -> s{_jlProjectId = a})

-- | Whether to display jobs owned by all users in the project. Default false
jlAllUsers :: Lens' JobsList' (Maybe Bool)
jlAllUsers
  = lens _jlAllUsers (\ s a -> s{_jlAllUsers = a})

-- | Maximum number of results to return
jlMaxResults :: Lens' JobsList' (Maybe Word32)
jlMaxResults
  = lens _jlMaxResults (\ s a -> s{_jlMaxResults = a})

instance GoogleRequest JobsList' where
        type Rs JobsList' = JobList
        requestClient JobsList'{..}
          = go _jlProjectId (_jlStateFilter ^. _Default)
              _jlProjection
              _jlPageToken
              _jlAllUsers
              _jlMaxResults
              (Just AltJSON)
              bigQuery
          where go
                  = buildClient (Proxy :: Proxy JobsListResource)
                      mempty
