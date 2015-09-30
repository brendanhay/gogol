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
-- Module      : Network.Google.Resource.Mapsengine.RasterCollections.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a raster collection.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRasterCollectionsDelete@.
module Network.Google.Resource.Mapsengine.RasterCollections.Delete
    (
    -- * REST Resource
      RasterCollectionsDeleteResource

    -- * Creating a Request
    , rasterCollectionsDelete'
    , RasterCollectionsDelete'

    -- * Request Lenses
    , rcdQuotaUser
    , rcdPrettyPrint
    , rcdUserIp
    , rcdKey
    , rcdId
    , rcdOauthToken
    , rcdFields
    , rcdAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRasterCollectionsDelete@ which the
-- 'RasterCollectionsDelete'' request conforms to.
type RasterCollectionsDeleteResource =
     "rasterCollections" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Delete a raster collection.
--
-- /See:/ 'rasterCollectionsDelete'' smart constructor.
data RasterCollectionsDelete' = RasterCollectionsDelete'
    { _rcdQuotaUser   :: !(Maybe Text)
    , _rcdPrettyPrint :: !Bool
    , _rcdUserIp      :: !(Maybe Text)
    , _rcdKey         :: !(Maybe Text)
    , _rcdId          :: !Text
    , _rcdOauthToken  :: !(Maybe Text)
    , _rcdFields      :: !(Maybe Text)
    , _rcdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcdQuotaUser'
--
-- * 'rcdPrettyPrint'
--
-- * 'rcdUserIp'
--
-- * 'rcdKey'
--
-- * 'rcdId'
--
-- * 'rcdOauthToken'
--
-- * 'rcdFields'
--
-- * 'rcdAlt'
rasterCollectionsDelete'
    :: Text -- ^ 'id'
    -> RasterCollectionsDelete'
rasterCollectionsDelete' pRcdId_ =
    RasterCollectionsDelete'
    { _rcdQuotaUser = Nothing
    , _rcdPrettyPrint = True
    , _rcdUserIp = Nothing
    , _rcdKey = Nothing
    , _rcdId = pRcdId_
    , _rcdOauthToken = Nothing
    , _rcdFields = Nothing
    , _rcdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcdQuotaUser :: Lens' RasterCollectionsDelete' (Maybe Text)
rcdQuotaUser
  = lens _rcdQuotaUser (\ s a -> s{_rcdQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcdPrettyPrint :: Lens' RasterCollectionsDelete' Bool
rcdPrettyPrint
  = lens _rcdPrettyPrint
      (\ s a -> s{_rcdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcdUserIp :: Lens' RasterCollectionsDelete' (Maybe Text)
rcdUserIp
  = lens _rcdUserIp (\ s a -> s{_rcdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcdKey :: Lens' RasterCollectionsDelete' (Maybe Text)
rcdKey = lens _rcdKey (\ s a -> s{_rcdKey = a})

-- | The ID of the raster collection. Only the raster collection creator or
-- project owner are permitted to delete. If the rastor collection is
-- included in a layer, the request will fail. Remove the raster collection
-- from all layers prior to deleting.
rcdId :: Lens' RasterCollectionsDelete' Text
rcdId = lens _rcdId (\ s a -> s{_rcdId = a})

-- | OAuth 2.0 token for the current user.
rcdOauthToken :: Lens' RasterCollectionsDelete' (Maybe Text)
rcdOauthToken
  = lens _rcdOauthToken
      (\ s a -> s{_rcdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcdFields :: Lens' RasterCollectionsDelete' (Maybe Text)
rcdFields
  = lens _rcdFields (\ s a -> s{_rcdFields = a})

-- | Data format for the response.
rcdAlt :: Lens' RasterCollectionsDelete' Alt
rcdAlt = lens _rcdAlt (\ s a -> s{_rcdAlt = a})

instance GoogleRequest RasterCollectionsDelete' where
        type Rs RasterCollectionsDelete' = ()
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RasterCollectionsDelete'{..}
          = go _rcdQuotaUser (Just _rcdPrettyPrint) _rcdUserIp
              _rcdKey
              _rcdId
              _rcdOauthToken
              _rcdFields
              (Just _rcdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RasterCollectionsDeleteResource)
                      r
                      u
