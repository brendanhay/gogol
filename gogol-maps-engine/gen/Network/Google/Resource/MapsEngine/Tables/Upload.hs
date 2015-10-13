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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Upload
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a placeholder table asset to which table files can be uploaded.
-- Once the placeholder has been created, files are uploaded to the
-- https:\/\/www.googleapis.com\/upload\/mapsengine\/v1\/tables\/table_id\/files
-- endpoint. See Table Upload in the Developer\'s Guide or Table.files:
-- insert in the reference documentation for more information.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesUpload@.
module Network.Google.Resource.MapsEngine.Tables.Upload
    (
    -- * REST Resource
      TablesUploadResource

    -- * Creating a Request
    , tablesUpload'
    , TablesUpload'

    -- * Request Lenses
    , tuPayload
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesUpload@ method which the
-- 'TablesUpload'' request conforms to.
type TablesUploadResource =
     "tables" :>
       "upload" :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] Table :> Post '[JSON] Table

-- | Create a placeholder table asset to which table files can be uploaded.
-- Once the placeholder has been created, files are uploaded to the
-- https:\/\/www.googleapis.com\/upload\/mapsengine\/v1\/tables\/table_id\/files
-- endpoint. See Table Upload in the Developer\'s Guide or Table.files:
-- insert in the reference documentation for more information.
--
-- /See:/ 'tablesUpload'' smart constructor.
newtype TablesUpload' = TablesUpload'
    { _tuPayload :: Table
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesUpload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuPayload'
tablesUpload'
    :: Table -- ^ 'payload'
    -> TablesUpload'
tablesUpload' pTuPayload_ =
    TablesUpload'
    { _tuPayload = pTuPayload_
    }

-- | Multipart request metadata.
tuPayload :: Lens' TablesUpload' Table
tuPayload
  = lens _tuPayload (\ s a -> s{_tuPayload = a})

instance GoogleRequest TablesUpload' where
        type Rs TablesUpload' = Table
        requestClient TablesUpload'{..}
          = go (Just AltJSON) _tuPayload mapsEngineService
          where go
                  = buildClient (Proxy :: Proxy TablesUploadResource)
                      mempty
