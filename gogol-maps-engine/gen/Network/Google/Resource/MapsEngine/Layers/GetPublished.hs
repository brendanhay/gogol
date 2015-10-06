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
-- Module      : Network.Google.Resource.MapsEngine.Layers.GetPublished
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return the published metadata for a particular layer.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineLayersGetPublished@.
module Network.Google.Resource.MapsEngine.Layers.GetPublished
    (
    -- * REST Resource
      LayersGetPublishedResource

    -- * Creating a Request
    , layersGetPublished'
    , LayersGetPublished'

    -- * Request Lenses
    , lgpQuotaUser
    , lgpPrettyPrint
    , lgpUserIP
    , lgpKey
    , lgpId
    , lgpOAuthToken
    , lgpFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineLayersGetPublished@ which the
-- 'LayersGetPublished'' request conforms to.
type LayersGetPublishedResource =
     "layers" :>
       Capture "id" Text :>
         "published" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] PublishedLayer

-- | Return the published metadata for a particular layer.
--
-- /See:/ 'layersGetPublished'' smart constructor.
data LayersGetPublished' = LayersGetPublished'
    { _lgpQuotaUser   :: !(Maybe Text)
    , _lgpPrettyPrint :: !Bool
    , _lgpUserIP      :: !(Maybe Text)
    , _lgpKey         :: !(Maybe AuthKey)
    , _lgpId          :: !Text
    , _lgpOAuthToken  :: !(Maybe OAuthToken)
    , _lgpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersGetPublished'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgpQuotaUser'
--
-- * 'lgpPrettyPrint'
--
-- * 'lgpUserIP'
--
-- * 'lgpKey'
--
-- * 'lgpId'
--
-- * 'lgpOAuthToken'
--
-- * 'lgpFields'
layersGetPublished'
    :: Text -- ^ 'id'
    -> LayersGetPublished'
layersGetPublished' pLgpId_ =
    LayersGetPublished'
    { _lgpQuotaUser = Nothing
    , _lgpPrettyPrint = True
    , _lgpUserIP = Nothing
    , _lgpKey = Nothing
    , _lgpId = pLgpId_
    , _lgpOAuthToken = Nothing
    , _lgpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lgpQuotaUser :: Lens' LayersGetPublished' (Maybe Text)
lgpQuotaUser
  = lens _lgpQuotaUser (\ s a -> s{_lgpQuotaUser = a})

-- | Returns response with indentations and line breaks.
lgpPrettyPrint :: Lens' LayersGetPublished' Bool
lgpPrettyPrint
  = lens _lgpPrettyPrint
      (\ s a -> s{_lgpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lgpUserIP :: Lens' LayersGetPublished' (Maybe Text)
lgpUserIP
  = lens _lgpUserIP (\ s a -> s{_lgpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lgpKey :: Lens' LayersGetPublished' (Maybe AuthKey)
lgpKey = lens _lgpKey (\ s a -> s{_lgpKey = a})

-- | The ID of the layer.
lgpId :: Lens' LayersGetPublished' Text
lgpId = lens _lgpId (\ s a -> s{_lgpId = a})

-- | OAuth 2.0 token for the current user.
lgpOAuthToken :: Lens' LayersGetPublished' (Maybe OAuthToken)
lgpOAuthToken
  = lens _lgpOAuthToken
      (\ s a -> s{_lgpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lgpFields :: Lens' LayersGetPublished' (Maybe Text)
lgpFields
  = lens _lgpFields (\ s a -> s{_lgpFields = a})

instance GoogleAuth LayersGetPublished' where
        authKey = lgpKey . _Just
        authToken = lgpOAuthToken . _Just

instance GoogleRequest LayersGetPublished' where
        type Rs LayersGetPublished' = PublishedLayer
        request = requestWith mapsEngineRequest
        requestWith rq LayersGetPublished'{..}
          = go _lgpId _lgpQuotaUser (Just _lgpPrettyPrint)
              _lgpUserIP
              _lgpFields
              _lgpKey
              _lgpOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy LayersGetPublishedResource)
                      rq
