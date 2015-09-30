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
-- Module      : Network.Google.Resource.Mapsengine.RasterCollections.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return metadata for a particular raster collection.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRasterCollectionsGet@.
module Network.Google.Resource.Mapsengine.RasterCollections.Get
    (
    -- * REST Resource
      RasterCollectionsGetResource

    -- * Creating a Request
    , rasterCollectionsGet'
    , RasterCollectionsGet'

    -- * Request Lenses
    , rcgQuotaUser
    , rcgPrettyPrint
    , rcgUserIp
    , rcgKey
    , rcgId
    , rcgOauthToken
    , rcgFields
    , rcgAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRasterCollectionsGet@ which the
-- 'RasterCollectionsGet'' request conforms to.
type RasterCollectionsGetResource =
     "rasterCollections" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] RasterCollection

-- | Return metadata for a particular raster collection.
--
-- /See:/ 'rasterCollectionsGet'' smart constructor.
data RasterCollectionsGet' = RasterCollectionsGet'
    { _rcgQuotaUser   :: !(Maybe Text)
    , _rcgPrettyPrint :: !Bool
    , _rcgUserIp      :: !(Maybe Text)
    , _rcgKey         :: !(Maybe Text)
    , _rcgId          :: !Text
    , _rcgOauthToken  :: !(Maybe Text)
    , _rcgFields      :: !(Maybe Text)
    , _rcgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcgQuotaUser'
--
-- * 'rcgPrettyPrint'
--
-- * 'rcgUserIp'
--
-- * 'rcgKey'
--
-- * 'rcgId'
--
-- * 'rcgOauthToken'
--
-- * 'rcgFields'
--
-- * 'rcgAlt'
rasterCollectionsGet'
    :: Text -- ^ 'id'
    -> RasterCollectionsGet'
rasterCollectionsGet' pRcgId_ =
    RasterCollectionsGet'
    { _rcgQuotaUser = Nothing
    , _rcgPrettyPrint = True
    , _rcgUserIp = Nothing
    , _rcgKey = Nothing
    , _rcgId = pRcgId_
    , _rcgOauthToken = Nothing
    , _rcgFields = Nothing
    , _rcgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcgQuotaUser :: Lens' RasterCollectionsGet' (Maybe Text)
rcgQuotaUser
  = lens _rcgQuotaUser (\ s a -> s{_rcgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcgPrettyPrint :: Lens' RasterCollectionsGet' Bool
rcgPrettyPrint
  = lens _rcgPrettyPrint
      (\ s a -> s{_rcgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcgUserIp :: Lens' RasterCollectionsGet' (Maybe Text)
rcgUserIp
  = lens _rcgUserIp (\ s a -> s{_rcgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcgKey :: Lens' RasterCollectionsGet' (Maybe Text)
rcgKey = lens _rcgKey (\ s a -> s{_rcgKey = a})

-- | The ID of the raster collection.
rcgId :: Lens' RasterCollectionsGet' Text
rcgId = lens _rcgId (\ s a -> s{_rcgId = a})

-- | OAuth 2.0 token for the current user.
rcgOauthToken :: Lens' RasterCollectionsGet' (Maybe Text)
rcgOauthToken
  = lens _rcgOauthToken
      (\ s a -> s{_rcgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcgFields :: Lens' RasterCollectionsGet' (Maybe Text)
rcgFields
  = lens _rcgFields (\ s a -> s{_rcgFields = a})

-- | Data format for the response.
rcgAlt :: Lens' RasterCollectionsGet' Alt
rcgAlt = lens _rcgAlt (\ s a -> s{_rcgAlt = a})

instance GoogleRequest RasterCollectionsGet' where
        type Rs RasterCollectionsGet' = RasterCollection
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RasterCollectionsGet'{..}
          = go _rcgQuotaUser (Just _rcgPrettyPrint) _rcgUserIp
              _rcgKey
              _rcgId
              _rcgOauthToken
              _rcgFields
              (Just _rcgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RasterCollectionsGetResource)
                      r
                      u
