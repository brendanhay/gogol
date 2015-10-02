{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.MapsEngine.Layers.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a layer.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersDelete@.
module Network.Google.Resource.MapsEngine.Layers.Delete
    (
    -- * REST Resource
      LayersDeleteResource

    -- * Creating a Request
    , layersDelete'
    , LayersDelete'

    -- * Request Lenses
    , ldQuotaUser
    , ldPrettyPrint
    , ldUserIP
    , ldKey
    , ldId
    , ldOAuthToken
    , ldFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersDelete@ which the
-- 'LayersDelete'' request conforms to.
type LayersDeleteResource =
     "layers" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a layer.
--
-- /See:/ 'layersDelete'' smart constructor.
data LayersDelete' = LayersDelete'
    { _ldQuotaUser   :: !(Maybe Text)
    , _ldPrettyPrint :: !Bool
    , _ldUserIP      :: !(Maybe Text)
    , _ldKey         :: !(Maybe Key)
    , _ldId          :: !Text
    , _ldOAuthToken  :: !(Maybe OAuthToken)
    , _ldFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldQuotaUser'
--
-- * 'ldPrettyPrint'
--
-- * 'ldUserIP'
--
-- * 'ldKey'
--
-- * 'ldId'
--
-- * 'ldOAuthToken'
--
-- * 'ldFields'
layersDelete'
    :: Text -- ^ 'id'
    -> LayersDelete'
layersDelete' pLdId_ =
    LayersDelete'
    { _ldQuotaUser = Nothing
    , _ldPrettyPrint = True
    , _ldUserIP = Nothing
    , _ldKey = Nothing
    , _ldId = pLdId_
    , _ldOAuthToken = Nothing
    , _ldFields = Nothing
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
ldUserIP :: Lens' LayersDelete' (Maybe Text)
ldUserIP = lens _ldUserIP (\ s a -> s{_ldUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ldKey :: Lens' LayersDelete' (Maybe Key)
ldKey = lens _ldKey (\ s a -> s{_ldKey = a})

-- | The ID of the layer. Only the layer creator or project owner are
-- permitted to delete. If the layer is published, or included in a map,
-- the request will fail. Unpublish the layer, and remove it from all maps
-- prior to deleting.
ldId :: Lens' LayersDelete' Text
ldId = lens _ldId (\ s a -> s{_ldId = a})

-- | OAuth 2.0 token for the current user.
ldOAuthToken :: Lens' LayersDelete' (Maybe OAuthToken)
ldOAuthToken
  = lens _ldOAuthToken (\ s a -> s{_ldOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ldFields :: Lens' LayersDelete' (Maybe Text)
ldFields = lens _ldFields (\ s a -> s{_ldFields = a})

instance GoogleAuth LayersDelete' where
        authKey = ldKey . _Just
        authToken = ldOAuthToken . _Just

instance GoogleRequest LayersDelete' where
        type Rs LayersDelete' = ()
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u LayersDelete'{..}
          = go _ldQuotaUser (Just _ldPrettyPrint) _ldUserIP
              _ldKey
              _ldId
              _ldOAuthToken
              _ldFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersDeleteResource)
                      r
                      u
