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
-- Module      : Network.Google.Resource.FusionTables.Table.RefetchSheet
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces rows of the table with the rows of the spreadsheet that is
-- first imported from. Current rows remain visible until all replacement
-- rows are ready.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.refetchSheet@.
module Network.Google.Resource.FusionTables.Table.RefetchSheet
    (
    -- * REST Resource
      TableRefetchSheetResource

    -- * Creating a Request
    , tableRefetchSheet
    , TableRefetchSheet

    -- * Request Lenses
    , trsTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.table.refetchSheet@ method which the
-- 'TableRefetchSheet' request conforms to.
type TableRefetchSheetResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "refetch" :>
               QueryParam "alt" AltJSON :> Post '[JSON] Task

-- | Replaces rows of the table with the rows of the spreadsheet that is
-- first imported from. Current rows remain visible until all replacement
-- rows are ready.
--
-- /See:/ 'tableRefetchSheet' smart constructor.
newtype TableRefetchSheet = TableRefetchSheet'
    { _trsTableId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableRefetchSheet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trsTableId'
tableRefetchSheet
    :: Text -- ^ 'trsTableId'
    -> TableRefetchSheet
tableRefetchSheet pTrsTableId_ =
    TableRefetchSheet'
    { _trsTableId = pTrsTableId_
    }

-- | Table whose rows will be replaced from the spreadsheet.
trsTableId :: Lens' TableRefetchSheet Text
trsTableId
  = lens _trsTableId (\ s a -> s{_trsTableId = a})

instance GoogleRequest TableRefetchSheet where
        type Rs TableRefetchSheet = Task
        type Scopes TableRefetchSheet =
             '["https://www.googleapis.com/auth/fusiontables"]
        requestClient TableRefetchSheet'{..}
          = go _trsTableId (Just AltJSON) fusionTablesService
          where go
                  = buildClient
                      (Proxy :: Proxy TableRefetchSheetResource)
                      mempty
