{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Layers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return metadata for a particular layer.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineLayersGet@.
module Mapsengine.Layers.Get
    (
    -- * REST Resource
      LayersGetAPI

    -- * Creating a Request
    , layersGet
    , LayersGet

    -- * Request Lenses
    , lgQuotaUser
    , lgPrettyPrint
    , lgUserIp
    , lgKey
    , lgVersion
    , lgId
    , lgOauthToken
    , lgFields
    , lgAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineLayersGet@ which the
-- 'LayersGet' request conforms to.
type LayersGetAPI =
     "layers" :>
       Capture "id" Text :>
         QueryParam "version" Text :> Get '[JSON] Layer

-- | Return metadata for a particular layer.
--
-- /See:/ 'layersGet' smart constructor.
data LayersGet = LayersGet
    { _lgQuotaUser   :: !(Maybe Text)
    , _lgPrettyPrint :: !Bool
    , _lgUserIp      :: !(Maybe Text)
    , _lgKey         :: !(Maybe Text)
    , _lgVersion     :: !(Maybe Text)
    , _lgId          :: !Text
    , _lgOauthToken  :: !(Maybe Text)
    , _lgFields      :: !(Maybe Text)
    , _lgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgQuotaUser'
--
-- * 'lgPrettyPrint'
--
-- * 'lgUserIp'
--
-- * 'lgKey'
--
-- * 'lgVersion'
--
-- * 'lgId'
--
-- * 'lgOauthToken'
--
-- * 'lgFields'
--
-- * 'lgAlt'
layersGet
    :: Text -- ^ 'id'
    -> LayersGet
layersGet pLgId_ =
    LayersGet
    { _lgQuotaUser = Nothing
    , _lgPrettyPrint = True
    , _lgUserIp = Nothing
    , _lgKey = Nothing
    , _lgVersion = Nothing
    , _lgId = pLgId_
    , _lgOauthToken = Nothing
    , _lgFields = Nothing
    , _lgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lgQuotaUser :: Lens' LayersGet' (Maybe Text)
lgQuotaUser
  = lens _lgQuotaUser (\ s a -> s{_lgQuotaUser = a})

-- | Returns response with indentations and line breaks.
lgPrettyPrint :: Lens' LayersGet' Bool
lgPrettyPrint
  = lens _lgPrettyPrint
      (\ s a -> s{_lgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lgUserIp :: Lens' LayersGet' (Maybe Text)
lgUserIp = lens _lgUserIp (\ s a -> s{_lgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lgKey :: Lens' LayersGet' (Maybe Text)
lgKey = lens _lgKey (\ s a -> s{_lgKey = a})

-- | Deprecated: The version parameter indicates which version of the layer
-- should be returned. When version is set to published, the published
-- version of the layer will be returned. Please use the
-- layers.getPublished endpoint instead.
lgVersion :: Lens' LayersGet' (Maybe Text)
lgVersion
  = lens _lgVersion (\ s a -> s{_lgVersion = a})

-- | The ID of the layer.
lgId :: Lens' LayersGet' Text
lgId = lens _lgId (\ s a -> s{_lgId = a})

-- | OAuth 2.0 token for the current user.
lgOauthToken :: Lens' LayersGet' (Maybe Text)
lgOauthToken
  = lens _lgOauthToken (\ s a -> s{_lgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lgFields :: Lens' LayersGet' (Maybe Text)
lgFields = lens _lgFields (\ s a -> s{_lgFields = a})

-- | Data format for the response.
lgAlt :: Lens' LayersGet' Text
lgAlt = lens _lgAlt (\ s a -> s{_lgAlt = a})

instance GoogleRequest LayersGet' where
        type Rs LayersGet' = Layer
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u LayersGet{..}
          = go _lgQuotaUser _lgPrettyPrint _lgUserIp _lgKey
              _lgVersion
              _lgId
              _lgOauthToken
              _lgFields
              _lgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy LayersGetAPI) r u
