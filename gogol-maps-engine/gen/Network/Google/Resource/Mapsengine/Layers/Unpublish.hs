{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Layers.Unpublish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Unpublish a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineLayersUnpublish@.
module Mapsengine.Layers.Unpublish
    (
    -- * REST Resource
      LayersUnpublishAPI

    -- * Creating a Request
    , layersUnpublish
    , LayersUnpublish

    -- * Request Lenses
    , luQuotaUser
    , luPrettyPrint
    , luUserIp
    , luKey
    , luId
    , luOauthToken
    , luFields
    , luAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineLayersUnpublish@ which the
-- 'LayersUnpublish' request conforms to.
type LayersUnpublishAPI =
     "layers" :>
       Capture "id" Text :>
         "unpublish" :> Post '[JSON] PublishResponse

-- | Unpublish a layer asset.
--
-- /See:/ 'layersUnpublish' smart constructor.
data LayersUnpublish = LayersUnpublish
    { _luQuotaUser   :: !(Maybe Text)
    , _luPrettyPrint :: !Bool
    , _luUserIp      :: !(Maybe Text)
    , _luKey         :: !(Maybe Text)
    , _luId          :: !Text
    , _luOauthToken  :: !(Maybe Text)
    , _luFields      :: !(Maybe Text)
    , _luAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersUnpublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luQuotaUser'
--
-- * 'luPrettyPrint'
--
-- * 'luUserIp'
--
-- * 'luKey'
--
-- * 'luId'
--
-- * 'luOauthToken'
--
-- * 'luFields'
--
-- * 'luAlt'
layersUnpublish
    :: Text -- ^ 'id'
    -> LayersUnpublish
layersUnpublish pLuId_ =
    LayersUnpublish
    { _luQuotaUser = Nothing
    , _luPrettyPrint = True
    , _luUserIp = Nothing
    , _luKey = Nothing
    , _luId = pLuId_
    , _luOauthToken = Nothing
    , _luFields = Nothing
    , _luAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
luQuotaUser :: Lens' LayersUnpublish' (Maybe Text)
luQuotaUser
  = lens _luQuotaUser (\ s a -> s{_luQuotaUser = a})

-- | Returns response with indentations and line breaks.
luPrettyPrint :: Lens' LayersUnpublish' Bool
luPrettyPrint
  = lens _luPrettyPrint
      (\ s a -> s{_luPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
luUserIp :: Lens' LayersUnpublish' (Maybe Text)
luUserIp = lens _luUserIp (\ s a -> s{_luUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
luKey :: Lens' LayersUnpublish' (Maybe Text)
luKey = lens _luKey (\ s a -> s{_luKey = a})

-- | The ID of the layer.
luId :: Lens' LayersUnpublish' Text
luId = lens _luId (\ s a -> s{_luId = a})

-- | OAuth 2.0 token for the current user.
luOauthToken :: Lens' LayersUnpublish' (Maybe Text)
luOauthToken
  = lens _luOauthToken (\ s a -> s{_luOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
luFields :: Lens' LayersUnpublish' (Maybe Text)
luFields = lens _luFields (\ s a -> s{_luFields = a})

-- | Data format for the response.
luAlt :: Lens' LayersUnpublish' Text
luAlt = lens _luAlt (\ s a -> s{_luAlt = a})

instance GoogleRequest LayersUnpublish' where
        type Rs LayersUnpublish' = PublishResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u LayersUnpublish{..}
          = go _luQuotaUser _luPrettyPrint _luUserIp _luKey
              _luId
              _luOauthToken
              _luFields
              _luAlt
          where go
                  = clientWithRoute (Proxy :: Proxy LayersUnpublishAPI)
                      r
                      u
