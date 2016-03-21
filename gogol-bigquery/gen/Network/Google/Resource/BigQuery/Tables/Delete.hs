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
-- Module      : Network.Google.Resource.BigQuery.Tables.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the table specified by tableId from the dataset. If the table
-- contains data, all the data will be deleted.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.delete@.
module Network.Google.Resource.BigQuery.Tables.Delete
    (
    -- * REST Resource
      TablesDeleteResource

    -- * Creating a Request
    , tablesDelete
    , TablesDelete

    -- * Request Lenses
    , tdDataSetId
    , tdProjectId
    , tdTableId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquery.tables.delete@ method which the
-- 'TablesDelete' request conforms to.
type TablesDeleteResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "tables" :>
                   Capture "tableId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the table specified by tableId from the dataset. If the table
-- contains data, all the data will be deleted.
--
-- /See:/ 'tablesDelete' smart constructor.
data TablesDelete = TablesDelete'
    { _tdDataSetId :: !Text
    , _tdProjectId :: !Text
    , _tdTableId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdDataSetId'
--
-- * 'tdProjectId'
--
-- * 'tdTableId'
tablesDelete
    :: Text -- ^ 'tdDataSetId'
    -> Text -- ^ 'tdProjectId'
    -> Text -- ^ 'tdTableId'
    -> TablesDelete
tablesDelete pTdDataSetId_ pTdProjectId_ pTdTableId_ =
    TablesDelete'
    { _tdDataSetId = pTdDataSetId_
    , _tdProjectId = pTdProjectId_
    , _tdTableId = pTdTableId_
    }

-- | Dataset ID of the table to delete
tdDataSetId :: Lens' TablesDelete Text
tdDataSetId
  = lens _tdDataSetId (\ s a -> s{_tdDataSetId = a})

-- | Project ID of the table to delete
tdProjectId :: Lens' TablesDelete Text
tdProjectId
  = lens _tdProjectId (\ s a -> s{_tdProjectId = a})

-- | Table ID of the table to delete
tdTableId :: Lens' TablesDelete Text
tdTableId
  = lens _tdTableId (\ s a -> s{_tdTableId = a})

instance GoogleRequest TablesDelete where
        type Rs TablesDelete = ()
        type Scopes TablesDelete =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient TablesDelete'{..}
          = go _tdProjectId _tdDataSetId _tdTableId
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy TablesDeleteResource)
                      mempty
