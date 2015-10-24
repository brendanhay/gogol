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
-- Module      : Network.Google.Resource.BigQuery.Tables.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information in an existing table. The update method replaces the
-- entire table resource, whereas the patch method only replaces fields
-- that are provided in the submitted table resource. This method supports
-- patch semantics.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.tables.patch@.
module Network.Google.Resource.BigQuery.Tables.Patch
    (
    -- * REST Resource
      TablesPatchResource

    -- * Creating a Request
    , tablesPatch
    , TablesPatch

    -- * Request Lenses
    , tpPayload
    , tpDataSetId
    , tpProjectId
    , tpTableId
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquery.tables.patch@ method which the
-- 'TablesPatch' request conforms to.
type TablesPatchResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           Capture "projectId" Text :>
             "datasets" :>
               Capture "datasetId" Text :>
                 "tables" :>
                   Capture "tableId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Table :> Patch '[JSON] Table

-- | Updates information in an existing table. The update method replaces the
-- entire table resource, whereas the patch method only replaces fields
-- that are provided in the submitted table resource. This method supports
-- patch semantics.
--
-- /See:/ 'tablesPatch' smart constructor.
data TablesPatch = TablesPatch
    { _tpPayload   :: !Table
    , _tpDataSetId :: !Text
    , _tpProjectId :: !Text
    , _tpTableId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpPayload'
--
-- * 'tpDataSetId'
--
-- * 'tpProjectId'
--
-- * 'tpTableId'
tablesPatch
    :: Table -- ^ 'tpPayload'
    -> Text -- ^ 'tpDataSetId'
    -> Text -- ^ 'tpProjectId'
    -> Text -- ^ 'tpTableId'
    -> TablesPatch
tablesPatch pTpPayload_ pTpDataSetId_ pTpProjectId_ pTpTableId_ =
    TablesPatch
    { _tpPayload = pTpPayload_
    , _tpDataSetId = pTpDataSetId_
    , _tpProjectId = pTpProjectId_
    , _tpTableId = pTpTableId_
    }

-- | Multipart request metadata.
tpPayload :: Lens' TablesPatch Table
tpPayload
  = lens _tpPayload (\ s a -> s{_tpPayload = a})

-- | Dataset ID of the table to update
tpDataSetId :: Lens' TablesPatch Text
tpDataSetId
  = lens _tpDataSetId (\ s a -> s{_tpDataSetId = a})

-- | Project ID of the table to update
tpProjectId :: Lens' TablesPatch Text
tpProjectId
  = lens _tpProjectId (\ s a -> s{_tpProjectId = a})

-- | Table ID of the table to update
tpTableId :: Lens' TablesPatch Text
tpTableId
  = lens _tpTableId (\ s a -> s{_tpTableId = a})

instance GoogleRequest TablesPatch where
        type Rs TablesPatch = Table
        requestClient TablesPatch{..}
          = go _tpProjectId _tpDataSetId _tpTableId
              (Just AltJSON)
              _tpPayload
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy TablesPatchResource)
                      mempty
