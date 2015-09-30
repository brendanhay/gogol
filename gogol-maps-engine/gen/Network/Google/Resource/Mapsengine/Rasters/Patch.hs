{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Rasters.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Mutate a raster asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRastersPatch@.
module Mapsengine.Rasters.Patch
    (
    -- * REST Resource
      RastersPatchAPI

    -- * Creating a Request
    , rastersPatch
    , RastersPatch

    -- * Request Lenses
    , rppQuotaUser
    , rppPrettyPrint
    , rppUserIp
    , rppKey
    , rppId
    , rppOauthToken
    , rppFields
    , rppAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRastersPatch@ which the
-- 'RastersPatch' request conforms to.
type RastersPatchAPI =
     "rasters" :> Capture "id" Text :> Patch '[JSON] ()

-- | Mutate a raster asset.
--
-- /See:/ 'rastersPatch' smart constructor.
data RastersPatch = RastersPatch
    { _rppQuotaUser   :: !(Maybe Text)
    , _rppPrettyPrint :: !Bool
    , _rppUserIp      :: !(Maybe Text)
    , _rppKey         :: !(Maybe Text)
    , _rppId          :: !Text
    , _rppOauthToken  :: !(Maybe Text)
    , _rppFields      :: !(Maybe Text)
    , _rppAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rppQuotaUser'
--
-- * 'rppPrettyPrint'
--
-- * 'rppUserIp'
--
-- * 'rppKey'
--
-- * 'rppId'
--
-- * 'rppOauthToken'
--
-- * 'rppFields'
--
-- * 'rppAlt'
rastersPatch
    :: Text -- ^ 'id'
    -> RastersPatch
rastersPatch pRppId_ =
    RastersPatch
    { _rppQuotaUser = Nothing
    , _rppPrettyPrint = True
    , _rppUserIp = Nothing
    , _rppKey = Nothing
    , _rppId = pRppId_
    , _rppOauthToken = Nothing
    , _rppFields = Nothing
    , _rppAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rppQuotaUser :: Lens' RastersPatch' (Maybe Text)
rppQuotaUser
  = lens _rppQuotaUser (\ s a -> s{_rppQuotaUser = a})

-- | Returns response with indentations and line breaks.
rppPrettyPrint :: Lens' RastersPatch' Bool
rppPrettyPrint
  = lens _rppPrettyPrint
      (\ s a -> s{_rppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rppUserIp :: Lens' RastersPatch' (Maybe Text)
rppUserIp
  = lens _rppUserIp (\ s a -> s{_rppUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rppKey :: Lens' RastersPatch' (Maybe Text)
rppKey = lens _rppKey (\ s a -> s{_rppKey = a})

-- | The ID of the raster.
rppId :: Lens' RastersPatch' Text
rppId = lens _rppId (\ s a -> s{_rppId = a})

-- | OAuth 2.0 token for the current user.
rppOauthToken :: Lens' RastersPatch' (Maybe Text)
rppOauthToken
  = lens _rppOauthToken
      (\ s a -> s{_rppOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rppFields :: Lens' RastersPatch' (Maybe Text)
rppFields
  = lens _rppFields (\ s a -> s{_rppFields = a})

-- | Data format for the response.
rppAlt :: Lens' RastersPatch' Text
rppAlt = lens _rppAlt (\ s a -> s{_rppAlt = a})

instance GoogleRequest RastersPatch' where
        type Rs RastersPatch' = ()
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RastersPatch{..}
          = go _rppQuotaUser _rppPrettyPrint _rppUserIp _rppKey
              _rppId
              _rppOauthToken
              _rppFields
              _rppAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RastersPatchAPI) r
                      u
