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
-- Module      : Network.Google.Resource.Mapsengine.Maps.GetPublished
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return the published metadata for a particular map.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineMapsGetPublished@.
module Network.Google.Resource.Mapsengine.Maps.GetPublished
    (
    -- * REST Resource
      MapsGetPublishedResource

    -- * Creating a Request
    , mapsGetPublished'
    , MapsGetPublished'

    -- * Request Lenses
    , mgpQuotaUser
    , mgpPrettyPrint
    , mgpUserIp
    , mgpKey
    , mgpId
    , mgpOauthToken
    , mgpFields
    , mgpAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineMapsGetPublished@ which the
-- 'MapsGetPublished'' request conforms to.
type MapsGetPublishedResource =
     "maps" :>
       Capture "id" Text :>
         "published" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] PublishedMap

-- | Return the published metadata for a particular map.
--
-- /See:/ 'mapsGetPublished'' smart constructor.
data MapsGetPublished' = MapsGetPublished'
    { _mgpQuotaUser   :: !(Maybe Text)
    , _mgpPrettyPrint :: !Bool
    , _mgpUserIp      :: !(Maybe Text)
    , _mgpKey         :: !(Maybe Text)
    , _mgpId          :: !Text
    , _mgpOauthToken  :: !(Maybe Text)
    , _mgpFields      :: !(Maybe Text)
    , _mgpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsGetPublished'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgpQuotaUser'
--
-- * 'mgpPrettyPrint'
--
-- * 'mgpUserIp'
--
-- * 'mgpKey'
--
-- * 'mgpId'
--
-- * 'mgpOauthToken'
--
-- * 'mgpFields'
--
-- * 'mgpAlt'
mapsGetPublished'
    :: Text -- ^ 'id'
    -> MapsGetPublished'
mapsGetPublished' pMgpId_ =
    MapsGetPublished'
    { _mgpQuotaUser = Nothing
    , _mgpPrettyPrint = True
    , _mgpUserIp = Nothing
    , _mgpKey = Nothing
    , _mgpId = pMgpId_
    , _mgpOauthToken = Nothing
    , _mgpFields = Nothing
    , _mgpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mgpQuotaUser :: Lens' MapsGetPublished' (Maybe Text)
mgpQuotaUser
  = lens _mgpQuotaUser (\ s a -> s{_mgpQuotaUser = a})

-- | Returns response with indentations and line breaks.
mgpPrettyPrint :: Lens' MapsGetPublished' Bool
mgpPrettyPrint
  = lens _mgpPrettyPrint
      (\ s a -> s{_mgpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mgpUserIp :: Lens' MapsGetPublished' (Maybe Text)
mgpUserIp
  = lens _mgpUserIp (\ s a -> s{_mgpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mgpKey :: Lens' MapsGetPublished' (Maybe Text)
mgpKey = lens _mgpKey (\ s a -> s{_mgpKey = a})

-- | The ID of the map.
mgpId :: Lens' MapsGetPublished' Text
mgpId = lens _mgpId (\ s a -> s{_mgpId = a})

-- | OAuth 2.0 token for the current user.
mgpOauthToken :: Lens' MapsGetPublished' (Maybe Text)
mgpOauthToken
  = lens _mgpOauthToken
      (\ s a -> s{_mgpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mgpFields :: Lens' MapsGetPublished' (Maybe Text)
mgpFields
  = lens _mgpFields (\ s a -> s{_mgpFields = a})

-- | Data format for the response.
mgpAlt :: Lens' MapsGetPublished' Alt
mgpAlt = lens _mgpAlt (\ s a -> s{_mgpAlt = a})

instance GoogleRequest MapsGetPublished' where
        type Rs MapsGetPublished' = PublishedMap
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u MapsGetPublished'{..}
          = go _mgpQuotaUser (Just _mgpPrettyPrint) _mgpUserIp
              _mgpKey
              _mgpId
              _mgpOauthToken
              _mgpFields
              (Just _mgpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MapsGetPublishedResource)
                      r
                      u
