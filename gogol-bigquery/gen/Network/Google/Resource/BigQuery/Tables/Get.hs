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
-- Module      : Network.Google.Resource.BigQuery.Tables.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified table resource by table ID. This method does not
-- return the data in the table, it only returns the table resource, which
-- describes the structure of this table.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.get@.
module Network.Google.Resource.BigQuery.Tables.Get
    (
    -- * REST Resource
      TablesGetResource

    -- * Creating a Request
    , tablesGet
    , TablesGet

    -- * Request Lenses
    , tgDatasetId
    , tgProjectId
    , tgTableId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquery.tables.get@ method which the
-- 'TablesGet' request conforms to.
type TablesGetResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             "tables" :>
               Capture "tableId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Table

-- | Gets the specified table resource by table ID. This method does not
-- return the data in the table, it only returns the table resource, which
-- describes the structure of this table.
--
-- /See:/ 'tablesGet' smart constructor.
data TablesGet = TablesGet
    { _tgDatasetId :: !Text
    , _tgProjectId :: !Text
    , _tgTableId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgDatasetId'
--
-- * 'tgProjectId'
--
-- * 'tgTableId'
tablesGet
    :: Text -- ^ 'tgDatasetId'
    -> Text -- ^ 'tgProjectId'
    -> Text -- ^ 'tgTableId'
    -> TablesGet
tablesGet pTgDatasetId_ pTgProjectId_ pTgTableId_ =
    TablesGet
    { _tgDatasetId = pTgDatasetId_
    , _tgProjectId = pTgProjectId_
    , _tgTableId = pTgTableId_
    }

-- | Dataset ID of the requested table
tgDatasetId :: Lens' TablesGet Text
tgDatasetId
  = lens _tgDatasetId (\ s a -> s{_tgDatasetId = a})

-- | Project ID of the requested table
tgProjectId :: Lens' TablesGet Text
tgProjectId
  = lens _tgProjectId (\ s a -> s{_tgProjectId = a})

-- | Table ID of the requested table
tgTableId :: Lens' TablesGet Text
tgTableId
  = lens _tgTableId (\ s a -> s{_tgTableId = a})

instance GoogleRequest TablesGet where
        type Rs TablesGet = Table
        requestClient TablesGet{..}
          = go _tgProjectId _tgDatasetId _tgTableId
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy TablesGetResource)
                      mempty
