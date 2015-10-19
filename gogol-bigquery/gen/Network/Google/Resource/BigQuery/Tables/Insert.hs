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
-- Module      : Network.Google.Resource.BigQuery.Tables.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new, empty table in the dataset.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigQueryTablesInsert@.
module Network.Google.Resource.BigQuery.Tables.Insert
    (
    -- * REST Resource
      TablesInsertResource

    -- * Creating a Request
    , tablesInsert'
    , TablesInsert'

    -- * Request Lenses
    , tiPayload
    , tiDatasetId
    , tiProjectId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigQueryTablesInsert@ method which the
-- 'TablesInsert'' request conforms to.
type TablesInsertResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             "tables" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Table :> Post '[JSON] Table

-- | Creates a new, empty table in the dataset.
--
-- /See:/ 'tablesInsert'' smart constructor.
data TablesInsert' = TablesInsert'
    { _tiPayload   :: !Table
    , _tiDatasetId :: !Text
    , _tiProjectId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiPayload'
--
-- * 'tiDatasetId'
--
-- * 'tiProjectId'
tablesInsert'
    :: Table -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> TablesInsert'
tablesInsert' pTiPayload_ pTiDatasetId_ pTiProjectId_ =
    TablesInsert'
    { _tiPayload = pTiPayload_
    , _tiDatasetId = pTiDatasetId_
    , _tiProjectId = pTiProjectId_
    }

-- | Multipart request metadata.
tiPayload :: Lens' TablesInsert' Table
tiPayload
  = lens _tiPayload (\ s a -> s{_tiPayload = a})

-- | Dataset ID of the new table
tiDatasetId :: Lens' TablesInsert' Text
tiDatasetId
  = lens _tiDatasetId (\ s a -> s{_tiDatasetId = a})

-- | Project ID of the new table
tiProjectId :: Lens' TablesInsert' Text
tiProjectId
  = lens _tiProjectId (\ s a -> s{_tiProjectId = a})

instance GoogleRequest TablesInsert' where
        type Rs TablesInsert' = Table
        requestClient TablesInsert'{..}
          = go _tiProjectId _tiDatasetId (Just AltJSON)
              _tiPayload
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy TablesInsertResource)
                      mempty
