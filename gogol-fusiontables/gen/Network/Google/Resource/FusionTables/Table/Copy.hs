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
-- Module      : Network.Google.Resource.FusionTables.Table.Copy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies a table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.copy@.
module Network.Google.Resource.FusionTables.Table.Copy
    (
    -- * REST Resource
      TableCopyResource

    -- * Creating a Request
    , tableCopy
    , TableCopy

    -- * Request Lenses
    , tcTableId
    , tcCopyPresentation
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.table.copy@ method which the
-- 'TableCopy' request conforms to.
type TableCopyResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "copy" :>
               QueryParam "copyPresentation" Bool :>
                 QueryParam "alt" AltJSON :> Post '[JSON] Table

-- | Copies a table.
--
-- /See:/ 'tableCopy' smart constructor.
data TableCopy = TableCopy
    { _tcTableId          :: !Text
    , _tcCopyPresentation :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableCopy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcTableId'
--
-- * 'tcCopyPresentation'
tableCopy
    :: Text -- ^ 'tcTableId'
    -> TableCopy
tableCopy pTcTableId_ =
    TableCopy
    { _tcTableId = pTcTableId_
    , _tcCopyPresentation = Nothing
    }

-- | ID of the table that is being copied.
tcTableId :: Lens' TableCopy Text
tcTableId
  = lens _tcTableId (\ s a -> s{_tcTableId = a})

-- | Whether to also copy tabs, styles, and templates. Default is false.
tcCopyPresentation :: Lens' TableCopy (Maybe Bool)
tcCopyPresentation
  = lens _tcCopyPresentation
      (\ s a -> s{_tcCopyPresentation = a})

instance GoogleRequest TableCopy where
        type Rs TableCopy = Table
        type Scopes TableCopy =
             '["https://www.googleapis.com/auth/fusiontables",
               "https://www.googleapis.com/auth/fusiontables.readonly"]
        requestClient TableCopy{..}
          = go _tcTableId _tcCopyPresentation (Just AltJSON)
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TableCopyResource)
                      mempty
