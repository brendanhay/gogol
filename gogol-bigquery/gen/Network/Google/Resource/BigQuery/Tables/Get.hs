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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , tgDataSetId
    , tgProjectId
    , tgSelectedFields
    , tgTableId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquery.tables.get@ method which the
-- 'TablesGet' request conforms to.
type TablesGetResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "tables" :>
                   Capture "tableId" Text :>
                     QueryParam "selectedFields" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Table

-- | Gets the specified table resource by table ID. This method does not
-- return the data in the table, it only returns the table resource, which
-- describes the structure of this table.
--
-- /See:/ 'tablesGet' smart constructor.
data TablesGet = TablesGet'
    { _tgDataSetId      :: !Text
    , _tgProjectId      :: !Text
    , _tgSelectedFields :: !(Maybe Text)
    , _tgTableId        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgDataSetId'
--
-- * 'tgProjectId'
--
-- * 'tgSelectedFields'
--
-- * 'tgTableId'
tablesGet
    :: Text -- ^ 'tgDataSetId'
    -> Text -- ^ 'tgProjectId'
    -> Text -- ^ 'tgTableId'
    -> TablesGet
tablesGet pTgDataSetId_ pTgProjectId_ pTgTableId_ =
    TablesGet'
    { _tgDataSetId = pTgDataSetId_
    , _tgProjectId = pTgProjectId_
    , _tgSelectedFields = Nothing
    , _tgTableId = pTgTableId_
    }

-- | Dataset ID of the requested table
tgDataSetId :: Lens' TablesGet Text
tgDataSetId
  = lens _tgDataSetId (\ s a -> s{_tgDataSetId = a})

-- | Project ID of the requested table
tgProjectId :: Lens' TablesGet Text
tgProjectId
  = lens _tgProjectId (\ s a -> s{_tgProjectId = a})

-- | List of fields to return (comma-separated). If unspecified, all fields
-- are returned
tgSelectedFields :: Lens' TablesGet (Maybe Text)
tgSelectedFields
  = lens _tgSelectedFields
      (\ s a -> s{_tgSelectedFields = a})

-- | Table ID of the requested table
tgTableId :: Lens' TablesGet Text
tgTableId
  = lens _tgTableId (\ s a -> s{_tgTableId = a})

instance GoogleRequest TablesGet where
        type Rs TablesGet = Table
        type Scopes TablesGet =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient TablesGet'{..}
          = go _tgProjectId _tgDataSetId _tgTableId
              _tgSelectedFields
              (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy TablesGetResource)
                      mempty
