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
-- Module      : Network.Google.Resource.BigQuery.Jobs.Cancel
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests that a job be cancelled. This call will return immediately, and
-- the client will need to poll for the job status to see if the cancel
-- completed successfully. Cancelled jobs may still incur costs.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.cancel@.
module Network.Google.Resource.BigQuery.Jobs.Cancel
    (
    -- * REST Resource
      JobsCancelResource

    -- * Creating a Request
    , jobsCancel
    , JobsCancel

    -- * Request Lenses
    , jcJobId
    , jcProjectId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquery.jobs.cancel@ method which the
-- 'JobsCancel' request conforms to.
type JobsCancelResource =
     "bigquery" :>
       "v2" :>
         "project" :>
           Capture "projectId" Text :>
             "jobs" :>
               Capture "jobId" Text :>
                 "cancel" :>
                   QueryParam "alt" AltJSON :>
                     Post '[JSON] JobCancelResponse

-- | Requests that a job be cancelled. This call will return immediately, and
-- the client will need to poll for the job status to see if the cancel
-- completed successfully. Cancelled jobs may still incur costs.
--
-- /See:/ 'jobsCancel' smart constructor.
data JobsCancel = JobsCancel
    { _jcJobId     :: !Text
    , _jcProjectId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jcJobId'
--
-- * 'jcProjectId'
jobsCancel
    :: Text -- ^ 'jcJobId'
    -> Text -- ^ 'jcProjectId'
    -> JobsCancel
jobsCancel pJcJobId_ pJcProjectId_ =
    JobsCancel
    { _jcJobId = pJcJobId_
    , _jcProjectId = pJcProjectId_
    }

-- | [Required] Job ID of the job to cancel
jcJobId :: Lens' JobsCancel Text
jcJobId = lens _jcJobId (\ s a -> s{_jcJobId = a})

-- | [Required] Project ID of the job to cancel
jcProjectId :: Lens' JobsCancel Text
jcProjectId
  = lens _jcProjectId (\ s a -> s{_jcProjectId = a})

instance GoogleRequest JobsCancel where
        type Rs JobsCancel = JobCancelResponse
        requestClient JobsCancel{..}
          = go _jcProjectId _jcJobId (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy JobsCancelResource)
                      mempty
