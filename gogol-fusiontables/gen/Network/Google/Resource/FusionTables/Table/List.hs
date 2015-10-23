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
-- Module      : Network.Google.Resource.FusionTables.Table.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of tables a user owns.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.list@.
module Network.Google.Resource.FusionTables.Table.List
    (
    -- * REST Resource
      TableListResource

    -- * Creating a Request
    , tableList'
    , TableList'

    -- * Request Lenses
    , tPageToken
    , tMaxResults
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.table.list@ method which the
-- 'TableList'' request conforms to.
type TableListResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" (JSONText Word32) :>
               QueryParam "alt" AltJSON :> Get '[JSON] TableList

-- | Retrieves a list of tables a user owns.
--
-- /See:/ 'tableList'' smart constructor.
data TableList' = TableList'
    { _tPageToken  :: !(Maybe Text)
    , _tMaxResults :: !(Maybe (JSONText Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tPageToken'
--
-- * 'tMaxResults'
tableList'
    :: TableList'
tableList' =
    TableList'
    { _tPageToken = Nothing
    , _tMaxResults = Nothing
    }

-- | Continuation token specifying which result page to return.
tPageToken :: Lens' TableList' (Maybe Text)
tPageToken
  = lens _tPageToken (\ s a -> s{_tPageToken = a})

-- | Maximum number of tables to return. Default is 5.
tMaxResults :: Lens' TableList' (Maybe Word32)
tMaxResults
  = lens _tMaxResults (\ s a -> s{_tMaxResults = a}) .
      mapping _Coerce

instance GoogleRequest TableList' where
        type Rs TableList' = TableList
        requestClient TableList'{..}
          = go _tPageToken _tMaxResults (Just AltJSON)
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TableListResource)
                      mempty
