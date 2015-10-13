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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Files.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Upload a file to a raster asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRastersFilesInsert@.
module Network.Google.Resource.MapsEngine.Rasters.Files.Insert
    (
    -- * REST Resource
      RastersFilesInsertResource

    -- * Creating a Request
    , rastersFilesInsert'
    , RastersFilesInsert'

    -- * Request Lenses
    , rfiMedia
    , rfiId
    , rfiFilename
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRastersFilesInsert@ method which the
-- 'RastersFilesInsert'' request conforms to.
type RastersFilesInsertResource =
     "rasters" :>
       Capture "id" Text :>
         "files" :>
           QueryParam "filename" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[OctetStream] RequestBody :> Post '[JSON] ()

-- | Upload a file to a raster asset.
--
-- /See:/ 'rastersFilesInsert'' smart constructor.
data RastersFilesInsert' = RastersFilesInsert'
    { _rfiMedia    :: !Stream
    , _rfiId       :: !Text
    , _rfiFilename :: !Text
    }

-- | Creates a value of 'RastersFilesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfiMedia'
--
-- * 'rfiId'
--
-- * 'rfiFilename'
rastersFilesInsert'
    :: Stream -- ^ 'media'
    -> Text -- ^ 'id'
    -> Text -- ^ 'filename'
    -> RastersFilesInsert'
rastersFilesInsert' pRfiMedia_ pRfiId_ pRfiFilename_ =
    RastersFilesInsert'
    { _rfiMedia = pRfiMedia_
    , _rfiId = pRfiId_
    , _rfiFilename = pRfiFilename_
    }

rfiMedia :: Lens' RastersFilesInsert' Stream
rfiMedia = lens _rfiMedia (\ s a -> s{_rfiMedia = a})

-- | The ID of the raster asset.
rfiId :: Lens' RastersFilesInsert' Text
rfiId = lens _rfiId (\ s a -> s{_rfiId = a})

-- | The file name of this uploaded file.
rfiFilename :: Lens' RastersFilesInsert' Text
rfiFilename
  = lens _rfiFilename (\ s a -> s{_rfiFilename = a})

instance GoogleRequest RastersFilesInsert' where
        type Rs RastersFilesInsert' = ()
        requestClient RastersFilesInsert'{..}
          = go _rfiId (Just _rfiFilename) (Just AltJSON)
              _rfiMedia
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy RastersFilesInsertResource)
                      mempty
