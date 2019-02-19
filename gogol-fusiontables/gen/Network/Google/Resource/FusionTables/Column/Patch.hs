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
-- Module      : Network.Google.Resource.FusionTables.Column.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the name or type of an existing column. This method supports
-- patch semantics.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.column.patch@.
module Network.Google.Resource.FusionTables.Column.Patch
    (
    -- * REST Resource
      ColumnPatchResource

    -- * Creating a Request
    , columnPatch
    , ColumnPatch

    -- * Request Lenses
    , cpPayload
    , cpTableId
    , cpColumnId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.column.patch@ method which the
-- 'ColumnPatch' request conforms to.
type ColumnPatchResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "columns" :>
               Capture "columnId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Column :> Patch '[JSON] Column

-- | Updates the name or type of an existing column. This method supports
-- patch semantics.
--
-- /See:/ 'columnPatch' smart constructor.
data ColumnPatch =
  ColumnPatch'
    { _cpPayload  :: !Column
    , _cpTableId  :: !Text
    , _cpColumnId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ColumnPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpPayload'
--
-- * 'cpTableId'
--
-- * 'cpColumnId'
columnPatch
    :: Column -- ^ 'cpPayload'
    -> Text -- ^ 'cpTableId'
    -> Text -- ^ 'cpColumnId'
    -> ColumnPatch
columnPatch pCpPayload_ pCpTableId_ pCpColumnId_ =
  ColumnPatch'
    { _cpPayload = pCpPayload_
    , _cpTableId = pCpTableId_
    , _cpColumnId = pCpColumnId_
    }

-- | Multipart request metadata.
cpPayload :: Lens' ColumnPatch Column
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | Table for which the column is being updated.
cpTableId :: Lens' ColumnPatch Text
cpTableId
  = lens _cpTableId (\ s a -> s{_cpTableId = a})

-- | Name or identifier for the column that is being updated.
cpColumnId :: Lens' ColumnPatch Text
cpColumnId
  = lens _cpColumnId (\ s a -> s{_cpColumnId = a})

instance GoogleRequest ColumnPatch where
        type Rs ColumnPatch = Column
        type Scopes ColumnPatch =
             '["https://www.googleapis.com/auth/fusiontables"]
        requestClient ColumnPatch'{..}
          = go _cpTableId _cpColumnId (Just AltJSON) _cpPayload
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy ColumnPatchResource)
                      mempty
