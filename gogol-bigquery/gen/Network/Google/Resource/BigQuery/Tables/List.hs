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
-- Module      : Network.Google.Resource.BigQuery.Tables.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all tables in the specified dataset. Requires the READER dataset
-- role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.list@.
module Network.Google.Resource.BigQuery.Tables.List
    (
    -- * REST Resource
      TablesListResource

    -- * Creating a Request
    , tablesList
    , TablesList

    -- * Request Lenses
    , tlDataSetId
    , tlPageToken
    , tlProjectId
    , tlMaxResults
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquery.tables.list@ method which the
-- 'TablesList' request conforms to.
type TablesListResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "tables" :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] TableList

-- | Lists all tables in the specified dataset. Requires the READER dataset
-- role.
--
-- /See:/ 'tablesList' smart constructor.
data TablesList =
  TablesList'
    { _tlDataSetId  :: !Text
    , _tlPageToken  :: !(Maybe Text)
    , _tlProjectId  :: !Text
    , _tlMaxResults :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TablesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlDataSetId'
--
-- * 'tlPageToken'
--
-- * 'tlProjectId'
--
-- * 'tlMaxResults'
tablesList
    :: Text -- ^ 'tlDataSetId'
    -> Text -- ^ 'tlProjectId'
    -> TablesList
tablesList pTlDataSetId_ pTlProjectId_ =
  TablesList'
    { _tlDataSetId = pTlDataSetId_
    , _tlPageToken = Nothing
    , _tlProjectId = pTlProjectId_
    , _tlMaxResults = Nothing
    }


-- | Dataset ID of the tables to list
tlDataSetId :: Lens' TablesList Text
tlDataSetId
  = lens _tlDataSetId (\ s a -> s{_tlDataSetId = a})

-- | Page token, returned by a previous call, to request the next page of
-- results
tlPageToken :: Lens' TablesList (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | Project ID of the tables to list
tlProjectId :: Lens' TablesList Text
tlProjectId
  = lens _tlProjectId (\ s a -> s{_tlProjectId = a})

-- | Maximum number of results to return
tlMaxResults :: Lens' TablesList (Maybe Word32)
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest TablesList where
        type Rs TablesList = TableList
        type Scopes TablesList =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient TablesList'{..}
          = go _tlProjectId _tlDataSetId _tlPageToken
              _tlMaxResults
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy TablesListResource)
                      mempty
