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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Files.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Upload a file to a placeholder table asset. See Table Upload in the
-- Developer\'s Guide for more information. Supported file types are listed
-- in the Supported data formats and limits article of the Google Maps
-- Engine help center.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesFilesInsert@.
module Network.Google.Resource.MapsEngine.Tables.Files.Insert
    (
    -- * REST Resource
      TablesFilesInsertResource

    -- * Creating a Request
    , tablesFilesInsert'
    , TablesFilesInsert'

    -- * Request Lenses
    , tfiMedia
    , tfiId
    , tfiFilename
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesFilesInsert@ method which the
-- 'TablesFilesInsert'' request conforms to.
type TablesFilesInsertResource =
     "tables" :>
       Capture "id" Text :>
         "files" :>
           QueryParam "filename" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[OctetStream] RequestBody :> Post '[JSON] ()

-- | Upload a file to a placeholder table asset. See Table Upload in the
-- Developer\'s Guide for more information. Supported file types are listed
-- in the Supported data formats and limits article of the Google Maps
-- Engine help center.
--
-- /See:/ 'tablesFilesInsert'' smart constructor.
data TablesFilesInsert' = TablesFilesInsert'
    { _tfiMedia    :: !Stream
    , _tfiId       :: !Text
    , _tfiFilename :: !Text
    }

-- | Creates a value of 'TablesFilesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfiMedia'
--
-- * 'tfiId'
--
-- * 'tfiFilename'
tablesFilesInsert'
    :: Stream -- ^ 'media'
    -> Text -- ^ 'id'
    -> Text -- ^ 'filename'
    -> TablesFilesInsert'
tablesFilesInsert' pTfiMedia_ pTfiId_ pTfiFilename_ =
    TablesFilesInsert'
    { _tfiMedia = pTfiMedia_
    , _tfiId = pTfiId_
    , _tfiFilename = pTfiFilename_
    }

tfiMedia :: Lens' TablesFilesInsert' Stream
tfiMedia = lens _tfiMedia (\ s a -> s{_tfiMedia = a})

-- | The ID of the table asset.
tfiId :: Lens' TablesFilesInsert' Text
tfiId = lens _tfiId (\ s a -> s{_tfiId = a})

-- | The file name of this uploaded file.
tfiFilename :: Lens' TablesFilesInsert' Text
tfiFilename
  = lens _tfiFilename (\ s a -> s{_tfiFilename = a})

instance GoogleRequest TablesFilesInsert' where
        type Rs TablesFilesInsert' = ()
        requestClient TablesFilesInsert'{..}
          = go _tfiId (Just _tfiFilename) (Just AltJSON)
              _tfiMedia
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy TablesFilesInsertResource)
                      mempty
