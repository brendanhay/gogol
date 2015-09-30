{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Mapsengine.RasterCollections.Patch
    (
    -- * REST Resource
      RasterCollectionsPatchAPI

    -- * Creating a Request
    , rasterCollectionsPatch
    , RasterCollectionsPatch

    -- * Request Lenses
    , rcpcQuotaUser
    , rcpcPrettyPrint
    , rcpcUserIp
    , rcpcKey
    , rcpcId
    , rcpcOauthToken
    , rcpcFields
    , rcpcAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRasterCollectionsPatch@ which the
-- 'RasterCollectionsPatch' request conforms to.
type RasterCollectionsPatchAPI =
     "rasterCollections" :>
       Capture "id" Text :> Patch '[JSON] ()

-- | Mutate a raster collection asset.
--
-- /See:/ 'rasterCollectionsPatch' smart constructor.
data RasterCollectionsPatch = RasterCollectionsPatch
    { _rcpcQuotaUser   :: !(Maybe Text)
    , _rcpcPrettyPrint :: !Bool
    , _rcpcUserIp      :: !(Maybe Text)
    , _rcpcKey         :: !(Maybe Text)
    , _rcpcId          :: !Text
    , _rcpcOauthToken  :: !(Maybe Text)
    , _rcpcFields      :: !(Maybe Text)
    , _rcpcAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcpcQuotaUser'
--
-- * 'rcpcPrettyPrint'
--
-- * 'rcpcUserIp'
--
-- * 'rcpcKey'
--
-- * 'rcpcId'
--
-- * 'rcpcOauthToken'
--
-- * 'rcpcFields'
--
-- * 'rcpcAlt'
rasterCollectionsPatch
    :: Text -- ^ 'id'
    -> RasterCollectionsPatch
rasterCollectionsPatch pRcpcId_ =
    RasterCollectionsPatch
    { _rcpcQuotaUser = Nothing
    , _rcpcPrettyPrint = True
    , _rcpcUserIp = Nothing
    , _rcpcKey = Nothing
    , _rcpcId = pRcpcId_
    , _rcpcOauthToken = Nothing
    , _rcpcFields = Nothing
    , _rcpcAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcpcQuotaUser :: Lens' RasterCollectionsPatch' (Maybe Text)
rcpcQuotaUser
  = lens _rcpcQuotaUser
      (\ s a -> s{_rcpcQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcpcPrettyPrint :: Lens' RasterCollectionsPatch' Bool
rcpcPrettyPrint
  = lens _rcpcPrettyPrint
      (\ s a -> s{_rcpcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcpcUserIp :: Lens' RasterCollectionsPatch' (Maybe Text)
rcpcUserIp
  = lens _rcpcUserIp (\ s a -> s{_rcpcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcpcKey :: Lens' RasterCollectionsPatch' (Maybe Text)
rcpcKey = lens _rcpcKey (\ s a -> s{_rcpcKey = a})

-- | The ID of the raster collection.
rcpcId :: Lens' RasterCollectionsPatch' Text
rcpcId = lens _rcpcId (\ s a -> s{_rcpcId = a})

-- | OAuth 2.0 token for the current user.
rcpcOauthToken :: Lens' RasterCollectionsPatch' (Maybe Text)
rcpcOauthToken
  = lens _rcpcOauthToken
      (\ s a -> s{_rcpcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcpcFields :: Lens' RasterCollectionsPatch' (Maybe Text)
rcpcFields
  = lens _rcpcFields (\ s a -> s{_rcpcFields = a})

-- | Data format for the response.
rcpcAlt :: Lens' RasterCollectionsPatch' Text
rcpcAlt = lens _rcpcAlt (\ s a -> s{_rcpcAlt = a})

instance GoogleRequest RasterCollectionsPatch' where
        type Rs RasterCollectionsPatch' = ()
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RasterCollectionsPatch{..}
          = go _rcpcQuotaUser _rcpcPrettyPrint _rcpcUserIp
              _rcpcKey
              _rcpcId
              _rcpcOauthToken
              _rcpcFields
              _rcpcAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RasterCollectionsPatchAPI)
                      r
                      u
