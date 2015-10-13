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
-- Module      : Network.Google.Resource.BigQuery.Tables.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates information in an existing table. The update method replaces the
-- entire table resource, whereas the patch method only replaces fields
-- that are provided in the submitted table resource.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigQueryTablesUpdate@.
module Network.Google.Resource.BigQuery.Tables.Update
    (
    -- * REST Resource
      TablesUpdateResource

    -- * Creating a Request
    , tablesUpdate'
    , TablesUpdate'

    -- * Request Lenses
    , tuPayload
    , tuDatasetId
    , tuProjectId
    , tuTableId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigQueryTablesUpdate@ method which the
-- 'TablesUpdate'' request conforms to.
type TablesUpdateResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             "tables" :>
               Capture "tableId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Table :> Put '[JSON] Table

-- | Updates information in an existing table. The update method replaces the
-- entire table resource, whereas the patch method only replaces fields
-- that are provided in the submitted table resource.
--
-- /See:/ 'tablesUpdate'' smart constructor.
data TablesUpdate' = TablesUpdate'
    { _tuPayload   :: !Table
    , _tuDatasetId :: !Text
    , _tuProjectId :: !Text
    , _tuTableId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuPayload'
--
-- * 'tuDatasetId'
--
-- * 'tuProjectId'
--
-- * 'tuTableId'
tablesUpdate'
    :: Table -- ^ 'payload'
    -> Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> Text -- ^ 'tableId'
    -> TablesUpdate'
tablesUpdate' pTuPayload_ pTuDatasetId_ pTuProjectId_ pTuTableId_ =
    TablesUpdate'
    { _tuPayload = pTuPayload_
    , _tuDatasetId = pTuDatasetId_
    , _tuProjectId = pTuProjectId_
    , _tuTableId = pTuTableId_
    }

-- | Multipart request metadata.
tuPayload :: Lens' TablesUpdate' Table
tuPayload
  = lens _tuPayload (\ s a -> s{_tuPayload = a})

-- | Dataset ID of the table to update
tuDatasetId :: Lens' TablesUpdate' Text
tuDatasetId
  = lens _tuDatasetId (\ s a -> s{_tuDatasetId = a})

-- | Project ID of the table to update
tuProjectId :: Lens' TablesUpdate' Text
tuProjectId
  = lens _tuProjectId (\ s a -> s{_tuProjectId = a})

-- | Table ID of the table to update
tuTableId :: Lens' TablesUpdate' Text
tuTableId
  = lens _tuTableId (\ s a -> s{_tuTableId = a})

instance GoogleRequest TablesUpdate' where
        type Rs TablesUpdate' = Table
        requestClient TablesUpdate'{..}
          = go _tuProjectId _tuDatasetId _tuTableId
              (Just AltJSON)
              _tuPayload
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy TablesUpdateResource)
                      mempty
