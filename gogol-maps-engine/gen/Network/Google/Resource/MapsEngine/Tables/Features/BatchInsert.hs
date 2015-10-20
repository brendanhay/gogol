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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Features.BatchInsert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Append features to an existing table. A single batchInsert request can
-- create: - Up to 50 features. - A combined total of 10 000 vertices.
-- Feature limits are documented in the Supported data formats and limits
-- article of the Google Maps Engine help center. Note that free and paid
-- accounts have different limits. For more information about inserting
-- features, read Creating features in the Google Maps Engine developer\'s
-- guide.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.tables.features.batchInsert@.
module Network.Google.Resource.MapsEngine.Tables.Features.BatchInsert
    (
    -- * REST Resource
      TablesFeaturesBatchInsertResource

    -- * Creating a Request
    , tablesFeaturesBatchInsert
    , TablesFeaturesBatchInsert

    -- * Request Lenses
    , tfbiPayload
    , tfbiId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.tables.features.batchInsert@ method which the
-- 'TablesFeaturesBatchInsert' request conforms to.
type TablesFeaturesBatchInsertResource =
     "tables" :>
       Capture "id" Text :>
         "features" :>
           "batchInsert" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] FeaturesBatchInsertRequest :>
                 Post '[JSON] ()

-- | Append features to an existing table. A single batchInsert request can
-- create: - Up to 50 features. - A combined total of 10 000 vertices.
-- Feature limits are documented in the Supported data formats and limits
-- article of the Google Maps Engine help center. Note that free and paid
-- accounts have different limits. For more information about inserting
-- features, read Creating features in the Google Maps Engine developer\'s
-- guide.
--
-- /See:/ 'tablesFeaturesBatchInsert' smart constructor.
data TablesFeaturesBatchInsert = TablesFeaturesBatchInsert
    { _tfbiPayload :: !FeaturesBatchInsertRequest
    , _tfbiId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesFeaturesBatchInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfbiPayload'
--
-- * 'tfbiId'
tablesFeaturesBatchInsert
    :: FeaturesBatchInsertRequest -- ^ 'tfbiPayload'
    -> Text -- ^ 'tfbiId'
    -> TablesFeaturesBatchInsert
tablesFeaturesBatchInsert pTfbiPayload_ pTfbiId_ =
    TablesFeaturesBatchInsert
    { _tfbiPayload = pTfbiPayload_
    , _tfbiId = pTfbiId_
    }

-- | Multipart request metadata.
tfbiPayload :: Lens' TablesFeaturesBatchInsert FeaturesBatchInsertRequest
tfbiPayload
  = lens _tfbiPayload (\ s a -> s{_tfbiPayload = a})

-- | The ID of the table to append the features to.
tfbiId :: Lens' TablesFeaturesBatchInsert Text
tfbiId = lens _tfbiId (\ s a -> s{_tfbiId = a})

instance GoogleRequest TablesFeaturesBatchInsert
         where
        type Rs TablesFeaturesBatchInsert = ()
        requestClient TablesFeaturesBatchInsert{..}
          = go _tfbiId (Just AltJSON) _tfbiPayload
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy TablesFeaturesBatchInsertResource)
                      mempty
