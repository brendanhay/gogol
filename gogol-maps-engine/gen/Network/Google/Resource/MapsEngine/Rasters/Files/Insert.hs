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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Upload a file to a raster asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasters.files.insert@.
module Network.Google.Resource.MapsEngine.Rasters.Files.Insert
    (
    -- * REST Resource
      RastersFilesInsertResource

    -- * Creating a Request
    , rastersFilesInsert
    , RastersFilesInsert

    -- * Request Lenses
    , rfiId
    , rfiFilename
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasters.files.insert@ method which the
-- 'RastersFilesInsert' request conforms to.
type RastersFilesInsertResource =
     "mapsengine" :>
       "v1" :>
         "rasters" :>
           Capture "id" Text :>
             "files" :>
               QueryParam "filename" Text :>
                 QueryParam "alt" AltJSON :> Post '[JSON] ()
       :<|>
       "upload" :>
         "mapsengine" :>
           "v1" :>
             "rasters" :>
               Capture "id" Text :>
                 "files" :>
                   QueryParam "filename" Text :>
                     QueryParam "alt" AltJSON :>
                       QueryParam "uploadType" AltMedia :>
                         ReqBody '[OctetStream] RequestBody :> Post '[JSON] ()

-- | Upload a file to a raster asset.
--
-- /See:/ 'rastersFilesInsert' smart constructor.
data RastersFilesInsert = RastersFilesInsert'
    { _rfiId       :: !Text
    , _rfiFilename :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersFilesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfiId'
--
-- * 'rfiFilename'
rastersFilesInsert
    :: Text -- ^ 'rfiId'
    -> Text -- ^ 'rfiFilename'
    -> RastersFilesInsert
rastersFilesInsert pRfiId_ pRfiFilename_ =
    RastersFilesInsert'
    { _rfiId = pRfiId_
    , _rfiFilename = pRfiFilename_
    }

-- | The ID of the raster asset.
rfiId :: Lens' RastersFilesInsert Text
rfiId = lens _rfiId (\ s a -> s{_rfiId = a})

-- | The file name of this uploaded file.
rfiFilename :: Lens' RastersFilesInsert Text
rfiFilename
  = lens _rfiFilename (\ s a -> s{_rfiFilename = a})

instance GoogleRequest RastersFilesInsert where
        type Rs RastersFilesInsert = ()
        type Scopes RastersFilesInsert =
             '["https://www.googleapis.com/auth/mapsengine"]
        requestClient RastersFilesInsert'{..}
          = go _rfiId (Just _rfiFilename) (Just AltJSON)
              mapsEngineService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy RastersFilesInsertResource)
                      mempty

instance GoogleRequest
         (MediaUpload RastersFilesInsert) where
        type Rs (MediaUpload RastersFilesInsert) = ()
        type Scopes (MediaUpload RastersFilesInsert) =
             Scopes RastersFilesInsert
        requestClient
          (MediaUpload RastersFilesInsert'{..} body)
          = go _rfiId (Just _rfiFilename) (Just AltJSON)
              (Just AltMedia)
              body
              mapsEngineService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy RastersFilesInsertResource)
                      mempty
