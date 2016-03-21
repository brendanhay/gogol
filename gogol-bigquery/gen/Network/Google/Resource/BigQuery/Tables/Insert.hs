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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new, empty table in the dataset.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.insert@.
module Network.Google.Resource.BigQuery.Tables.Insert
    (
    -- * REST Resource
      TablesInsertResource

    -- * Creating a Request
    , tablesInsert
    , TablesInsert

    -- * Request Lenses
    , tiPayload
    , tiDataSetId
    , tiProjectId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquery.tables.insert@ method which the
-- 'TablesInsert' request conforms to.
type TablesInsertResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "tables" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Table :> Post '[JSON] Table

-- | Creates a new, empty table in the dataset.
--
-- /See:/ 'tablesInsert' smart constructor.
data TablesInsert = TablesInsert'
    { _tiPayload   :: !Table
    , _tiDataSetId :: !Text
    , _tiProjectId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiPayload'
--
-- * 'tiDataSetId'
--
-- * 'tiProjectId'
tablesInsert
    :: Table -- ^ 'tiPayload'
    -> Text -- ^ 'tiDataSetId'
    -> Text -- ^ 'tiProjectId'
    -> TablesInsert
tablesInsert pTiPayload_ pTiDataSetId_ pTiProjectId_ =
    TablesInsert'
    { _tiPayload = pTiPayload_
    , _tiDataSetId = pTiDataSetId_
    , _tiProjectId = pTiProjectId_
    }

-- | Multipart request metadata.
tiPayload :: Lens' TablesInsert Table
tiPayload
  = lens _tiPayload (\ s a -> s{_tiPayload = a})

-- | Dataset ID of the new table
tiDataSetId :: Lens' TablesInsert Text
tiDataSetId
  = lens _tiDataSetId (\ s a -> s{_tiDataSetId = a})

-- | Project ID of the new table
tiProjectId :: Lens' TablesInsert Text
tiProjectId
  = lens _tiProjectId (\ s a -> s{_tiProjectId = a})

instance GoogleRequest TablesInsert where
        type Rs TablesInsert = Table
        type Scopes TablesInsert =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient TablesInsert'{..}
          = go _tiProjectId _tiDataSetId (Just AltJSON)
              _tiPayload
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy TablesInsertResource)
                      mempty
