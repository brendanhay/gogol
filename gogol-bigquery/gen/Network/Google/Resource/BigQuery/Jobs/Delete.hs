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
-- Module      : Network.Google.Resource.BigQuery.Jobs.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests that a job is deleted. This call will return when the job is
-- deleted. This method is available in limited preview.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.delete@.
module Network.Google.Resource.BigQuery.Jobs.Delete
    (
    -- * REST Resource
      JobsDeleteResource

    -- * Creating a Request
    , jobsDelete
    , JobsDelete

    -- * Request Lenses
    , jdJobId
    , jdLocation
    , jdProjectId
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.jobs.delete@ method which the
-- 'JobsDelete' request conforms to.
type JobsDeleteResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "jobs" :>
               Capture "jobId" Text :>
                 "delete" :>
                   QueryParam "location" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Requests that a job is deleted. This call will return when the job is
-- deleted. This method is available in limited preview.
--
-- /See:/ 'jobsDelete' smart constructor.
data JobsDelete =
  JobsDelete'
    { _jdJobId :: !Text
    , _jdLocation :: !(Maybe Text)
    , _jdProjectId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jdJobId'
--
-- * 'jdLocation'
--
-- * 'jdProjectId'
jobsDelete
    :: Text -- ^ 'jdJobId'
    -> Text -- ^ 'jdProjectId'
    -> JobsDelete
jobsDelete pJdJobId_ pJdProjectId_ =
  JobsDelete'
    {_jdJobId = pJdJobId_, _jdLocation = Nothing, _jdProjectId = pJdProjectId_}


-- | Required. Job ID of the job to be deleted. If this is a parent job which
-- has child jobs, all child jobs will be deleted as well. Deletion of
-- child jobs directly is not allowed.
jdJobId :: Lens' JobsDelete Text
jdJobId = lens _jdJobId (\ s a -> s{_jdJobId = a})

-- | The geographic location of the job. Required. See details at:
-- https:\/\/cloud.google.com\/bigquery\/docs\/locations#specifying_your_location.
jdLocation :: Lens' JobsDelete (Maybe Text)
jdLocation
  = lens _jdLocation (\ s a -> s{_jdLocation = a})

-- | Required. Project ID of the job to be deleted.
jdProjectId :: Lens' JobsDelete Text
jdProjectId
  = lens _jdProjectId (\ s a -> s{_jdProjectId = a})

instance GoogleRequest JobsDelete where
        type Rs JobsDelete = ()
        type Scopes JobsDelete =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient JobsDelete'{..}
          = go _jdProjectId _jdJobId _jdLocation (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy JobsDeleteResource)
                      mempty
