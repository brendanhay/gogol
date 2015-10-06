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
-- Module      : Network.Google.Resource.MapsEngine.Maps.GetPublished
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return the published metadata for a particular map.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineMapsGetPublished@.
module Network.Google.Resource.MapsEngine.Maps.GetPublished
    (
    -- * REST Resource
      MapsGetPublishedResource

    -- * Creating a Request
    , mapsGetPublished'
    , MapsGetPublished'

    -- * Request Lenses
    , mgpQuotaUser
    , mgpPrettyPrint
    , mgpUserIP
    , mgpKey
    , mgpId
    , mgpOAuthToken
    , mgpFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineMapsGetPublished@ which the
-- 'MapsGetPublished'' request conforms to.
type MapsGetPublishedResource =
     "maps" :>
       Capture "id" Text :>
         "published" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] PublishedMap

-- | Return the published metadata for a particular map.
--
-- /See:/ 'mapsGetPublished'' smart constructor.
data MapsGetPublished' = MapsGetPublished'
    { _mgpQuotaUser   :: !(Maybe Text)
    , _mgpPrettyPrint :: !Bool
    , _mgpUserIP      :: !(Maybe Text)
    , _mgpKey         :: !(Maybe AuthKey)
    , _mgpId          :: !Text
    , _mgpOAuthToken  :: !(Maybe OAuthToken)
    , _mgpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsGetPublished'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgpQuotaUser'
--
-- * 'mgpPrettyPrint'
--
-- * 'mgpUserIP'
--
-- * 'mgpKey'
--
-- * 'mgpId'
--
-- * 'mgpOAuthToken'
--
-- * 'mgpFields'
mapsGetPublished'
    :: Text -- ^ 'id'
    -> MapsGetPublished'
mapsGetPublished' pMgpId_ =
    MapsGetPublished'
    { _mgpQuotaUser = Nothing
    , _mgpPrettyPrint = True
    , _mgpUserIP = Nothing
    , _mgpKey = Nothing
    , _mgpId = pMgpId_
    , _mgpOAuthToken = Nothing
    , _mgpFields = Nothing
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
mgpUserIP :: Lens' MapsGetPublished' (Maybe Text)
mgpUserIP
  = lens _mgpUserIP (\ s a -> s{_mgpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mgpKey :: Lens' MapsGetPublished' (Maybe AuthKey)
mgpKey = lens _mgpKey (\ s a -> s{_mgpKey = a})

-- | The ID of the map.
mgpId :: Lens' MapsGetPublished' Text
mgpId = lens _mgpId (\ s a -> s{_mgpId = a})

-- | OAuth 2.0 token for the current user.
mgpOAuthToken :: Lens' MapsGetPublished' (Maybe OAuthToken)
mgpOAuthToken
  = lens _mgpOAuthToken
      (\ s a -> s{_mgpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mgpFields :: Lens' MapsGetPublished' (Maybe Text)
mgpFields
  = lens _mgpFields (\ s a -> s{_mgpFields = a})

instance GoogleAuth MapsGetPublished' where
        _AuthKey = mgpKey . _Just
        _AuthToken = mgpOAuthToken . _Just

instance GoogleRequest MapsGetPublished' where
        type Rs MapsGetPublished' = PublishedMap
        request = requestWith mapsEngineRequest
        requestWith rq MapsGetPublished'{..}
          = go _mgpId _mgpQuotaUser (Just _mgpPrettyPrint)
              _mgpUserIP
              _mgpFields
              _mgpKey
              _mgpOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy MapsGetPublishedResource)
                      rq
