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
-- Module      : Network.Google.Resource.FusionTables.Column.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new column to the table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.column.insert@.
module Network.Google.Resource.FusionTables.Column.Insert
    (
    -- * REST Resource
      ColumnInsertResource

    -- * Creating a Request
    , columnInsert
    , ColumnInsert

    -- * Request Lenses
    , ciPayload
    , ciTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.column.insert@ method which the
-- 'ColumnInsert' request conforms to.
type ColumnInsertResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "columns" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Column :> Post '[JSON] Column

-- | Adds a new column to the table.
--
-- /See:/ 'columnInsert' smart constructor.
data ColumnInsert = ColumnInsert
    { _ciPayload :: !Column
    , _ciTableId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColumnInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciPayload'
--
-- * 'ciTableId'
columnInsert
    :: Column -- ^ 'ciPayload'
    -> Text -- ^ 'ciTableId'
    -> ColumnInsert
columnInsert pCiPayload_ pCiTableId_ =
    ColumnInsert
    { _ciPayload = pCiPayload_
    , _ciTableId = pCiTableId_
    }

-- | Multipart request metadata.
ciPayload :: Lens' ColumnInsert Column
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

-- | Table for which a new column is being added.
ciTableId :: Lens' ColumnInsert Text
ciTableId
  = lens _ciTableId (\ s a -> s{_ciTableId = a})

instance GoogleRequest ColumnInsert where
        type Rs ColumnInsert = Column
        requestClient ColumnInsert{..}
          = go _ciTableId (Just AltJSON) _ciPayload
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy ColumnInsertResource)
                      mempty
