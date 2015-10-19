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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a table.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.tables.delete@.
module Network.Google.Resource.MapsEngine.Tables.Delete
    (
    -- * REST Resource
      TablesDeleteResource

    -- * Creating a Request
    , tablesDelete'
    , TablesDelete'

    -- * Request Lenses
    , tdId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.tables.delete@ method which the
-- 'TablesDelete'' request conforms to.
type TablesDeleteResource =
     "tables" :>
       Capture "id" Text :>
         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a table.
--
-- /See:/ 'tablesDelete'' smart constructor.
newtype TablesDelete' = TablesDelete'
    { _tdId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdId'
tablesDelete'
    :: Text -- ^ 'tdId'
    -> TablesDelete'
tablesDelete' pTdId_ =
    TablesDelete'
    { _tdId = pTdId_
    }

-- | The ID of the table. Only the table creator or project owner are
-- permitted to delete. If the table is included in a layer, the request
-- will fail. Remove it from all layers prior to deleting.
tdId :: Lens' TablesDelete' Text
tdId = lens _tdId (\ s a -> s{_tdId = a})

instance GoogleRequest TablesDelete' where
        type Rs TablesDelete' = ()
        requestClient TablesDelete'{..}
          = go _tdId (Just AltJSON) mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy TablesDeleteResource)
                      mempty
