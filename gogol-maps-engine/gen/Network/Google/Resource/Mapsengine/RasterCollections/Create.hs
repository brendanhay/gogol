{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.RasterCollections.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a raster collection asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRasterCollectionsCreate@.
module Mapsengine.RasterCollections.Create
    (
    -- * REST Resource
      RasterCollectionsCreateAPI

    -- * Creating a Request
    , rasterCollectionsCreate
    , RasterCollectionsCreate

    -- * Request Lenses
    , rccQuotaUser
    , rccPrettyPrint
    , rccUserIp
    , rccKey
    , rccOauthToken
    , rccFields
    , rccAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRasterCollectionsCreate@ which the
-- 'RasterCollectionsCreate' request conforms to.
type RasterCollectionsCreateAPI =
     "rasterCollections" :> Post '[JSON] RasterCollection

-- | Create a raster collection asset.
--
-- /See:/ 'rasterCollectionsCreate' smart constructor.
data RasterCollectionsCreate = RasterCollectionsCreate
    { _rccQuotaUser   :: !(Maybe Text)
    , _rccPrettyPrint :: !Bool
    , _rccUserIp      :: !(Maybe Text)
    , _rccKey         :: !(Maybe Text)
    , _rccOauthToken  :: !(Maybe Text)
    , _rccFields      :: !(Maybe Text)
    , _rccAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rccQuotaUser'
--
-- * 'rccPrettyPrint'
--
-- * 'rccUserIp'
--
-- * 'rccKey'
--
-- * 'rccOauthToken'
--
-- * 'rccFields'
--
-- * 'rccAlt'
rasterCollectionsCreate
    :: RasterCollectionsCreate
rasterCollectionsCreate =
    RasterCollectionsCreate
    { _rccQuotaUser = Nothing
    , _rccPrettyPrint = True
    , _rccUserIp = Nothing
    , _rccKey = Nothing
    , _rccOauthToken = Nothing
    , _rccFields = Nothing
    , _rccAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rccQuotaUser :: Lens' RasterCollectionsCreate' (Maybe Text)
rccQuotaUser
  = lens _rccQuotaUser (\ s a -> s{_rccQuotaUser = a})

-- | Returns response with indentations and line breaks.
rccPrettyPrint :: Lens' RasterCollectionsCreate' Bool
rccPrettyPrint
  = lens _rccPrettyPrint
      (\ s a -> s{_rccPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rccUserIp :: Lens' RasterCollectionsCreate' (Maybe Text)
rccUserIp
  = lens _rccUserIp (\ s a -> s{_rccUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rccKey :: Lens' RasterCollectionsCreate' (Maybe Text)
rccKey = lens _rccKey (\ s a -> s{_rccKey = a})

-- | OAuth 2.0 token for the current user.
rccOauthToken :: Lens' RasterCollectionsCreate' (Maybe Text)
rccOauthToken
  = lens _rccOauthToken
      (\ s a -> s{_rccOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rccFields :: Lens' RasterCollectionsCreate' (Maybe Text)
rccFields
  = lens _rccFields (\ s a -> s{_rccFields = a})

-- | Data format for the response.
rccAlt :: Lens' RasterCollectionsCreate' Text
rccAlt = lens _rccAlt (\ s a -> s{_rccAlt = a})

instance GoogleRequest RasterCollectionsCreate' where
        type Rs RasterCollectionsCreate' = RasterCollection
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RasterCollectionsCreate{..}
          = go _rccQuotaUser _rccPrettyPrint _rccUserIp _rccKey
              _rccOauthToken
              _rccFields
              _rccAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RasterCollectionsCreateAPI)
                      r
                      u
