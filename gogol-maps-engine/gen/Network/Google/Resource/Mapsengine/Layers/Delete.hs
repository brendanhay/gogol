{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Layers.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a layer.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineLayersDelete@.
module Mapsengine.Layers.Delete
    (
    -- * REST Resource
      LayersDeleteAPI

    -- * Creating a Request
    , layersDelete
    , LayersDelete

    -- * Request Lenses
    , ldQuotaUser
    , ldPrettyPrint
    , ldUserIp
    , ldKey
    , ldId
    , ldOauthToken
    , ldFields
    , ldAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineLayersDelete@ which the
-- 'LayersDelete' request conforms to.
type LayersDeleteAPI =
     "layers" :> Capture "id" Text :> Delete '[JSON] ()

-- | Delete a layer.
--
-- /See:/ 'layersDelete' smart constructor.
data LayersDelete = LayersDelete
    { _ldQuotaUser   :: !(Maybe Text)
    , _ldPrettyPrint :: !Bool
    , _ldUserIp      :: !(Maybe Text)
    , _ldKey         :: !(Maybe Text)
    , _ldId          :: !Text
    , _ldOauthToken  :: !(Maybe Text)
    , _ldFields      :: !(Maybe Text)
    , _ldAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldQuotaUser'
--
-- * 'ldPrettyPrint'
--
-- * 'ldUserIp'
--
-- * 'ldKey'
--
-- * 'ldId'
--
-- * 'ldOauthToken'
--
-- * 'ldFields'
--
-- * 'ldAlt'
layersDelete
    :: Text -- ^ 'id'
    -> LayersDelete
layersDelete pLdId_ =
    LayersDelete
    { _ldQuotaUser = Nothing
    , _ldPrettyPrint = True
    , _ldUserIp = Nothing
    , _ldKey = Nothing
    , _ldId = pLdId_
    , _ldOauthToken = Nothing
    , _ldFields = Nothing
    , _ldAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ldQuotaUser :: Lens' LayersDelete' (Maybe Text)
ldQuotaUser
  = lens _ldQuotaUser (\ s a -> s{_ldQuotaUser = a})

-- | Returns response with indentations and line breaks.
ldPrettyPrint :: Lens' LayersDelete' Bool
ldPrettyPrint
  = lens _ldPrettyPrint
      (\ s a -> s{_ldPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ldUserIp :: Lens' LayersDelete' (Maybe Text)
ldUserIp = lens _ldUserIp (\ s a -> s{_ldUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ldKey :: Lens' LayersDelete' (Maybe Text)
ldKey = lens _ldKey (\ s a -> s{_ldKey = a})

-- | The ID of the layer. Only the layer creator or project owner are
-- permitted to delete. If the layer is published, or included in a map,
-- the request will fail. Unpublish the layer, and remove it from all maps
-- prior to deleting.
ldId :: Lens' LayersDelete' Text
ldId = lens _ldId (\ s a -> s{_ldId = a})

-- | OAuth 2.0 token for the current user.
ldOauthToken :: Lens' LayersDelete' (Maybe Text)
ldOauthToken
  = lens _ldOauthToken (\ s a -> s{_ldOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ldFields :: Lens' LayersDelete' (Maybe Text)
ldFields = lens _ldFields (\ s a -> s{_ldFields = a})

-- | Data format for the response.
ldAlt :: Lens' LayersDelete' Text
ldAlt = lens _ldAlt (\ s a -> s{_ldAlt = a})

instance GoogleRequest LayersDelete' where
        type Rs LayersDelete' = ()
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u LayersDelete{..}
          = go _ldQuotaUser _ldPrettyPrint _ldUserIp _ldKey
              _ldId
              _ldOauthToken
              _ldFields
              _ldAlt
          where go
                  = clientWithRoute (Proxy :: Proxy LayersDeleteAPI) r
                      u
