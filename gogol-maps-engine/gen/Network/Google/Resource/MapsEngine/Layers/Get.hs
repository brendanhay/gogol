{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.MapsEngine.Layers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return metadata for a particular layer.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersGet@.
module Network.Google.Resource.MapsEngine.Layers.Get
    (
    -- * REST Resource
      LayersGetResource

    -- * Creating a Request
    , layersGet'
    , LayersGet'

    -- * Request Lenses
    , lgQuotaUser
    , lgPrettyPrint
    , lgUserIP
    , lgKey
    , lgVersion
    , lgId
    , lgOAuthToken
    , lgFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersGet@ which the
-- 'LayersGet'' request conforms to.
type LayersGetResource =
     "layers" :>
       Capture "id" Text :>
         QueryParam "version" MapsEngineLayersGetVersion :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Layer

-- | Return metadata for a particular layer.
--
-- /See:/ 'layersGet'' smart constructor.
data LayersGet' = LayersGet'
    { _lgQuotaUser   :: !(Maybe Text)
    , _lgPrettyPrint :: !Bool
    , _lgUserIP      :: !(Maybe Text)
    , _lgKey         :: !(Maybe Key)
    , _lgVersion     :: !(Maybe MapsEngineLayersGetVersion)
    , _lgId          :: !Text
    , _lgOAuthToken  :: !(Maybe OAuthToken)
    , _lgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgQuotaUser'
--
-- * 'lgPrettyPrint'
--
-- * 'lgUserIP'
--
-- * 'lgKey'
--
-- * 'lgVersion'
--
-- * 'lgId'
--
-- * 'lgOAuthToken'
--
-- * 'lgFields'
layersGet'
    :: Text -- ^ 'id'
    -> LayersGet'
layersGet' pLgId_ =
    LayersGet'
    { _lgQuotaUser = Nothing
    , _lgPrettyPrint = True
    , _lgUserIP = Nothing
    , _lgKey = Nothing
    , _lgVersion = Nothing
    , _lgId = pLgId_
    , _lgOAuthToken = Nothing
    , _lgFields = Nothing
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
lgUserIP :: Lens' LayersGet' (Maybe Text)
lgUserIP = lens _lgUserIP (\ s a -> s{_lgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lgKey :: Lens' LayersGet' (Maybe Key)
lgKey = lens _lgKey (\ s a -> s{_lgKey = a})

-- | Deprecated: The version parameter indicates which version of the layer
-- should be returned. When version is set to published, the published
-- version of the layer will be returned. Please use the
-- layers.getPublished endpoint instead.
lgVersion :: Lens' LayersGet' (Maybe MapsEngineLayersGetVersion)
lgVersion
  = lens _lgVersion (\ s a -> s{_lgVersion = a})

-- | The ID of the layer.
lgId :: Lens' LayersGet' Text
lgId = lens _lgId (\ s a -> s{_lgId = a})

-- | OAuth 2.0 token for the current user.
lgOAuthToken :: Lens' LayersGet' (Maybe OAuthToken)
lgOAuthToken
  = lens _lgOAuthToken (\ s a -> s{_lgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lgFields :: Lens' LayersGet' (Maybe Text)
lgFields = lens _lgFields (\ s a -> s{_lgFields = a})

instance GoogleAuth LayersGet' where
        authKey = lgKey . _Just
        authToken = lgOAuthToken . _Just

instance GoogleRequest LayersGet' where
        type Rs LayersGet' = Layer
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u LayersGet'{..}
          = go _lgId _lgVersion _lgQuotaUser
              (Just _lgPrettyPrint)
              _lgUserIP
              _lgFields
              _lgKey
              _lgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy LayersGetResource)
                      r
                      u
