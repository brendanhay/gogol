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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the table specified by tableId from the dataset. If the table
-- contains data, all the data will be deleted.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigQueryTablesDelete@.
module Network.Google.Resource.BigQuery.Tables.Delete
    (
    -- * REST Resource
      TablesDeleteResource

    -- * Creating a Request
    , tablesDelete'
    , TablesDelete'

    -- * Request Lenses
    , tdDatasetId
    , tdProjectId
    , tdTableId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigQueryTablesDelete@ method which the
-- 'TablesDelete'' request conforms to.
type TablesDeleteResource =
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
-- /See:/ 'tablesDelete'' smart constructor.
data TablesDelete' = TablesDelete'
    { _tdDatasetId :: !Text
    , _tdProjectId :: !Text
    , _tdTableId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdDatasetId'
--
-- * 'tdProjectId'
--
-- * 'tdTableId'
tablesDelete'
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> Text -- ^ 'tableId'
    -> TablesDelete'
tablesDelete' pTdDatasetId_ pTdProjectId_ pTdTableId_ =
    TablesDelete'
    { _tdDatasetId = pTdDatasetId_
    , _tdProjectId = pTdProjectId_
    , _tdTableId = pTdTableId_
    }

-- | Dataset ID of the table to delete
tdDatasetId :: Lens' TablesDelete' Text
tdDatasetId
  = lens _tdDatasetId (\ s a -> s{_tdDatasetId = a})

-- | Project ID of the table to delete
tdProjectId :: Lens' TablesDelete' Text
tdProjectId
  = lens _tdProjectId (\ s a -> s{_tdProjectId = a})

-- | Table ID of the table to delete
tdTableId :: Lens' TablesDelete' Text
tdTableId
  = lens _tdTableId (\ s a -> s{_tdTableId = a})

instance GoogleRequest TablesDelete' where
        type Rs TablesDelete' = ()
        requestClient TablesDelete'{..}
          = go _tdProjectId _tdDatasetId _tdTableId
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy TablesDeleteResource)
                      mempty
