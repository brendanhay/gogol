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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Streams data into BigQuery one record at a time without needing to run a
-- load job. Requires the WRITER dataset role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tabledata.insertAll@.
module Network.Google.Resource.BigQuery.TableData.InsertAll
    (
    -- * REST Resource
      TableDataInsertAllResource

    -- * Creating a Request
    , tableDataInsertAll
    , TableDataInsertAll

    -- * Request Lenses
    , tdiaPayload
    , tdiaDataSetId
    , tdiaProjectId
    , tdiaTableId
    ) where

import Network.Google.BigQuery.Types
import Network.Google.Prelude

-- | A resource alias for @bigquery.tabledata.insertAll@ method which the
-- 'TableDataInsertAll' request conforms to.
type TableDataInsertAllResource =
     "bigquery" :>
       "v2" :>
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
-- /See:/ 'tableDataInsertAll' smart constructor.
data TableDataInsertAll =
  TableDataInsertAll'
    { _tdiaPayload :: !TableDataInsertAllRequest
    , _tdiaDataSetId :: !Text
    , _tdiaProjectId :: !Text
    , _tdiaTableId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableDataInsertAll' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdiaPayload'
--
-- * 'tdiaDataSetId'
--
-- * 'tdiaProjectId'
--
-- * 'tdiaTableId'
tableDataInsertAll
    :: TableDataInsertAllRequest -- ^ 'tdiaPayload'
    -> Text -- ^ 'tdiaDataSetId'
    -> Text -- ^ 'tdiaProjectId'
    -> Text -- ^ 'tdiaTableId'
    -> TableDataInsertAll
tableDataInsertAll pTdiaPayload_ pTdiaDataSetId_ pTdiaProjectId_ pTdiaTableId_ =
  TableDataInsertAll'
    { _tdiaPayload = pTdiaPayload_
    , _tdiaDataSetId = pTdiaDataSetId_
    , _tdiaProjectId = pTdiaProjectId_
    , _tdiaTableId = pTdiaTableId_
    }


-- | Multipart request metadata.
tdiaPayload :: Lens' TableDataInsertAll TableDataInsertAllRequest
tdiaPayload
  = lens _tdiaPayload (\ s a -> s{_tdiaPayload = a})

-- | Dataset ID of the destination table.
tdiaDataSetId :: Lens' TableDataInsertAll Text
tdiaDataSetId
  = lens _tdiaDataSetId
      (\ s a -> s{_tdiaDataSetId = a})

-- | Project ID of the destination table.
tdiaProjectId :: Lens' TableDataInsertAll Text
tdiaProjectId
  = lens _tdiaProjectId
      (\ s a -> s{_tdiaProjectId = a})

-- | Table ID of the destination table.
tdiaTableId :: Lens' TableDataInsertAll Text
tdiaTableId
  = lens _tdiaTableId (\ s a -> s{_tdiaTableId = a})

instance GoogleRequest TableDataInsertAll where
        type Rs TableDataInsertAll =
             TableDataInsertAllResponse
        type Scopes TableDataInsertAll =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/bigquery.insertdata",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient TableDataInsertAll'{..}
          = go _tdiaProjectId _tdiaDataSetId _tdiaTableId
              (Just AltJSON)
              _tdiaPayload
              bigQueryService
          where go
                  = buildClient
                      (Proxy :: Proxy TableDataInsertAllResource)
                      mempty
