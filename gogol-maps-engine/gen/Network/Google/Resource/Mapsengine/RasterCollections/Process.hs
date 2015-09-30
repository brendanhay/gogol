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
module Network.Google.Resource.Mapsengine.RasterCollections.Process
    (
    -- * REST Resource
      RasterCollectionsProcessResource

    -- * Creating a Request
    , rasterCollectionsProcess'
    , RasterCollectionsProcess'

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

-- | A resource alias for @MapsengineRasterCollectionsProcess@ which the
-- 'RasterCollectionsProcess'' request conforms to.
type RasterCollectionsProcessResource =
     "rasterCollections" :>
       Capture "id" Text :>
         "process" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ProcessResponse

-- | Process a raster collection asset.
--
-- /See:/ 'rasterCollectionsProcess'' smart constructor.
data RasterCollectionsProcess' = RasterCollectionsProcess'
    { _rcpcQuotaUser   :: !(Maybe Text)
    , _rcpcPrettyPrint :: !Bool
    , _rcpcUserIp      :: !(Maybe Text)
    , _rcpcKey         :: !(Maybe Text)
    , _rcpcId          :: !Text
    , _rcpcOauthToken  :: !(Maybe Text)
    , _rcpcFields      :: !(Maybe Text)
    , _rcpcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsProcess'' with the minimum fields required to make a request.
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
rasterCollectionsProcess'
    :: Text -- ^ 'id'
    -> RasterCollectionsProcess'
rasterCollectionsProcess' pRcpcId_ =
    RasterCollectionsProcess'
    { _rcpcQuotaUser = Nothing
    , _rcpcPrettyPrint = True
    , _rcpcUserIp = Nothing
    , _rcpcKey = Nothing
    , _rcpcId = pRcpcId_
    , _rcpcOauthToken = Nothing
    , _rcpcFields = Nothing
    , _rcpcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcpcQuotaUser :: Lens' RasterCollectionsProcess' (Maybe Text)
rcpcQuotaUser
  = lens _rcpcQuotaUser
      (\ s a -> s{_rcpcQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcpcPrettyPrint :: Lens' RasterCollectionsProcess' Bool
rcpcPrettyPrint
  = lens _rcpcPrettyPrint
      (\ s a -> s{_rcpcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcpcUserIp :: Lens' RasterCollectionsProcess' (Maybe Text)
rcpcUserIp
  = lens _rcpcUserIp (\ s a -> s{_rcpcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcpcKey :: Lens' RasterCollectionsProcess' (Maybe Text)
rcpcKey = lens _rcpcKey (\ s a -> s{_rcpcKey = a})

-- | The ID of the raster collection.
rcpcId :: Lens' RasterCollectionsProcess' Text
rcpcId = lens _rcpcId (\ s a -> s{_rcpcId = a})

-- | OAuth 2.0 token for the current user.
rcpcOauthToken :: Lens' RasterCollectionsProcess' (Maybe Text)
rcpcOauthToken
  = lens _rcpcOauthToken
      (\ s a -> s{_rcpcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcpcFields :: Lens' RasterCollectionsProcess' (Maybe Text)
rcpcFields
  = lens _rcpcFields (\ s a -> s{_rcpcFields = a})

-- | Data format for the response.
rcpcAlt :: Lens' RasterCollectionsProcess' Alt
rcpcAlt = lens _rcpcAlt (\ s a -> s{_rcpcAlt = a})

instance GoogleRequest RasterCollectionsProcess'
         where
        type Rs RasterCollectionsProcess' = ProcessResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RasterCollectionsProcess'{..}
          = go _rcpcQuotaUser (Just _rcpcPrettyPrint)
              _rcpcUserIp
              _rcpcKey
              _rcpcId
              _rcpcOauthToken
              _rcpcFields
              (Just _rcpcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RasterCollectionsProcessResource)
                      r
                      u
