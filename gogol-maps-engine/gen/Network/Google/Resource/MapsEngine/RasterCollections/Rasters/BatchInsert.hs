{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Rasters.BatchInsert
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
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRasterCollectionsRastersBatchInsert@.
module Network.Google.Resource.MapsEngine.RasterCollections.Rasters.BatchInsert
    (
    -- * REST Resource
      RasterCollectionsRastersBatchInsertResource

    -- * Creating a Request
    , rasterCollectionsRastersBatchInsert'
    , RasterCollectionsRastersBatchInsert'

    -- * Request Lenses
    , rcrbiQuotaUser
    , rcrbiPrettyPrint
    , rcrbiUserIP
    , rcrbiPayload
    , rcrbiKey
    , rcrbiId
    , rcrbiOAuthToken
    , rcrbiFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRasterCollectionsRastersBatchInsert@ which the
-- 'RasterCollectionsRastersBatchInsert'' request conforms to.
type RasterCollectionsRastersBatchInsertResource =
     "rasterCollections" :>
       Capture "id" Text :>
         "rasters" :>
           "batchInsert" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             RasterCollectionsRastersBatchInsertRequest
                             :>
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
    , _rcrbiUserIP      :: !(Maybe Text)
    , _rcrbiPayload     :: !RasterCollectionsRastersBatchInsertRequest
    , _rcrbiKey         :: !(Maybe Key)
    , _rcrbiId          :: !Text
    , _rcrbiOAuthToken  :: !(Maybe OAuthToken)
    , _rcrbiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsRastersBatchInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrbiQuotaUser'
--
-- * 'rcrbiPrettyPrint'
--
-- * 'rcrbiUserIP'
--
-- * 'rcrbiPayload'
--
-- * 'rcrbiKey'
--
-- * 'rcrbiId'
--
-- * 'rcrbiOAuthToken'
--
-- * 'rcrbiFields'
rasterCollectionsRastersBatchInsert'
    :: RasterCollectionsRastersBatchInsertRequest -- ^ 'payload'
    -> Text -- ^ 'id'
    -> RasterCollectionsRastersBatchInsert'
rasterCollectionsRastersBatchInsert' pRcrbiPayload_ pRcrbiId_ =
    RasterCollectionsRastersBatchInsert'
    { _rcrbiQuotaUser = Nothing
    , _rcrbiPrettyPrint = True
    , _rcrbiUserIP = Nothing
    , _rcrbiPayload = pRcrbiPayload_
    , _rcrbiKey = Nothing
    , _rcrbiId = pRcrbiId_
    , _rcrbiOAuthToken = Nothing
    , _rcrbiFields = Nothing
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
rcrbiUserIP :: Lens' RasterCollectionsRastersBatchInsert' (Maybe Text)
rcrbiUserIP
  = lens _rcrbiUserIP (\ s a -> s{_rcrbiUserIP = a})

-- | Multipart request metadata.
rcrbiPayload :: Lens' RasterCollectionsRastersBatchInsert' RasterCollectionsRastersBatchInsertRequest
rcrbiPayload
  = lens _rcrbiPayload (\ s a -> s{_rcrbiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcrbiKey :: Lens' RasterCollectionsRastersBatchInsert' (Maybe Key)
rcrbiKey = lens _rcrbiKey (\ s a -> s{_rcrbiKey = a})

-- | The ID of the raster collection to which these rasters belong.
rcrbiId :: Lens' RasterCollectionsRastersBatchInsert' Text
rcrbiId = lens _rcrbiId (\ s a -> s{_rcrbiId = a})

-- | OAuth 2.0 token for the current user.
rcrbiOAuthToken :: Lens' RasterCollectionsRastersBatchInsert' (Maybe OAuthToken)
rcrbiOAuthToken
  = lens _rcrbiOAuthToken
      (\ s a -> s{_rcrbiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcrbiFields :: Lens' RasterCollectionsRastersBatchInsert' (Maybe Text)
rcrbiFields
  = lens _rcrbiFields (\ s a -> s{_rcrbiFields = a})

instance GoogleAuth
         RasterCollectionsRastersBatchInsert' where
        authKey = rcrbiKey . _Just
        authToken = rcrbiOAuthToken . _Just

instance GoogleRequest
         RasterCollectionsRastersBatchInsert' where
        type Rs RasterCollectionsRastersBatchInsert' =
             RasterCollectionsRastersBatchInsertResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u
          RasterCollectionsRastersBatchInsert'{..}
          = go _rcrbiId _rcrbiQuotaUser
              (Just _rcrbiPrettyPrint)
              _rcrbiUserIP
              _rcrbiFields
              _rcrbiKey
              _rcrbiOAuthToken
              (Just AltJSON)
              _rcrbiPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy RasterCollectionsRastersBatchInsertResource)
                      r
                      u
