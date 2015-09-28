{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mapsengine.RasterCollections.Rasters.BatchInsert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add rasters to an existing raster collection. Rasters must be
-- successfully processed in order to be added to a raster collection. Up
-- to 50 rasters can be included in a single batchInsert request. Each
-- batchInsert request is atomic.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasterCollections.rasters.batchInsert@.
module Network.Google.API.Mapsengine.RasterCollections.Rasters.BatchInsert
    (
    -- * REST Resource
      RasterCollectionsRastersBatchInsertAPI

    -- * Creating a Request
    , rasterCollectionsRastersBatchInsert'
    , RasterCollectionsRastersBatchInsert'

    -- * Request Lenses
    , rcrbiQuotaUser
    , rcrbiPrettyPrint
    , rcrbiUserIp
    , rcrbiKey
    , rcrbiId
    , rcrbiOauthToken
    , rcrbiFields
    , rcrbiAlt
    ) where

import           Network.Google.Map.Engine.Types
import           Network.Google.Prelude

-- | A resource alias for mapsengine.rasterCollections.rasters.batchInsert which the
-- 'RasterCollectionsRastersBatchInsert'' request conforms to.
type RasterCollectionsRastersBatchInsertAPI =
     "rasterCollections" :>
       Capture "id" Text :>
         "rasters" :>
           "batchInsert" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON]
                             RasterCollectionsRastersBatchInsertResponse

-- | Add rasters to an existing raster collection. Rasters must be
-- successfully processed in order to be added to a raster collection. Up
-- to 50 rasters can be included in a single batchInsert request. Each
-- batchInsert request is atomic.
--
-- /See:/ 'rasterCollectionsRastersBatchInsert'' smart constructor.
data RasterCollectionsRastersBatchInsert' = RasterCollectionsRastersBatchInsert'
    { _rcrbiQuotaUser   :: !(Maybe Text)
    , _rcrbiPrettyPrint :: !Bool
    , _rcrbiUserIp      :: !(Maybe Text)
    , _rcrbiKey         :: !(Maybe Text)
    , _rcrbiId          :: !Text
    , _rcrbiOauthToken  :: !(Maybe Text)
    , _rcrbiFields      :: !(Maybe Text)
    , _rcrbiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsRastersBatchInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrbiQuotaUser'
--
-- * 'rcrbiPrettyPrint'
--
-- * 'rcrbiUserIp'
--
-- * 'rcrbiKey'
--
-- * 'rcrbiId'
--
-- * 'rcrbiOauthToken'
--
-- * 'rcrbiFields'
--
-- * 'rcrbiAlt'
rasterCollectionsRastersBatchInsert'
    :: Text -- ^ 'id'
    -> RasterCollectionsRastersBatchInsert'
rasterCollectionsRastersBatchInsert' pRcrbiId_ =
    RasterCollectionsRastersBatchInsert'
    { _rcrbiQuotaUser = Nothing
    , _rcrbiPrettyPrint = True
    , _rcrbiUserIp = Nothing
    , _rcrbiKey = Nothing
    , _rcrbiId = pRcrbiId_
    , _rcrbiOauthToken = Nothing
    , _rcrbiFields = Nothing
    , _rcrbiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcrbiQuotaUser :: Lens' RasterCollectionsRastersBatchInsert' (Maybe Text)
rcrbiQuotaUser
  = lens _rcrbiQuotaUser
      (\ s a -> s{_rcrbiQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcrbiPrettyPrint :: Lens' RasterCollectionsRastersBatchInsert' Bool
rcrbiPrettyPrint
  = lens _rcrbiPrettyPrint
      (\ s a -> s{_rcrbiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcrbiUserIp :: Lens' RasterCollectionsRastersBatchInsert' (Maybe Text)
rcrbiUserIp
  = lens _rcrbiUserIp (\ s a -> s{_rcrbiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcrbiKey :: Lens' RasterCollectionsRastersBatchInsert' (Maybe Text)
rcrbiKey = lens _rcrbiKey (\ s a -> s{_rcrbiKey = a})

-- | The ID of the raster collection to which these rasters belong.
rcrbiId :: Lens' RasterCollectionsRastersBatchInsert' Text
rcrbiId = lens _rcrbiId (\ s a -> s{_rcrbiId = a})

-- | OAuth 2.0 token for the current user.
rcrbiOauthToken :: Lens' RasterCollectionsRastersBatchInsert' (Maybe Text)
rcrbiOauthToken
  = lens _rcrbiOauthToken
      (\ s a -> s{_rcrbiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcrbiFields :: Lens' RasterCollectionsRastersBatchInsert' (Maybe Text)
rcrbiFields
  = lens _rcrbiFields (\ s a -> s{_rcrbiFields = a})

-- | Data format for the response.
rcrbiAlt :: Lens' RasterCollectionsRastersBatchInsert' Alt
rcrbiAlt = lens _rcrbiAlt (\ s a -> s{_rcrbiAlt = a})

instance GoogleRequest
         RasterCollectionsRastersBatchInsert' where
        type Rs RasterCollectionsRastersBatchInsert' =
             RasterCollectionsRastersBatchInsertResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u
          RasterCollectionsRastersBatchInsert'{..}
          = go _rcrbiQuotaUser (Just _rcrbiPrettyPrint)
              _rcrbiUserIp
              _rcrbiKey
              _rcrbiId
              _rcrbiOauthToken
              _rcrbiFields
              (Just _rcrbiAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy RasterCollectionsRastersBatchInsertAPI)
                      r
                      u
