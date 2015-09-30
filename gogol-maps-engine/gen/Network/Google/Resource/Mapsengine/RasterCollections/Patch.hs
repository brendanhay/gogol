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
-- Module      : Network.Google.Resource.Mapsengine.RasterCollections.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Mutate a raster collection asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRasterCollectionsPatch@.
module Network.Google.Resource.Mapsengine.RasterCollections.Patch
    (
    -- * REST Resource
      RasterCollectionsPatchResource

    -- * Creating a Request
    , rasterCollectionsPatch'
    , RasterCollectionsPatch'

    -- * Request Lenses
    , rcpQuotaUser
    , rcpPrettyPrint
    , rcpUserIp
    , rcpKey
    , rcpId
    , rcpOauthToken
    , rcpFields
    , rcpAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRasterCollectionsPatch@ which the
-- 'RasterCollectionsPatch'' request conforms to.
type RasterCollectionsPatchResource =
     "rasterCollections" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Patch '[JSON] ()

-- | Mutate a raster collection asset.
--
-- /See:/ 'rasterCollectionsPatch'' smart constructor.
data RasterCollectionsPatch' = RasterCollectionsPatch'
    { _rcpQuotaUser   :: !(Maybe Text)
    , _rcpPrettyPrint :: !Bool
    , _rcpUserIp      :: !(Maybe Text)
    , _rcpKey         :: !(Maybe Text)
    , _rcpId          :: !Text
    , _rcpOauthToken  :: !(Maybe Text)
    , _rcpFields      :: !(Maybe Text)
    , _rcpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcpQuotaUser'
--
-- * 'rcpPrettyPrint'
--
-- * 'rcpUserIp'
--
-- * 'rcpKey'
--
-- * 'rcpId'
--
-- * 'rcpOauthToken'
--
-- * 'rcpFields'
--
-- * 'rcpAlt'
rasterCollectionsPatch'
    :: Text -- ^ 'id'
    -> RasterCollectionsPatch'
rasterCollectionsPatch' pRcpId_ =
    RasterCollectionsPatch'
    { _rcpQuotaUser = Nothing
    , _rcpPrettyPrint = True
    , _rcpUserIp = Nothing
    , _rcpKey = Nothing
    , _rcpId = pRcpId_
    , _rcpOauthToken = Nothing
    , _rcpFields = Nothing
    , _rcpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcpQuotaUser :: Lens' RasterCollectionsPatch' (Maybe Text)
rcpQuotaUser
  = lens _rcpQuotaUser (\ s a -> s{_rcpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcpPrettyPrint :: Lens' RasterCollectionsPatch' Bool
rcpPrettyPrint
  = lens _rcpPrettyPrint
      (\ s a -> s{_rcpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcpUserIp :: Lens' RasterCollectionsPatch' (Maybe Text)
rcpUserIp
  = lens _rcpUserIp (\ s a -> s{_rcpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcpKey :: Lens' RasterCollectionsPatch' (Maybe Text)
rcpKey = lens _rcpKey (\ s a -> s{_rcpKey = a})

-- | The ID of the raster collection.
rcpId :: Lens' RasterCollectionsPatch' Text
rcpId = lens _rcpId (\ s a -> s{_rcpId = a})

-- | OAuth 2.0 token for the current user.
rcpOauthToken :: Lens' RasterCollectionsPatch' (Maybe Text)
rcpOauthToken
  = lens _rcpOauthToken
      (\ s a -> s{_rcpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcpFields :: Lens' RasterCollectionsPatch' (Maybe Text)
rcpFields
  = lens _rcpFields (\ s a -> s{_rcpFields = a})

-- | Data format for the response.
rcpAlt :: Lens' RasterCollectionsPatch' Alt
rcpAlt = lens _rcpAlt (\ s a -> s{_rcpAlt = a})

instance GoogleRequest RasterCollectionsPatch' where
        type Rs RasterCollectionsPatch' = ()
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RasterCollectionsPatch'{..}
          = go _rcpQuotaUser (Just _rcpPrettyPrint) _rcpUserIp
              _rcpKey
              _rcpId
              _rcpOauthToken
              _rcpFields
              (Just _rcpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RasterCollectionsPatchResource)
                      r
                      u
