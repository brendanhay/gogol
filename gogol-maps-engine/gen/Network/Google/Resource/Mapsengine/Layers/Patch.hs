{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Layers.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Mutate a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineLayersPatch@.
module Mapsengine.Layers.Patch
    (
    -- * REST Resource
      LayersPatchAPI

    -- * Creating a Request
    , layersPatch
    , LayersPatch

    -- * Request Lenses
    , lppQuotaUser
    , lppPrettyPrint
    , lppUserIp
    , lppKey
    , lppId
    , lppOauthToken
    , lppFields
    , lppAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineLayersPatch@ which the
-- 'LayersPatch' request conforms to.
type LayersPatchAPI =
     "layers" :> Capture "id" Text :> Patch '[JSON] ()

-- | Mutate a layer asset.
--
-- /See:/ 'layersPatch' smart constructor.
data LayersPatch = LayersPatch
    { _lppQuotaUser   :: !(Maybe Text)
    , _lppPrettyPrint :: !Bool
    , _lppUserIp      :: !(Maybe Text)
    , _lppKey         :: !(Maybe Text)
    , _lppId          :: !Text
    , _lppOauthToken  :: !(Maybe Text)
    , _lppFields      :: !(Maybe Text)
    , _lppAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lppQuotaUser'
--
-- * 'lppPrettyPrint'
--
-- * 'lppUserIp'
--
-- * 'lppKey'
--
-- * 'lppId'
--
-- * 'lppOauthToken'
--
-- * 'lppFields'
--
-- * 'lppAlt'
layersPatch
    :: Text -- ^ 'id'
    -> LayersPatch
layersPatch pLppId_ =
    LayersPatch
    { _lppQuotaUser = Nothing
    , _lppPrettyPrint = True
    , _lppUserIp = Nothing
    , _lppKey = Nothing
    , _lppId = pLppId_
    , _lppOauthToken = Nothing
    , _lppFields = Nothing
    , _lppAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lppQuotaUser :: Lens' LayersPatch' (Maybe Text)
lppQuotaUser
  = lens _lppQuotaUser (\ s a -> s{_lppQuotaUser = a})

-- | Returns response with indentations and line breaks.
lppPrettyPrint :: Lens' LayersPatch' Bool
lppPrettyPrint
  = lens _lppPrettyPrint
      (\ s a -> s{_lppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lppUserIp :: Lens' LayersPatch' (Maybe Text)
lppUserIp
  = lens _lppUserIp (\ s a -> s{_lppUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lppKey :: Lens' LayersPatch' (Maybe Text)
lppKey = lens _lppKey (\ s a -> s{_lppKey = a})

-- | The ID of the layer.
lppId :: Lens' LayersPatch' Text
lppId = lens _lppId (\ s a -> s{_lppId = a})

-- | OAuth 2.0 token for the current user.
lppOauthToken :: Lens' LayersPatch' (Maybe Text)
lppOauthToken
  = lens _lppOauthToken
      (\ s a -> s{_lppOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lppFields :: Lens' LayersPatch' (Maybe Text)
lppFields
  = lens _lppFields (\ s a -> s{_lppFields = a})

-- | Data format for the response.
lppAlt :: Lens' LayersPatch' Text
lppAlt = lens _lppAlt (\ s a -> s{_lppAlt = a})

instance GoogleRequest LayersPatch' where
        type Rs LayersPatch' = ()
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u LayersPatch{..}
          = go _lppQuotaUser _lppPrettyPrint _lppUserIp _lppKey
              _lppId
              _lppOauthToken
              _lppFields
              _lppAlt
          where go
                  = clientWithRoute (Proxy :: Proxy LayersPatchAPI) r u
