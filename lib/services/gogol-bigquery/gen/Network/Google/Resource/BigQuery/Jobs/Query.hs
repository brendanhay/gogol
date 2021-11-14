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
-- Module      : Network.Google.Resource.BigQuery.Jobs.Query
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a BigQuery SQL query synchronously and returns query results if the
-- query completes within a specified timeout.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.jobs.query@.
module Network.Google.Resource.BigQuery.Jobs.Query
    (
    -- * REST Resource
      JobsQueryResource

    -- * Creating a Request
    , jobsQuery
    , JobsQuery

    -- * Request Lenses
    , jqPayload
    , jqProjectId
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.jobs.query@ method which the
-- 'JobsQuery' request conforms to.
type JobsQueryResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "queries" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] QueryRequest :>
                   Post '[JSON] QueryResponse

-- | Runs a BigQuery SQL query synchronously and returns query results if the
-- query completes within a specified timeout.
--
-- /See:/ 'jobsQuery' smart constructor.
data JobsQuery =
  JobsQuery'
    { _jqPayload :: !QueryRequest
    , _jqProjectId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'JobsQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jqPayload'
--
-- * 'jqProjectId'
jobsQuery
    :: QueryRequest -- ^ 'jqPayload'
    -> Text -- ^ 'jqProjectId'
    -> JobsQuery
jobsQuery pJqPayload_ pJqProjectId_ =
  JobsQuery' {_jqPayload = pJqPayload_, _jqProjectId = pJqProjectId_}


-- | Multipart request metadata.
jqPayload :: Lens' JobsQuery QueryRequest
jqPayload
  = lens _jqPayload (\ s a -> s{_jqPayload = a})

-- | Project ID of the project billed for the query
jqProjectId :: Lens' JobsQuery Text
jqProjectId
  = lens _jqProjectId (\ s a -> s{_jqProjectId = a})

instance GoogleRequest JobsQuery where
        type Rs JobsQuery = QueryResponse
        type Scopes JobsQuery =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient JobsQuery'{..}
          = go _jqProjectId (Just AltJSON) _jqPayload
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy JobsQueryResource)
                      mempty
