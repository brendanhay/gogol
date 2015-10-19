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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Features.BatchPatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the supplied features. A single batchPatch request can update: -
-- Up to 50 features. - A combined total of 10 000 vertices. Feature limits
-- are documented in the Supported data formats and limits article of the
-- Google Maps Engine help center. Note that free and paid accounts have
-- different limits. Feature updates use HTTP PATCH semantics: - A supplied
-- value replaces an existing value (if any) in that field. - Omitted
-- fields remain unchanged. - Complex values in geometries and properties
-- must be replaced as atomic units. For example, providing just the
-- coordinates of a geometry is not allowed; the complete geometry,
-- including type, must be supplied. - Setting a property\'s value to null
-- deletes that property. For more information about updating features,
-- read Updating features in the Google Maps Engine developer\'s guide.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.tables.features.batchPatch@.
module Network.Google.Resource.MapsEngine.Tables.Features.BatchPatch
    (
    -- * REST Resource
      TablesFeaturesBatchPatchResource

    -- * Creating a Request
    , tablesFeaturesBatchPatch'
    , TablesFeaturesBatchPatch'

    -- * Request Lenses
    , tfbpPayload
    , tfbpId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.tables.features.batchPatch@ method which the
-- 'TablesFeaturesBatchPatch'' request conforms to.
type TablesFeaturesBatchPatchResource =
     "tables" :>
       Capture "id" Text :>
         "features" :>
           "batchPatch" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] FeaturesBatchPatchRequest :>
                 Post '[JSON] ()

-- | Update the supplied features. A single batchPatch request can update: -
-- Up to 50 features. - A combined total of 10 000 vertices. Feature limits
-- are documented in the Supported data formats and limits article of the
-- Google Maps Engine help center. Note that free and paid accounts have
-- different limits. Feature updates use HTTP PATCH semantics: - A supplied
-- value replaces an existing value (if any) in that field. - Omitted
-- fields remain unchanged. - Complex values in geometries and properties
-- must be replaced as atomic units. For example, providing just the
-- coordinates of a geometry is not allowed; the complete geometry,
-- including type, must be supplied. - Setting a property\'s value to null
-- deletes that property. For more information about updating features,
-- read Updating features in the Google Maps Engine developer\'s guide.
--
-- /See:/ 'tablesFeaturesBatchPatch'' smart constructor.
data TablesFeaturesBatchPatch' = TablesFeaturesBatchPatch'
    { _tfbpPayload :: !FeaturesBatchPatchRequest
    , _tfbpId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesFeaturesBatchPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfbpPayload'
--
-- * 'tfbpId'
tablesFeaturesBatchPatch'
    :: FeaturesBatchPatchRequest -- ^ 'tfbpPayload'
    -> Text -- ^ 'tfbpId'
    -> TablesFeaturesBatchPatch'
tablesFeaturesBatchPatch' pTfbpPayload_ pTfbpId_ =
    TablesFeaturesBatchPatch'
    { _tfbpPayload = pTfbpPayload_
    , _tfbpId = pTfbpId_
    }

-- | Multipart request metadata.
tfbpPayload :: Lens' TablesFeaturesBatchPatch' FeaturesBatchPatchRequest
tfbpPayload
  = lens _tfbpPayload (\ s a -> s{_tfbpPayload = a})

-- | The ID of the table containing the features to be patched.
tfbpId :: Lens' TablesFeaturesBatchPatch' Text
tfbpId = lens _tfbpId (\ s a -> s{_tfbpId = a})

instance GoogleRequest TablesFeaturesBatchPatch'
         where
        type Rs TablesFeaturesBatchPatch' = ()
        requestClient TablesFeaturesBatchPatch'{..}
          = go _tfbpId (Just AltJSON) _tfbpPayload
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy TablesFeaturesBatchPatchResource)
                      mempty
