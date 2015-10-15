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
-- Module      : Network.Google.Resource.BigQuery.Jobs.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Starts a new asynchronous job. Requires the Can View project role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigQueryJobsInsert@.
module Network.Google.Resource.BigQuery.Jobs.Insert
    (
    -- * REST Resource
      JobsInsertResource

    -- * Creating a Request
    , jobsInsert'
    , JobsInsert'

    -- * Request Lenses
    , jiPayload
    , jiMedia
    , jiProjectId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigQueryJobsInsert@ method which the
-- 'JobsInsert'' request conforms to.
type JobsInsertResource =
     "projects" :>
       Capture "projectId" Text :>
         "jobs" :>
           QueryParam "alt" AltJSON :>
             MultipartRelated '[JSON] Job Body :> Post '[JSON] Job

-- | Starts a new asynchronous job. Requires the Can View project role.
--
-- /See:/ 'jobsInsert'' smart constructor.
data JobsInsert' = JobsInsert'
    { _jiPayload   :: !Job
    , _jiMedia     :: !Body
    , _jiProjectId :: !Text
    }

-- | Creates a value of 'JobsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jiPayload'
--
-- * 'jiMedia'
--
-- * 'jiProjectId'
jobsInsert'
    :: Job -- ^ 'payload'
    -> Body -- ^ 'media'
    -> Text -- ^ 'projectId'
    -> JobsInsert'
jobsInsert' pJiPayload_ pJiMedia_ pJiProjectId_ =
    JobsInsert'
    { _jiPayload = pJiPayload_
    , _jiMedia = pJiMedia_
    , _jiProjectId = pJiProjectId_
    }

-- | Multipart request metadata.
jiPayload :: Lens' JobsInsert' Job
jiPayload
  = lens _jiPayload (\ s a -> s{_jiPayload = a})

jiMedia :: Lens' JobsInsert' Body
jiMedia = lens _jiMedia (\ s a -> s{_jiMedia = a})

-- | Project ID of the project that will be billed for the job
jiProjectId :: Lens' JobsInsert' Text
jiProjectId
  = lens _jiProjectId (\ s a -> s{_jiProjectId = a})

instance GoogleRequest JobsInsert' where
        type Rs JobsInsert' = Job
        requestClient JobsInsert'{..}
          = go _jiProjectId (Just AltJSON) _jiPayload _jiMedia
              bigQuery
          where go
                  = buildClient (Proxy :: Proxy JobsInsertResource)
                      mempty
