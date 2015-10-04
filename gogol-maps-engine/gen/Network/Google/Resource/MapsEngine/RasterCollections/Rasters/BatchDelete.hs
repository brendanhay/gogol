{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Rasters.BatchDelete
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
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRasterCollectionsRastersBatchDelete@.
module Network.Google.Resource.MapsEngine.RasterCollections.Rasters.BatchDelete
    (
    -- * REST Resource
      RasterCollectionsRastersBatchDeleteResource

    -- * Creating a Request
    , rasterCollectionsRastersBatchDelete'
    , RasterCollectionsRastersBatchDelete'

    -- * Request Lenses
    , rcrbdQuotaUser
    , rcrbdPrettyPrint
    , rcrbdUserIP
    , rcrbdPayload
    , rcrbdKey
    , rcrbdId
    , rcrbdOAuthToken
    , rcrbdFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRasterCollectionsRastersBatchDelete@ which the
-- 'RasterCollectionsRastersBatchDelete'' request conforms to.
type RasterCollectionsRastersBatchDeleteResource =
     "rasterCollections" :>
       Capture "id" Text :>
         "rasters" :>
           "batchDelete" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             RasterCollectionsRasterBatchDeleteRequest
                             :>
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
    , _rcrbdUserIP      :: !(Maybe Text)
    , _rcrbdPayload     :: !RasterCollectionsRasterBatchDeleteRequest
    , _rcrbdKey         :: !(Maybe Key)
    , _rcrbdId          :: !Text
    , _rcrbdOAuthToken  :: !(Maybe OAuthToken)
    , _rcrbdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsRastersBatchDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrbdQuotaUser'
--
-- * 'rcrbdPrettyPrint'
--
-- * 'rcrbdUserIP'
--
-- * 'rcrbdPayload'
--
-- * 'rcrbdKey'
--
-- * 'rcrbdId'
--
-- * 'rcrbdOAuthToken'
--
-- * 'rcrbdFields'
rasterCollectionsRastersBatchDelete'
    :: RasterCollectionsRasterBatchDeleteRequest -- ^ 'payload'
    -> Text -- ^ 'id'
    -> RasterCollectionsRastersBatchDelete'
rasterCollectionsRastersBatchDelete' pRcrbdPayload_ pRcrbdId_ =
    RasterCollectionsRastersBatchDelete'
    { _rcrbdQuotaUser = Nothing
    , _rcrbdPrettyPrint = True
    , _rcrbdUserIP = Nothing
    , _rcrbdPayload = pRcrbdPayload_
    , _rcrbdKey = Nothing
    , _rcrbdId = pRcrbdId_
    , _rcrbdOAuthToken = Nothing
    , _rcrbdFields = Nothing
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
rcrbdUserIP :: Lens' RasterCollectionsRastersBatchDelete' (Maybe Text)
rcrbdUserIP
  = lens _rcrbdUserIP (\ s a -> s{_rcrbdUserIP = a})

-- | Multipart request metadata.
rcrbdPayload :: Lens' RasterCollectionsRastersBatchDelete' RasterCollectionsRasterBatchDeleteRequest
rcrbdPayload
  = lens _rcrbdPayload (\ s a -> s{_rcrbdPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcrbdKey :: Lens' RasterCollectionsRastersBatchDelete' (Maybe Key)
rcrbdKey = lens _rcrbdKey (\ s a -> s{_rcrbdKey = a})

-- | The ID of the raster collection to which these rasters belong.
rcrbdId :: Lens' RasterCollectionsRastersBatchDelete' Text
rcrbdId = lens _rcrbdId (\ s a -> s{_rcrbdId = a})

-- | OAuth 2.0 token for the current user.
rcrbdOAuthToken :: Lens' RasterCollectionsRastersBatchDelete' (Maybe OAuthToken)
rcrbdOAuthToken
  = lens _rcrbdOAuthToken
      (\ s a -> s{_rcrbdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcrbdFields :: Lens' RasterCollectionsRastersBatchDelete' (Maybe Text)
rcrbdFields
  = lens _rcrbdFields (\ s a -> s{_rcrbdFields = a})

instance GoogleAuth
         RasterCollectionsRastersBatchDelete' where
        authKey = rcrbdKey . _Just
        authToken = rcrbdOAuthToken . _Just

instance GoogleRequest
         RasterCollectionsRastersBatchDelete' where
        type Rs RasterCollectionsRastersBatchDelete' =
             RasterCollectionsRastersBatchDeleteResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u
          RasterCollectionsRastersBatchDelete'{..}
          = go _rcrbdId _rcrbdQuotaUser
              (Just _rcrbdPrettyPrint)
              _rcrbdUserIP
              _rcrbdFields
              _rcrbdKey
              _rcrbdOAuthToken
              (Just AltJSON)
              _rcrbdPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy RasterCollectionsRastersBatchDeleteResource)
                      r
                      u
