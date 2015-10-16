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
-- Module      : Network.Google.Resource.FusionTables.Table.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTableInsert@.
module Network.Google.Resource.FusionTables.Table.Insert
    (
    -- * REST Resource
      TableInsertResource

    -- * Creating a Request
    , tableInsert'
    , TableInsert'

    -- * Request Lenses
    , tPayload
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTableInsert@ method which the
-- 'TableInsert'' request conforms to.
type TableInsertResource =
     "tables" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON] Table :> Post '[JSON] Table

-- | Creates a new table.
--
-- /See:/ 'tableInsert'' smart constructor.
newtype TableInsert' = TableInsert'
    { _tPayload :: Table
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tPayload'
tableInsert'
    :: Table -- ^ 'payload'
    -> TableInsert'
tableInsert' pTPayload_ =
    TableInsert'
    { _tPayload = pTPayload_
    }

-- | Multipart request metadata.
tPayload :: Lens' TableInsert' Table
tPayload = lens _tPayload (\ s a -> s{_tPayload = a})

instance GoogleRequest TableInsert' where
        type Rs TableInsert' = Table
        requestClient TableInsert'{..}
          = go (Just AltJSON) _tPayload fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TableInsertResource)
                      mempty
