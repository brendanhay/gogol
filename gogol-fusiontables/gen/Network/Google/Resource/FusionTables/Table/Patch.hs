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
-- | Updates an existing table. Unless explicitly requested, only the name,
-- description, and attribution will be updated. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTablePatch@.
module Network.Google.Resource.FusionTables.Table.Patch
    (
    -- * REST Resource
      TablePatchResource

    -- * Creating a Request
    , tablePatch'
    , TablePatch'

    -- * Request Lenses
    , tppPayload
    , tppReplaceViewDefinition
    , tppTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTablePatch@ method which the
-- 'TablePatch'' request conforms to.
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
-- /See:/ 'tablePatch'' smart constructor.
data TablePatch' = TablePatch'
    { _tppPayload               :: !Table
    , _tppReplaceViewDefinition :: !(Maybe Bool)
    , _tppTableId               :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablePatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tppPayload'
--
-- * 'tppReplaceViewDefinition'
--
-- * 'tppTableId'
tablePatch'
    :: Table -- ^ 'payload'
    -> Text -- ^ 'tableId'
    -> TablePatch'
tablePatch' pTppPayload_ pTppTableId_ =
    TablePatch'
    { _tppPayload = pTppPayload_
    , _tppReplaceViewDefinition = Nothing
    , _tppTableId = pTppTableId_
    }

-- | Multipart request metadata.
tppPayload :: Lens' TablePatch' Table
tppPayload
  = lens _tppPayload (\ s a -> s{_tppPayload = a})

-- | Whether the view definition is also updated. The specified view
-- definition replaces the existing one. Only a view can be updated with a
-- new definition.
tppReplaceViewDefinition :: Lens' TablePatch' (Maybe Bool)
tppReplaceViewDefinition
  = lens _tppReplaceViewDefinition
      (\ s a -> s{_tppReplaceViewDefinition = a})

-- | ID of the table that is being updated.
tppTableId :: Lens' TablePatch' Text
tppTableId
  = lens _tppTableId (\ s a -> s{_tppTableId = a})

instance GoogleRequest TablePatch' where
        type Rs TablePatch' = Table
        requestClient TablePatch'{..}
          = go _tppTableId _tppReplaceViewDefinition
              (Just AltJSON)
              _tppPayload
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TablePatchResource)
                      mempty
