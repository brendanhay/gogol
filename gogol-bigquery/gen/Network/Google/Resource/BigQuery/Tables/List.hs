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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all tables in the specified dataset. Requires the READER dataset
-- role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigQueryTablesList@.
module Network.Google.Resource.BigQuery.Tables.List
    (
    -- * REST Resource
      TablesListResource

    -- * Creating a Request
    , tablesList'
    , TablesList'

    -- * Request Lenses
    , tlDatasetId
    , tlPageToken
    , tlProjectId
    , tlMaxResults
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigQueryTablesList@ method which the
-- 'TablesList'' request conforms to.
type TablesListResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             "tables" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "alt" AltJSON :> Get '[JSON] TableList

-- | Lists all tables in the specified dataset. Requires the READER dataset
-- role.
--
-- /See:/ 'tablesList'' smart constructor.
data TablesList' = TablesList'
    { _tlDatasetId  :: !Text
    , _tlPageToken  :: !(Maybe Text)
    , _tlProjectId  :: !Text
    , _tlMaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlDatasetId'
--
-- * 'tlPageToken'
--
-- * 'tlProjectId'
--
-- * 'tlMaxResults'
tablesList'
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> TablesList'
tablesList' pTlDatasetId_ pTlProjectId_ =
    TablesList'
    { _tlDatasetId = pTlDatasetId_
    , _tlPageToken = Nothing
    , _tlProjectId = pTlProjectId_
    , _tlMaxResults = Nothing
    }

-- | Dataset ID of the tables to list
tlDatasetId :: Lens' TablesList' Text
tlDatasetId
  = lens _tlDatasetId (\ s a -> s{_tlDatasetId = a})

-- | Page token, returned by a previous call, to request the next page of
-- results
tlPageToken :: Lens' TablesList' (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | Project ID of the tables to list
tlProjectId :: Lens' TablesList' Text
tlProjectId
  = lens _tlProjectId (\ s a -> s{_tlProjectId = a})

-- | Maximum number of results to return
tlMaxResults :: Lens' TablesList' (Maybe Word32)
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})

instance GoogleRequest TablesList' where
        type Rs TablesList' = TableList
        requestClient TablesList'{..}
          = go _tlProjectId _tlDatasetId _tlPageToken
              _tlMaxResults
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy TablesListResource)
                      mempty
