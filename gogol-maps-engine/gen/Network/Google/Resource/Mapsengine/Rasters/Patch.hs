{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Mapsengine.Rasters.Patch
    (
    -- * REST Resource
      RastersPatchResource

    -- * Creating a Request
    , rastersPatch'
    , RastersPatch'

    -- * Request Lenses
    , rQuotaUser
    , rPrettyPrint
    , rUserIp
    , rKey
    , rId
    , rOauthToken
    , rFields
    , rAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRastersPatch@ which the
-- 'RastersPatch'' request conforms to.
type RastersPatchResource =
     "rasters" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Patch '[JSON] ()

-- | Mutate a raster asset.
--
-- /See:/ 'rastersPatch'' smart constructor.
data RastersPatch' = RastersPatch'
    { _rQuotaUser   :: !(Maybe Text)
    , _rPrettyPrint :: !Bool
    , _rUserIp      :: !(Maybe Text)
    , _rKey         :: !(Maybe Text)
    , _rId          :: !Text
    , _rOauthToken  :: !(Maybe Text)
    , _rFields      :: !(Maybe Text)
    , _rAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rUserIp'
--
-- * 'rKey'
--
-- * 'rId'
--
-- * 'rOauthToken'
--
-- * 'rFields'
--
-- * 'rAlt'
rastersPatch'
    :: Text -- ^ 'id'
    -> RastersPatch'
rastersPatch' pRId_ =
    RastersPatch'
    { _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rUserIp = Nothing
    , _rKey = Nothing
    , _rId = pRId_
    , _rOauthToken = Nothing
    , _rFields = Nothing
    , _rAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rQuotaUser :: Lens' RastersPatch' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' RastersPatch' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIp :: Lens' RastersPatch' (Maybe Text)
rUserIp = lens _rUserIp (\ s a -> s{_rUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' RastersPatch' (Maybe Text)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | The ID of the raster.
rId :: Lens' RastersPatch' Text
rId = lens _rId (\ s a -> s{_rId = a})

-- | OAuth 2.0 token for the current user.
rOauthToken :: Lens' RastersPatch' (Maybe Text)
rOauthToken
  = lens _rOauthToken (\ s a -> s{_rOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' RastersPatch' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

-- | Data format for the response.
rAlt :: Lens' RastersPatch' Alt
rAlt = lens _rAlt (\ s a -> s{_rAlt = a})

instance GoogleRequest RastersPatch' where
        type Rs RastersPatch' = ()
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RastersPatch'{..}
          = go _rQuotaUser (Just _rPrettyPrint) _rUserIp _rKey
              _rId
              _rOauthToken
              _rFields
              (Just _rAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RastersPatchResource)
                      r
                      u
