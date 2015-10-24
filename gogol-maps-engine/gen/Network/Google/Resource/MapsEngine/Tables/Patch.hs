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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Mutate a table asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.tables.patch@.
module Network.Google.Resource.MapsEngine.Tables.Patch
    (
    -- * REST Resource
      TablesPatchResource

    -- * Creating a Request
    , tablesPatch
    , TablesPatch

    -- * Request Lenses
    , tpPayload
    , tpId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.tables.patch@ method which the
-- 'TablesPatch' request conforms to.
type TablesPatchResource =
     "mapsengine" :>
       "v1" :>
         "tables" :>
           Capture "id" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Table :> Patch '[JSON] ()

-- | Mutate a table asset.
--
-- /See:/ 'tablesPatch' smart constructor.
data TablesPatch = TablesPatch
    { _tpPayload :: !Table
    , _tpId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpPayload'
--
-- * 'tpId'
tablesPatch
    :: Table -- ^ 'tpPayload'
    -> Text -- ^ 'tpId'
    -> TablesPatch
tablesPatch pTpPayload_ pTpId_ =
    TablesPatch
    { _tpPayload = pTpPayload_
    , _tpId = pTpId_
    }

-- | Multipart request metadata.
tpPayload :: Lens' TablesPatch Table
tpPayload
  = lens _tpPayload (\ s a -> s{_tpPayload = a})

-- | The ID of the table.
tpId :: Lens' TablesPatch Text
tpId = lens _tpId (\ s a -> s{_tpId = a})

instance GoogleRequest TablesPatch where
        type Rs TablesPatch = ()
        requestClient TablesPatch{..}
          = go _tpId (Just AltJSON) _tpPayload
              mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy TablesPatchResource)
                      mempty
