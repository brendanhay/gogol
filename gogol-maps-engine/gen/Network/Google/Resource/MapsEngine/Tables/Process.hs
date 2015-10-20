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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Process
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Process a table asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.tables.process@.
module Network.Google.Resource.MapsEngine.Tables.Process
    (
    -- * REST Resource
      TablesProcessResource

    -- * Creating a Request
    , tablesProcess
    , TablesProcess

    -- * Request Lenses
    , tpsId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.tables.process@ method which the
-- 'TablesProcess' request conforms to.
type TablesProcessResource =
     "tables" :>
       Capture "id" Text :>
         "process" :>
           QueryParam "alt" AltJSON :>
             Post '[JSON] ProcessResponse

-- | Process a table asset.
--
-- /See:/ 'tablesProcess' smart constructor.
newtype TablesProcess = TablesProcess
    { _tpsId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesProcess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpsId'
tablesProcess
    :: Text -- ^ 'tpsId'
    -> TablesProcess
tablesProcess pTpsId_ =
    TablesProcess
    { _tpsId = pTpsId_
    }

-- | The ID of the table.
tpsId :: Lens' TablesProcess Text
tpsId = lens _tpsId (\ s a -> s{_tpsId = a})

instance GoogleRequest TablesProcess where
        type Rs TablesProcess = ProcessResponse
        requestClient TablesProcess{..}
          = go _tpsId (Just AltJSON) mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy TablesProcessResource)
                      mempty
