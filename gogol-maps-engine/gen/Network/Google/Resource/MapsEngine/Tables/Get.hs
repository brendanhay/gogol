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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return metadata for a particular table, including the schema.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesGet@.
module Network.Google.Resource.MapsEngine.Tables.Get
    (
    -- * REST Resource
      TablesGetResource

    -- * Creating a Request
    , tablesGet'
    , TablesGet'

    -- * Request Lenses
    , tgVersion
    , tgId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesGet@ method which the
-- 'TablesGet'' request conforms to.
type TablesGetResource =
     "tables" :>
       Capture "id" Text :>
         QueryParam "version" TablesGetVersion :>
           QueryParam "alt" AltJSON :> Get '[JSON] Table

-- | Return metadata for a particular table, including the schema.
--
-- /See:/ 'tablesGet'' smart constructor.
data TablesGet' = TablesGet'
    { _tgVersion :: !(Maybe TablesGetVersion)
    , _tgId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgVersion'
--
-- * 'tgId'
tablesGet'
    :: Text -- ^ 'id'
    -> TablesGet'
tablesGet' pTgId_ =
    TablesGet'
    { _tgVersion = Nothing
    , _tgId = pTgId_
    }

tgVersion :: Lens' TablesGet' (Maybe TablesGetVersion)
tgVersion
  = lens _tgVersion (\ s a -> s{_tgVersion = a})

-- | The ID of the table.
tgId :: Lens' TablesGet' Text
tgId = lens _tgId (\ s a -> s{_tgId = a})

instance GoogleRequest TablesGet' where
        type Rs TablesGet' = Table
        requestClient TablesGet'{..}
          = go _tgId _tgVersion (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy TablesGetResource)
                      mempty
