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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a table asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.tables.create@.
module Network.Google.Resource.MapsEngine.Tables.Create
    (
    -- * REST Resource
      TablesCreateResource

    -- * Creating a Request
    , tablesCreate
    , TablesCreate

    -- * Request Lenses
    , tcPayload
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.tables.create@ method which the
-- 'TablesCreate' request conforms to.
type TablesCreateResource =
     "mapsengine" :>
       "v1" :>
         "tables" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Table :> Post '[JSON] Table

-- | Create a table asset.
--
-- /See:/ 'tablesCreate' smart constructor.
newtype TablesCreate = TablesCreate
    { _tcPayload :: Table
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcPayload'
tablesCreate
    :: Table -- ^ 'tcPayload'
    -> TablesCreate
tablesCreate pTcPayload_ =
    TablesCreate
    { _tcPayload = pTcPayload_
    }

-- | Multipart request metadata.
tcPayload :: Lens' TablesCreate Table
tcPayload
  = lens _tcPayload (\ s a -> s{_tcPayload = a})

instance GoogleRequest TablesCreate where
        type Rs TablesCreate = Table
        requestClient TablesCreate{..}
          = go (Just AltJSON) _tcPayload mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy TablesCreateResource)
                      mempty
