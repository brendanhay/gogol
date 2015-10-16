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
-- Module      : Network.Google.Resource.BigQuery.TableData.InsertAll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Streams data into BigQuery one record at a time without needing to run a
-- load job. Requires the WRITER dataset role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigQueryTableDataInsertAll@.
module Network.Google.Resource.BigQuery.TableData.InsertAll
    (
    -- * REST Resource
      TableDataInsertAllResource

    -- * Creating a Request
    , tableDataInsertAll'
    , TableDataInsertAll'

    -- * Request Lenses
    , tdiaPayload
    , tdiaDatasetId
    , tdiaProjectId
    , tdiaTableId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigQueryTableDataInsertAll@ method which the
-- 'TableDataInsertAll'' request conforms to.
type TableDataInsertAllResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             "tables" :>
               Capture "tableId" Text :>
                 "insertAll" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TableDataInsertAllRequest :>
                       Post '[JSON] TableDataInsertAllResponse

-- | Streams data into BigQuery one record at a time without needing to run a
-- load job. Requires the WRITER dataset role.
--
-- /See:/ 'tableDataInsertAll'' smart constructor.
data TableDataInsertAll' = TableDataInsertAll'
    { _tdiaPayload   :: !TableDataInsertAllRequest
    , _tdiaDatasetId :: !Text
    , _tdiaProjectId :: !Text
    , _tdiaTableId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableDataInsertAll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdiaPayload'
--
-- * 'tdiaDatasetId'
--
-- * 'tdiaProjectId'
--
-- * 'tdiaTableId'
tableDataInsertAll'
    :: TableDataInsertAllRequest -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> Text -- ^ 'tableId'
    -> TableDataInsertAll'
tableDataInsertAll' pTdiaPayload_ pTdiaDatasetId_ pTdiaProjectId_ pTdiaTableId_ =
    TableDataInsertAll'
    { _tdiaPayload = pTdiaPayload_
    , _tdiaDatasetId = pTdiaDatasetId_
    , _tdiaProjectId = pTdiaProjectId_
    , _tdiaTableId = pTdiaTableId_
    }

-- | Multipart request metadata.
tdiaPayload :: Lens' TableDataInsertAll' TableDataInsertAllRequest
tdiaPayload
  = lens _tdiaPayload (\ s a -> s{_tdiaPayload = a})

-- | Dataset ID of the destination table.
tdiaDatasetId :: Lens' TableDataInsertAll' Text
tdiaDatasetId
  = lens _tdiaDatasetId
      (\ s a -> s{_tdiaDatasetId = a})

-- | Project ID of the destination table.
tdiaProjectId :: Lens' TableDataInsertAll' Text
tdiaProjectId
  = lens _tdiaProjectId
      (\ s a -> s{_tdiaProjectId = a})

-- | Table ID of the destination table.
tdiaTableId :: Lens' TableDataInsertAll' Text
tdiaTableId
  = lens _tdiaTableId (\ s a -> s{_tdiaTableId = a})

instance GoogleRequest TableDataInsertAll' where
        type Rs TableDataInsertAll' =
             TableDataInsertAllResponse
        requestClient TableDataInsertAll'{..}
          = go _tdiaProjectId _tdiaDatasetId _tdiaTableId
              (Just AltJSON)
              _tdiaPayload
              bigQueryService
          where go
                  = buildClient
                      (Proxy :: Proxy TableDataInsertAllResource)
                      mempty
