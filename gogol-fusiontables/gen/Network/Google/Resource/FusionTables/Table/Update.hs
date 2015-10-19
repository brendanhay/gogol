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
-- Module      : Network.Google.Resource.FusionTables.Table.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing table. Unless explicitly requested, only the name,
-- description, and attribution will be updated.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.update@.
module Network.Google.Resource.FusionTables.Table.Update
    (
    -- * REST Resource
      TableUpdateResource

    -- * Creating a Request
    , tableUpdate'
    , TableUpdate'

    -- * Request Lenses
    , tuPayload
    , tuReplaceViewDefinition
    , tuTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.table.update@ method which the
-- 'TableUpdate'' request conforms to.
type TableUpdateResource =
     "tables" :>
       Capture "tableId" Text :>
         QueryParam "replaceViewDefinition" Bool :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Table :> Put '[JSON] Table

-- | Updates an existing table. Unless explicitly requested, only the name,
-- description, and attribution will be updated.
--
-- /See:/ 'tableUpdate'' smart constructor.
data TableUpdate' = TableUpdate'
    { _tuPayload               :: !Table
    , _tuReplaceViewDefinition :: !(Maybe Bool)
    , _tuTableId               :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuPayload'
--
-- * 'tuReplaceViewDefinition'
--
-- * 'tuTableId'
tableUpdate'
    :: Table -- ^ 'tuPayload'
    -> Text -- ^ 'tuTableId'
    -> TableUpdate'
tableUpdate' pTuPayload_ pTuTableId_ =
    TableUpdate'
    { _tuPayload = pTuPayload_
    , _tuReplaceViewDefinition = Nothing
    , _tuTableId = pTuTableId_
    }

-- | Multipart request metadata.
tuPayload :: Lens' TableUpdate' Table
tuPayload
  = lens _tuPayload (\ s a -> s{_tuPayload = a})

-- | Whether the view definition is also updated. The specified view
-- definition replaces the existing one. Only a view can be updated with a
-- new definition.
tuReplaceViewDefinition :: Lens' TableUpdate' (Maybe Bool)
tuReplaceViewDefinition
  = lens _tuReplaceViewDefinition
      (\ s a -> s{_tuReplaceViewDefinition = a})

-- | ID of the table that is being updated.
tuTableId :: Lens' TableUpdate' Text
tuTableId
  = lens _tuTableId (\ s a -> s{_tuTableId = a})

instance GoogleRequest TableUpdate' where
        type Rs TableUpdate' = Table
        requestClient TableUpdate'{..}
          = go _tuTableId _tuReplaceViewDefinition
              (Just AltJSON)
              _tuPayload
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TableUpdateResource)
                      mempty
