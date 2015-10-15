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
-- Module      : Network.Google.Resource.BigQuery.Jobs.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns information about a specific job. Job information is available
-- for a six month period after creation. Requires that you\'re the person
-- who ran the job, or have the Is Owner project role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigQueryJobsGet@.
module Network.Google.Resource.BigQuery.Jobs.Get
    (
    -- * REST Resource
      JobsGetResource

    -- * Creating a Request
    , jobsGet'
    , JobsGet'

    -- * Request Lenses
    , jgJobId
    , jgProjectId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigQueryJobsGet@ method which the
-- 'JobsGet'' request conforms to.
type JobsGetResource =
     "projects" :>
       Capture "projectId" Text :>
         "jobs" :>
           Capture "jobId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Job

-- | Returns information about a specific job. Job information is available
-- for a six month period after creation. Requires that you\'re the person
-- who ran the job, or have the Is Owner project role.
--
-- /See:/ 'jobsGet'' smart constructor.
data JobsGet' = JobsGet'
    { _jgJobId     :: !Text
    , _jgProjectId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jgJobId'
--
-- * 'jgProjectId'
jobsGet'
    :: Text -- ^ 'jobId'
    -> Text -- ^ 'projectId'
    -> JobsGet'
jobsGet' pJgJobId_ pJgProjectId_ =
    JobsGet'
    { _jgJobId = pJgJobId_
    , _jgProjectId = pJgProjectId_
    }

-- | Job ID of the requested job
jgJobId :: Lens' JobsGet' Text
jgJobId = lens _jgJobId (\ s a -> s{_jgJobId = a})

-- | Project ID of the requested job
jgProjectId :: Lens' JobsGet' Text
jgProjectId
  = lens _jgProjectId (\ s a -> s{_jgProjectId = a})

instance GoogleRequest JobsGet' where
        type Rs JobsGet' = Job
        requestClient JobsGet'{..}
          = go _jgProjectId _jgJobId (Just AltJSON) bigQuery
          where go
                  = buildClient (Proxy :: Proxy JobsGetResource) mempty
