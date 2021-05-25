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
-- Module      : Network.Google.Resource.FusionTables.Column.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the name or type of an existing column.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.column.update@.
module Network.Google.Resource.FusionTables.Column.Update
    (
    -- * REST Resource
      ColumnUpdateResource

    -- * Creating a Request
    , columnUpdate
    , ColumnUpdate

    -- * Request Lenses
    , cuPayload
    , cuTableId
    , cuColumnId
    ) where

import Network.Google.FusionTables.Types
import Network.Google.Prelude

-- | A resource alias for @fusiontables.column.update@ method which the
-- 'ColumnUpdate' request conforms to.
type ColumnUpdateResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "columns" :>
               Capture "columnId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Column :> Put '[JSON] Column

-- | Updates the name or type of an existing column.
--
-- /See:/ 'columnUpdate' smart constructor.
data ColumnUpdate =
  ColumnUpdate'
    { _cuPayload :: !Column
    , _cuTableId :: !Text
    , _cuColumnId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ColumnUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuPayload'
--
-- * 'cuTableId'
--
-- * 'cuColumnId'
columnUpdate
    :: Column -- ^ 'cuPayload'
    -> Text -- ^ 'cuTableId'
    -> Text -- ^ 'cuColumnId'
    -> ColumnUpdate
columnUpdate pCuPayload_ pCuTableId_ pCuColumnId_ =
  ColumnUpdate'
    { _cuPayload = pCuPayload_
    , _cuTableId = pCuTableId_
    , _cuColumnId = pCuColumnId_
    }


-- | Multipart request metadata.
cuPayload :: Lens' ColumnUpdate Column
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

-- | Table for which the column is being updated.
cuTableId :: Lens' ColumnUpdate Text
cuTableId
  = lens _cuTableId (\ s a -> s{_cuTableId = a})

-- | Name or identifier for the column that is being updated.
cuColumnId :: Lens' ColumnUpdate Text
cuColumnId
  = lens _cuColumnId (\ s a -> s{_cuColumnId = a})

instance GoogleRequest ColumnUpdate where
        type Rs ColumnUpdate = Column
        type Scopes ColumnUpdate =
             '["https://www.googleapis.com/auth/fusiontables"]
        requestClient ColumnUpdate'{..}
          = go _cuTableId _cuColumnId (Just AltJSON) _cuPayload
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy ColumnUpdateResource)
                      mempty
