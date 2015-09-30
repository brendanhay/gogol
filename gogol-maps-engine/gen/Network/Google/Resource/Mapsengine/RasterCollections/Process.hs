{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.RasterCollections.Process
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Process a raster collection asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRasterCollectionsProcess@.
module Mapsengine.RasterCollections.Process
    (
    -- * REST Resource
      RasterCollectionsProcessAPI

    -- * Creating a Request
    , rasterCollectionsProcess
    , RasterCollectionsProcess

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

-- | A resource alias for @MapsengineRasterCollectionsProcess@ which the
-- 'RasterCollectionsProcess' request conforms to.
type RasterCollectionsProcessAPI =
     "rasterCollections" :>
       Capture "id" Text :>
         "process" :> Post '[JSON] ProcessResponse

-- | Process a raster collection asset.
--
-- /See:/ 'rasterCollectionsProcess' smart constructor.
data RasterCollectionsProcess = RasterCollectionsProcess
    { _rcpQuotaUser   :: !(Maybe Text)
    , _rcpPrettyPrint :: !Bool
    , _rcpUserIp      :: !(Maybe Text)
    , _rcpKey         :: !(Maybe Text)
    , _rcpId          :: !Text
    , _rcpOauthToken  :: !(Maybe Text)
    , _rcpFields      :: !(Maybe Text)
    , _rcpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsProcess'' with the minimum fields required to make a request.
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
rasterCollectionsProcess
    :: Text -- ^ 'id'
    -> RasterCollectionsProcess
rasterCollectionsProcess pRcpId_ =
    RasterCollectionsProcess
    { _rcpQuotaUser = Nothing
    , _rcpPrettyPrint = True
    , _rcpUserIp = Nothing
    , _rcpKey = Nothing
    , _rcpId = pRcpId_
    , _rcpOauthToken = Nothing
    , _rcpFields = Nothing
    , _rcpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcpQuotaUser :: Lens' RasterCollectionsProcess' (Maybe Text)
rcpQuotaUser
  = lens _rcpQuotaUser (\ s a -> s{_rcpQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcpPrettyPrint :: Lens' RasterCollectionsProcess' Bool
rcpPrettyPrint
  = lens _rcpPrettyPrint
      (\ s a -> s{_rcpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcpUserIp :: Lens' RasterCollectionsProcess' (Maybe Text)
rcpUserIp
  = lens _rcpUserIp (\ s a -> s{_rcpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcpKey :: Lens' RasterCollectionsProcess' (Maybe Text)
rcpKey = lens _rcpKey (\ s a -> s{_rcpKey = a})

-- | The ID of the raster collection.
rcpId :: Lens' RasterCollectionsProcess' Text
rcpId = lens _rcpId (\ s a -> s{_rcpId = a})

-- | OAuth 2.0 token for the current user.
rcpOauthToken :: Lens' RasterCollectionsProcess' (Maybe Text)
rcpOauthToken
  = lens _rcpOauthToken
      (\ s a -> s{_rcpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcpFields :: Lens' RasterCollectionsProcess' (Maybe Text)
rcpFields
  = lens _rcpFields (\ s a -> s{_rcpFields = a})

-- | Data format for the response.
rcpAlt :: Lens' RasterCollectionsProcess' Text
rcpAlt = lens _rcpAlt (\ s a -> s{_rcpAlt = a})

instance GoogleRequest RasterCollectionsProcess'
         where
        type Rs RasterCollectionsProcess' = ProcessResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RasterCollectionsProcess{..}
          = go _rcpQuotaUser _rcpPrettyPrint _rcpUserIp _rcpKey
              _rcpId
              _rcpOauthToken
              _rcpFields
              _rcpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RasterCollectionsProcessAPI)
                      r
                      u
