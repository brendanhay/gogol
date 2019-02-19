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
-- Module      : Network.Google.Resource.FusionTables.Table.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a specific table by its ID.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.get@.
module Network.Google.Resource.FusionTables.Table.Get
    (
    -- * REST Resource
      TableGetResource

    -- * Creating a Request
    , tableGet
    , TableGet

    -- * Request Lenses
    , tgTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.table.get@ method which the
-- 'TableGet' request conforms to.
type TableGetResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Table

-- | Retrieves a specific table by its ID.
--
-- /See:/ 'tableGet' smart constructor.
newtype TableGet =
  TableGet'
    { _tgTableId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TableGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgTableId'
tableGet
    :: Text -- ^ 'tgTableId'
    -> TableGet
tableGet pTgTableId_ = TableGet' {_tgTableId = pTgTableId_}

-- | Identifier for the table being requested.
tgTableId :: Lens' TableGet Text
tgTableId
  = lens _tgTableId (\ s a -> s{_tgTableId = a})

instance GoogleRequest TableGet where
        type Rs TableGet = Table
        type Scopes TableGet =
             '["https://www.googleapis.com/auth/fusiontables",
               "https://www.googleapis.com/auth/fusiontables.readonly"]
        requestClient TableGet'{..}
          = go _tgTableId (Just AltJSON) fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TableGetResource)
                      mempty
