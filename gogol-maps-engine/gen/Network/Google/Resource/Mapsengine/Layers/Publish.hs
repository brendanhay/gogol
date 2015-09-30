{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Layers.Publish
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Publish a layer asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineLayersPublish@.
module Mapsengine.Layers.Publish
    (
    -- * REST Resource
      LayersPublishAPI

    -- * Creating a Request
    , layersPublish
    , LayersPublish

    -- * Request Lenses
    , layaQuotaUser
    , layaPrettyPrint
    , layaForce
    , layaUserIp
    , layaKey
    , layaId
    , layaOauthToken
    , layaFields
    , layaAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineLayersPublish@ which the
-- 'LayersPublish' request conforms to.
type LayersPublishAPI =
     "layers" :>
       Capture "id" Text :>
         "publish" :>
           QueryParam "force" Bool :>
             Post '[JSON] PublishResponse

-- | Publish a layer asset.
--
-- /See:/ 'layersPublish' smart constructor.
data LayersPublish = LayersPublish
    { _layaQuotaUser   :: !(Maybe Text)
    , _layaPrettyPrint :: !Bool
    , _layaForce       :: !(Maybe Bool)
    , _layaUserIp      :: !(Maybe Text)
    , _layaKey         :: !(Maybe Text)
    , _layaId          :: !Text
    , _layaOauthToken  :: !(Maybe Text)
    , _layaFields      :: !(Maybe Text)
    , _layaAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersPublish'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'layaQuotaUser'
--
-- * 'layaPrettyPrint'
--
-- * 'layaForce'
--
-- * 'layaUserIp'
--
-- * 'layaKey'
--
-- * 'layaId'
--
-- * 'layaOauthToken'
--
-- * 'layaFields'
--
-- * 'layaAlt'
layersPublish
    :: Text -- ^ 'id'
    -> LayersPublish
layersPublish pLayaId_ =
    LayersPublish
    { _layaQuotaUser = Nothing
    , _layaPrettyPrint = True
    , _layaForce = Nothing
    , _layaUserIp = Nothing
    , _layaKey = Nothing
    , _layaId = pLayaId_
    , _layaOauthToken = Nothing
    , _layaFields = Nothing
    , _layaAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
layaQuotaUser :: Lens' LayersPublish' (Maybe Text)
layaQuotaUser
  = lens _layaQuotaUser
      (\ s a -> s{_layaQuotaUser = a})

-- | Returns response with indentations and line breaks.
layaPrettyPrint :: Lens' LayersPublish' Bool
layaPrettyPrint
  = lens _layaPrettyPrint
      (\ s a -> s{_layaPrettyPrint = a})

-- | If set to true, the API will allow publication of the layer even if
-- it\'s out of date. If not true, you\'ll need to reprocess any
-- out-of-date layer before publishing.
layaForce :: Lens' LayersPublish' (Maybe Bool)
layaForce
  = lens _layaForce (\ s a -> s{_layaForce = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
layaUserIp :: Lens' LayersPublish' (Maybe Text)
layaUserIp
  = lens _layaUserIp (\ s a -> s{_layaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
layaKey :: Lens' LayersPublish' (Maybe Text)
layaKey = lens _layaKey (\ s a -> s{_layaKey = a})

-- | The ID of the layer.
layaId :: Lens' LayersPublish' Text
layaId = lens _layaId (\ s a -> s{_layaId = a})

-- | OAuth 2.0 token for the current user.
layaOauthToken :: Lens' LayersPublish' (Maybe Text)
layaOauthToken
  = lens _layaOauthToken
      (\ s a -> s{_layaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
layaFields :: Lens' LayersPublish' (Maybe Text)
layaFields
  = lens _layaFields (\ s a -> s{_layaFields = a})

-- | Data format for the response.
layaAlt :: Lens' LayersPublish' Text
layaAlt = lens _layaAlt (\ s a -> s{_layaAlt = a})

instance GoogleRequest LayersPublish' where
        type Rs LayersPublish' = PublishResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u LayersPublish{..}
          = go _layaQuotaUser _layaPrettyPrint _layaForce
              _layaUserIp
              _layaKey
              _layaId
              _layaOauthToken
              _layaFields
              _layaAlt
          where go
                  = clientWithRoute (Proxy :: Proxy LayersPublishAPI) r
                      u
