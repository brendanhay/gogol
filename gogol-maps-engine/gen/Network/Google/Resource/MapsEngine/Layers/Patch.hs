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
-- Module      : Network.Google.Resource.MapsEngine.Layers.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Mutate a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersPatch@.
module Network.Google.Resource.MapsEngine.Layers.Patch
    (
    -- * REST Resource
      LayersPatchResource

    -- * Creating a Request
    , layersPatch'
    , LayersPatch'

    -- * Request Lenses
    , layQuotaUser
    , layPrettyPrint
    , layUserIP
    , layPayload
    , layKey
    , layId
    , layOAuthToken
    , layFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersPatch@ method which the
-- 'LayersPatch'' request conforms to.
type LayersPatchResource =
     "layers" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Layer :> Patch '[JSON] ()

-- | Mutate a layer asset.
--
-- /See:/ 'layersPatch'' smart constructor.
data LayersPatch' = LayersPatch'
    { _layQuotaUser   :: !(Maybe Text)
    , _layPrettyPrint :: !Bool
    , _layUserIP      :: !(Maybe Text)
    , _layPayload     :: !Layer
    , _layKey         :: !(Maybe AuthKey)
    , _layId          :: !Text
    , _layOAuthToken  :: !(Maybe OAuthToken)
    , _layFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'layQuotaUser'
--
-- * 'layPrettyPrint'
--
-- * 'layUserIP'
--
-- * 'layPayload'
--
-- * 'layKey'
--
-- * 'layId'
--
-- * 'layOAuthToken'
--
-- * 'layFields'
layersPatch'
    :: Layer -- ^ 'payload'
    -> Text -- ^ 'id'
    -> LayersPatch'
layersPatch' pLayPayload_ pLayId_ =
    LayersPatch'
    { _layQuotaUser = Nothing
    , _layPrettyPrint = True
    , _layUserIP = Nothing
    , _layPayload = pLayPayload_
    , _layKey = Nothing
    , _layId = pLayId_
    , _layOAuthToken = Nothing
    , _layFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
layQuotaUser :: Lens' LayersPatch' (Maybe Text)
layQuotaUser
  = lens _layQuotaUser (\ s a -> s{_layQuotaUser = a})

-- | Returns response with indentations and line breaks.
layPrettyPrint :: Lens' LayersPatch' Bool
layPrettyPrint
  = lens _layPrettyPrint
      (\ s a -> s{_layPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
layUserIP :: Lens' LayersPatch' (Maybe Text)
layUserIP
  = lens _layUserIP (\ s a -> s{_layUserIP = a})

-- | Multipart request metadata.
layPayload :: Lens' LayersPatch' Layer
layPayload
  = lens _layPayload (\ s a -> s{_layPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
layKey :: Lens' LayersPatch' (Maybe AuthKey)
layKey = lens _layKey (\ s a -> s{_layKey = a})

-- | The ID of the layer.
layId :: Lens' LayersPatch' Text
layId = lens _layId (\ s a -> s{_layId = a})

-- | OAuth 2.0 token for the current user.
layOAuthToken :: Lens' LayersPatch' (Maybe OAuthToken)
layOAuthToken
  = lens _layOAuthToken
      (\ s a -> s{_layOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
layFields :: Lens' LayersPatch' (Maybe Text)
layFields
  = lens _layFields (\ s a -> s{_layFields = a})

instance GoogleAuth LayersPatch' where
        _AuthKey = layKey . _Just
        _AuthToken = layOAuthToken . _Just

instance GoogleRequest LayersPatch' where
        type Rs LayersPatch' = ()
        request = requestWith mapsEngineRequest
        requestWith rq LayersPatch'{..}
          = go _layId _layQuotaUser (Just _layPrettyPrint)
              _layUserIP
              _layFields
              _layKey
              _layOAuthToken
              (Just AltJSON)
              _layPayload
          where go
                  = clientBuild (Proxy :: Proxy LayersPatchResource) rq
