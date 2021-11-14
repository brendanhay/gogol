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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a specific job. Job information is available
-- for a six month period after creation. Requires that you\'re the person
-- who ran the job, or have the Is Owner project role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.get@.
module Network.Google.Resource.BigQuery.Jobs.Get
    (
    -- * REST Resource
      JobsGetResource

    -- * Creating a Request
    , jobsGet
    , JobsGet

    -- * Request Lenses
    , jgJobId
    , jgLocation
    , jgProjectId
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.jobs.get@ method which the
-- 'JobsGet' request conforms to.
type JobsGetResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "jobs" :>
               Capture "jobId" Text :>
                 QueryParam "location" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Job

-- | Returns information about a specific job. Job information is available
-- for a six month period after creation. Requires that you\'re the person
-- who ran the job, or have the Is Owner project role.
--
-- /See:/ 'jobsGet' smart constructor.
data JobsGet =
  JobsGet'
    { _jgJobId :: !Text
    , _jgLocation :: !(Maybe Text)
    , _jgProjectId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jgJobId'
--
-- * 'jgLocation'
--
-- * 'jgProjectId'
jobsGet
    :: Text -- ^ 'jgJobId'
    -> Text -- ^ 'jgProjectId'
    -> JobsGet
jobsGet pJgJobId_ pJgProjectId_ =
  JobsGet'
    {_jgJobId = pJgJobId_, _jgLocation = Nothing, _jgProjectId = pJgProjectId_}


-- | [Required] Job ID of the requested job
jgJobId :: Lens' JobsGet Text
jgJobId = lens _jgJobId (\ s a -> s{_jgJobId = a})

-- | The geographic location of the job. Required except for US and EU. See
-- details at
-- https:\/\/cloud.google.com\/bigquery\/docs\/locations#specifying_your_location.
jgLocation :: Lens' JobsGet (Maybe Text)
jgLocation
  = lens _jgLocation (\ s a -> s{_jgLocation = a})

-- | [Required] Project ID of the requested job
jgProjectId :: Lens' JobsGet Text
jgProjectId
  = lens _jgProjectId (\ s a -> s{_jgProjectId = a})

instance GoogleRequest JobsGet where
        type Rs JobsGet = Job
        type Scopes JobsGet =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient JobsGet'{..}
          = go _jgProjectId _jgJobId _jgLocation (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy JobsGetResource) mempty
