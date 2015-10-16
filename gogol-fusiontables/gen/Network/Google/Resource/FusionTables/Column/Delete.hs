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
-- Module      : Network.Google.Resource.FusionTables.Column.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified column.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesColumnDelete@.
module Network.Google.Resource.FusionTables.Column.Delete
    (
    -- * REST Resource
      ColumnDeleteResource

    -- * Creating a Request
    , columnDelete'
    , ColumnDelete'

    -- * Request Lenses
    , cdTableId
    , cdColumnId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesColumnDelete@ method which the
-- 'ColumnDelete'' request conforms to.
type ColumnDeleteResource =
     "tables" :>
       Capture "tableId" Text :>
         "columns" :>
           Capture "columnId" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified column.
--
-- /See:/ 'columnDelete'' smart constructor.
data ColumnDelete' = ColumnDelete'
    { _cdTableId  :: !Text
    , _cdColumnId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColumnDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdTableId'
--
-- * 'cdColumnId'
columnDelete'
    :: Text -- ^ 'tableId'
    -> Text -- ^ 'columnId'
    -> ColumnDelete'
columnDelete' pCdTableId_ pCdColumnId_ =
    ColumnDelete'
    { _cdTableId = pCdTableId_
    , _cdColumnId = pCdColumnId_
    }

-- | Table from which the column is being deleted.
cdTableId :: Lens' ColumnDelete' Text
cdTableId
  = lens _cdTableId (\ s a -> s{_cdTableId = a})

-- | Name or identifier for the column being deleted.
cdColumnId :: Lens' ColumnDelete' Text
cdColumnId
  = lens _cdColumnId (\ s a -> s{_cdColumnId = a})

instance GoogleRequest ColumnDelete' where
        type Rs ColumnDelete' = ()
        requestClient ColumnDelete'{..}
          = go _cdTableId _cdColumnId (Just AltJSON)
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy ColumnDeleteResource)
                      mempty
