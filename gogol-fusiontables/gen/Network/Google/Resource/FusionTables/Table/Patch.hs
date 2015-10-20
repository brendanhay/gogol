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
-- Module      : Network.Google.Resource.FusionTables.Table.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing table. Unless explicitly requested, only the name,
-- description, and attribution will be updated. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.patch@.
module Network.Google.Resource.FusionTables.Table.Patch
    (
    -- * REST Resource
      TablePatchResource

    -- * Creating a Request
    , tablePatch
    , TablePatch

    -- * Request Lenses
    , tpPayload
    , tpReplaceViewDefinition
    , tpTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.table.patch@ method which the
-- 'TablePatch' request conforms to.
type TablePatchResource =
     "tables" :>
       Capture "tableId" Text :>
         QueryParam "replaceViewDefinition" Bool :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Table :> Patch '[JSON] Table

-- | Updates an existing table. Unless explicitly requested, only the name,
-- description, and attribution will be updated. This method supports patch
-- semantics.
--
-- /See:/ 'tablePatch' smart constructor.
data TablePatch = TablePatch
    { _tpPayload               :: !Table
    , _tpReplaceViewDefinition :: !(Maybe Bool)
    , _tpTableId               :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablePatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpPayload'
--
-- * 'tpReplaceViewDefinition'
--
-- * 'tpTableId'
tablePatch
    :: Table -- ^ 'tpPayload'
    -> Text -- ^ 'tpTableId'
    -> TablePatch
tablePatch pTpPayload_ pTpTableId_ =
    TablePatch
    { _tpPayload = pTpPayload_
    , _tpReplaceViewDefinition = Nothing
    , _tpTableId = pTpTableId_
    }

-- | Multipart request metadata.
tpPayload :: Lens' TablePatch Table
tpPayload
  = lens _tpPayload (\ s a -> s{_tpPayload = a})

-- | Whether the view definition is also updated. The specified view
-- definition replaces the existing one. Only a view can be updated with a
-- new definition.
tpReplaceViewDefinition :: Lens' TablePatch (Maybe Bool)
tpReplaceViewDefinition
  = lens _tpReplaceViewDefinition
      (\ s a -> s{_tpReplaceViewDefinition = a})

-- | ID of the table that is being updated.
tpTableId :: Lens' TablePatch Text
tpTableId
  = lens _tpTableId (\ s a -> s{_tpTableId = a})

instance GoogleRequest TablePatch where
        type Rs TablePatch = Table
        requestClient TablePatch{..}
          = go _tpTableId _tpReplaceViewDefinition
              (Just AltJSON)
              _tpPayload
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TablePatchResource)
                      mempty
