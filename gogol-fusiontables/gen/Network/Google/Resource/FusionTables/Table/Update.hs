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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , tableUpdate
    , TableUpdate

    -- * Request Lenses
    , tabPayload
    , tabReplaceViewDefinition
    , tabTableId
    ) where

import Network.Google.FusionTables.Types
import Network.Google.Prelude

-- | A resource alias for @fusiontables.table.update@ method which the
-- 'TableUpdate' request conforms to.
type TableUpdateResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             QueryParam "replaceViewDefinition" Bool :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Table :> Put '[JSON] Table

-- | Updates an existing table. Unless explicitly requested, only the name,
-- description, and attribution will be updated.
--
-- /See:/ 'tableUpdate' smart constructor.
data TableUpdate =
  TableUpdate'
    { _tabPayload :: !Table
    , _tabReplaceViewDefinition :: !(Maybe Bool)
    , _tabTableId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tabPayload'
--
-- * 'tabReplaceViewDefinition'
--
-- * 'tabTableId'
tableUpdate
    :: Table -- ^ 'tabPayload'
    -> Text -- ^ 'tabTableId'
    -> TableUpdate
tableUpdate pTabPayload_ pTabTableId_ =
  TableUpdate'
    { _tabPayload = pTabPayload_
    , _tabReplaceViewDefinition = Nothing
    , _tabTableId = pTabTableId_
    }


-- | Multipart request metadata.
tabPayload :: Lens' TableUpdate Table
tabPayload
  = lens _tabPayload (\ s a -> s{_tabPayload = a})

-- | Whether the view definition is also updated. The specified view
-- definition replaces the existing one. Only a view can be updated with a
-- new definition.
tabReplaceViewDefinition :: Lens' TableUpdate (Maybe Bool)
tabReplaceViewDefinition
  = lens _tabReplaceViewDefinition
      (\ s a -> s{_tabReplaceViewDefinition = a})

-- | ID of the table that is being updated.
tabTableId :: Lens' TableUpdate Text
tabTableId
  = lens _tabTableId (\ s a -> s{_tabTableId = a})

instance GoogleRequest TableUpdate where
        type Rs TableUpdate = Table
        type Scopes TableUpdate =
             '["https://www.googleapis.com/auth/fusiontables"]
        requestClient TableUpdate'{..}
          = go _tabTableId _tabReplaceViewDefinition
              (Just AltJSON)
              _tabPayload
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TableUpdateResource)
                      mempty
