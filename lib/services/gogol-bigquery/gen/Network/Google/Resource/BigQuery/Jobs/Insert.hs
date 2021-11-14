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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a new asynchronous job. Requires the Can View project role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.insert@.
module Network.Google.Resource.BigQuery.Jobs.Insert
    (
    -- * REST Resource
      JobsInsertResource

    -- * Creating a Request
    , jobsInsert
    , JobsInsert

    -- * Request Lenses
    , jiPayload
    , jiProjectId
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.jobs.insert@ method which the
-- 'JobsInsert' request conforms to.
type JobsInsertResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "jobs" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Job :> Post '[JSON] Job
       :<|>
       "upload" :>
         "bigquery" :>
           "v2" :>
             "projects" :>
               Capture "projectId" Text :>
                 "jobs" :>
                   QueryParam "alt" AltJSON :>
                     QueryParam "uploadType" Multipart :>
                       MultipartRelated '[JSON] Job :> Post '[JSON] Job

-- | Starts a new asynchronous job. Requires the Can View project role.
--
-- /See:/ 'jobsInsert' smart constructor.
data JobsInsert =
  JobsInsert'
    { _jiPayload :: !Job
    , _jiProjectId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jiPayload'
--
-- * 'jiProjectId'
jobsInsert
    :: Job -- ^ 'jiPayload'
    -> Text -- ^ 'jiProjectId'
    -> JobsInsert
jobsInsert pJiPayload_ pJiProjectId_ =
  JobsInsert' {_jiPayload = pJiPayload_, _jiProjectId = pJiProjectId_}


-- | Multipart request metadata.
jiPayload :: Lens' JobsInsert Job
jiPayload
  = lens _jiPayload (\ s a -> s{_jiPayload = a})

-- | Project ID of the project that will be billed for the job
jiProjectId :: Lens' JobsInsert Text
jiProjectId
  = lens _jiProjectId (\ s a -> s{_jiProjectId = a})

instance GoogleRequest JobsInsert where
        type Rs JobsInsert = Job
        type Scopes JobsInsert =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient JobsInsert'{..}
          = go _jiProjectId (Just AltJSON) _jiPayload
              bigQueryService
          where go :<|> _
                  = buildClient (Proxy :: Proxy JobsInsertResource)
                      mempty

instance GoogleRequest (MediaUpload JobsInsert) where
        type Rs (MediaUpload JobsInsert) = Job
        type Scopes (MediaUpload JobsInsert) =
             Scopes JobsInsert
        requestClient (MediaUpload JobsInsert'{..} body)
          = go _jiProjectId (Just AltJSON) (Just Multipart)
              _jiPayload
              body
              bigQueryService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy JobsInsertResource)
                      mempty
