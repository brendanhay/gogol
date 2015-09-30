{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Layers.GetPublished
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return the published metadata for a particular layer.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineLayersGetPublished@.
module Mapsengine.Layers.GetPublished
    (
    -- * REST Resource
      LayersGetPublishedAPI

    -- * Creating a Request
    , layersGetPublished
    , LayersGetPublished

    -- * Request Lenses
    , lgpQuotaUser
    , lgpPrettyPrint
    , lgpUserIp
    , lgpKey
    , lgpId
    , lgpOauthToken
    , lgpFields
    , lgpAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineLayersGetPublished@ which the
-- 'LayersGetPublished' request conforms to.
type LayersGetPublishedAPI =
     "layers" :>
       Capture "id" Text :>
         "published" :> Get '[JSON] PublishedLayer

-- | Return the published metadata for a particular layer.
--
-- /See:/ 'layersGetPublished' smart constructor.
data LayersGetPublished = LayersGetPublished
    { _lgpQuotaUser   :: !(Maybe Text)
    , _lgpPrettyPrint :: !Bool
    , _lgpUserIp      :: !(Maybe Text)
    , _lgpKey         :: !(Maybe Text)
    , _lgpId          :: !Text
    , _lgpOauthToken  :: !(Maybe Text)
    , _lgpFields      :: !(Maybe Text)
    , _lgpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LayersGetPublished'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgpQuotaUser'
--
-- * 'lgpPrettyPrint'
--
-- * 'lgpUserIp'
--
-- * 'lgpKey'
--
-- * 'lgpId'
--
-- * 'lgpOauthToken'
--
-- * 'lgpFields'
--
-- * 'lgpAlt'
layersGetPublished
    :: Text -- ^ 'id'
    -> LayersGetPublished
layersGetPublished pLgpId_ =
    LayersGetPublished
    { _lgpQuotaUser = Nothing
    , _lgpPrettyPrint = True
    , _lgpUserIp = Nothing
    , _lgpKey = Nothing
    , _lgpId = pLgpId_
    , _lgpOauthToken = Nothing
    , _lgpFields = Nothing
    , _lgpAlt = "json"
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
lgpUserIp :: Lens' LayersGetPublished' (Maybe Text)
lgpUserIp
  = lens _lgpUserIp (\ s a -> s{_lgpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lgpKey :: Lens' LayersGetPublished' (Maybe Text)
lgpKey = lens _lgpKey (\ s a -> s{_lgpKey = a})

-- | The ID of the layer.
lgpId :: Lens' LayersGetPublished' Text
lgpId = lens _lgpId (\ s a -> s{_lgpId = a})

-- | OAuth 2.0 token for the current user.
lgpOauthToken :: Lens' LayersGetPublished' (Maybe Text)
lgpOauthToken
  = lens _lgpOauthToken
      (\ s a -> s{_lgpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lgpFields :: Lens' LayersGetPublished' (Maybe Text)
lgpFields
  = lens _lgpFields (\ s a -> s{_lgpFields = a})

-- | Data format for the response.
lgpAlt :: Lens' LayersGetPublished' Text
lgpAlt = lens _lgpAlt (\ s a -> s{_lgpAlt = a})

instance GoogleRequest LayersGetPublished' where
        type Rs LayersGetPublished' = PublishedLayer
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u LayersGetPublished{..}
          = go _lgpQuotaUser _lgpPrettyPrint _lgpUserIp _lgpKey
              _lgpId
              _lgpOauthToken
              _lgpFields
              _lgpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LayersGetPublishedAPI)
                      r
                      u
