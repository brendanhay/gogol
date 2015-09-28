{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mapsengine.RasterCollections.Rasters.BatchDelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove rasters from an existing raster collection. Up to 50 rasters can
-- be included in a single batchDelete request. Each batchDelete request is
-- atomic.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasterCollections.rasters.batchDelete@.
module Network.Google.API.Mapsengine.RasterCollections.Rasters.BatchDelete
    (
    -- * REST Resource
      RasterCollectionsRastersBatchDeleteAPI

    -- * Creating a Request
    , rasterCollectionsRastersBatchDelete'
    , RasterCollectionsRastersBatchDelete'

    -- * Request Lenses
    , rcrbdQuotaUser
    , rcrbdPrettyPrint
    , rcrbdUserIp
    , rcrbdKey
    , rcrbdId
    , rcrbdOauthToken
    , rcrbdFields
    , rcrbdAlt
    ) where

import           Network.Google.Map.Engine.Types
import           Network.Google.Prelude

-- | A resource alias for mapsengine.rasterCollections.rasters.batchDelete which the
-- 'RasterCollectionsRastersBatchDelete'' request conforms to.
type RasterCollectionsRastersBatchDeleteAPI =
     "rasterCollections" :>
       Capture "id" Text :>
         "rasters" :>
           "batchDelete" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON]
                             RasterCollectionsRastersBatchDeleteResponse

-- | Remove rasters from an existing raster collection. Up to 50 rasters can
-- be included in a single batchDelete request. Each batchDelete request is
-- atomic.
--
-- /See:/ 'rasterCollectionsRastersBatchDelete'' smart constructor.
data RasterCollectionsRastersBatchDelete' = RasterCollectionsRastersBatchDelete'
    { _rcrbdQuotaUser   :: !(Maybe Text)
    , _rcrbdPrettyPrint :: !Bool
    , _rcrbdUserIp      :: !(Maybe Text)
    , _rcrbdKey         :: !(Maybe Text)
    , _rcrbdId          :: !Text
    , _rcrbdOauthToken  :: !(Maybe Text)
    , _rcrbdFields      :: !(Maybe Text)
    , _rcrbdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsRastersBatchDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrbdQuotaUser'
--
-- * 'rcrbdPrettyPrint'
--
-- * 'rcrbdUserIp'
--
-- * 'rcrbdKey'
--
-- * 'rcrbdId'
--
-- * 'rcrbdOauthToken'
--
-- * 'rcrbdFields'
--
-- * 'rcrbdAlt'
rasterCollectionsRastersBatchDelete'
    :: Text -- ^ 'id'
    -> RasterCollectionsRastersBatchDelete'
rasterCollectionsRastersBatchDelete' pRcrbdId_ =
    RasterCollectionsRastersBatchDelete'
    { _rcrbdQuotaUser = Nothing
    , _rcrbdPrettyPrint = True
    , _rcrbdUserIp = Nothing
    , _rcrbdKey = Nothing
    , _rcrbdId = pRcrbdId_
    , _rcrbdOauthToken = Nothing
    , _rcrbdFields = Nothing
    , _rcrbdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcrbdQuotaUser :: Lens' RasterCollectionsRastersBatchDelete' (Maybe Text)
rcrbdQuotaUser
  = lens _rcrbdQuotaUser
      (\ s a -> s{_rcrbdQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcrbdPrettyPrint :: Lens' RasterCollectionsRastersBatchDelete' Bool
rcrbdPrettyPrint
  = lens _rcrbdPrettyPrint
      (\ s a -> s{_rcrbdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcrbdUserIp :: Lens' RasterCollectionsRastersBatchDelete' (Maybe Text)
rcrbdUserIp
  = lens _rcrbdUserIp (\ s a -> s{_rcrbdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcrbdKey :: Lens' RasterCollectionsRastersBatchDelete' (Maybe Text)
rcrbdKey = lens _rcrbdKey (\ s a -> s{_rcrbdKey = a})

-- | The ID of the raster collection to which these rasters belong.
rcrbdId :: Lens' RasterCollectionsRastersBatchDelete' Text
rcrbdId = lens _rcrbdId (\ s a -> s{_rcrbdId = a})

-- | OAuth 2.0 token for the current user.
rcrbdOauthToken :: Lens' RasterCollectionsRastersBatchDelete' (Maybe Text)
rcrbdOauthToken
  = lens _rcrbdOauthToken
      (\ s a -> s{_rcrbdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcrbdFields :: Lens' RasterCollectionsRastersBatchDelete' (Maybe Text)
rcrbdFields
  = lens _rcrbdFields (\ s a -> s{_rcrbdFields = a})

-- | Data format for the response.
rcrbdAlt :: Lens' RasterCollectionsRastersBatchDelete' Alt
rcrbdAlt = lens _rcrbdAlt (\ s a -> s{_rcrbdAlt = a})

instance GoogleRequest
         RasterCollectionsRastersBatchDelete' where
        type Rs RasterCollectionsRastersBatchDelete' =
             RasterCollectionsRastersBatchDeleteResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u
          RasterCollectionsRastersBatchDelete'{..}
          = go _rcrbdQuotaUser (Just _rcrbdPrettyPrint)
              _rcrbdUserIp
              _rcrbdKey
              _rcrbdId
              _rcrbdOauthToken
              _rcrbdFields
              (Just _rcrbdAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy RasterCollectionsRastersBatchDeleteAPI)
                      r
                      u
