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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Features.BatchDelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete all features matching the given IDs.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesFeaturesBatchDelete@.
module Network.Google.Resource.MapsEngine.Tables.Features.BatchDelete
    (
    -- * REST Resource
      TablesFeaturesBatchDeleteResource

    -- * Creating a Request
    , tablesFeaturesBatchDelete'
    , TablesFeaturesBatchDelete'

    -- * Request Lenses
    , tfbdPayload
    , tfbdId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesFeaturesBatchDelete@ method which the
-- 'TablesFeaturesBatchDelete'' request conforms to.
type TablesFeaturesBatchDeleteResource =
     "tables" :>
       Capture "id" Text :>
         "features" :>
           "batchDelete" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] FeaturesBatchDeleteRequest :>
                 Post '[JSON] ()

-- | Delete all features matching the given IDs.
--
-- /See:/ 'tablesFeaturesBatchDelete'' smart constructor.
data TablesFeaturesBatchDelete' = TablesFeaturesBatchDelete'
    { _tfbdPayload :: !FeaturesBatchDeleteRequest
    , _tfbdId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesFeaturesBatchDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfbdPayload'
--
-- * 'tfbdId'
tablesFeaturesBatchDelete'
    :: FeaturesBatchDeleteRequest -- ^ 'payload'
    -> Text -- ^ 'id'
    -> TablesFeaturesBatchDelete'
tablesFeaturesBatchDelete' pTfbdPayload_ pTfbdId_ =
    TablesFeaturesBatchDelete'
    { _tfbdPayload = pTfbdPayload_
    , _tfbdId = pTfbdId_
    }

-- | Multipart request metadata.
tfbdPayload :: Lens' TablesFeaturesBatchDelete' FeaturesBatchDeleteRequest
tfbdPayload
  = lens _tfbdPayload (\ s a -> s{_tfbdPayload = a})

-- | The ID of the table that contains the features to be deleted.
tfbdId :: Lens' TablesFeaturesBatchDelete' Text
tfbdId = lens _tfbdId (\ s a -> s{_tfbdId = a})

instance GoogleRequest TablesFeaturesBatchDelete'
         where
        type Rs TablesFeaturesBatchDelete' = ()
        requestClient TablesFeaturesBatchDelete'{..}
          = go _tfbdId (Just AltJSON) _tfbdPayload mapsEngine
          where go
                  = buildClient
                      (Proxy :: Proxy TablesFeaturesBatchDeleteResource)
                      mempty
