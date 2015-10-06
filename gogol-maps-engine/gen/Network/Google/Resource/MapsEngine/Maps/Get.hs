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
-- Module      : Network.Google.Resource.MapsEngine.Maps.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return metadata for a particular map.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineMapsGet@.
module Network.Google.Resource.MapsEngine.Maps.Get
    (
    -- * REST Resource
      MapsGetResource

    -- * Creating a Request
    , mapsGet'
    , MapsGet'

    -- * Request Lenses
    , mgQuotaUser
    , mgPrettyPrint
    , mgUserIP
    , mgKey
    , mgVersion
    , mgId
    , mgOAuthToken
    , mgFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineMapsGet@ which the
-- 'MapsGet'' request conforms to.
type MapsGetResource =
     "maps" :>
       Capture "id" Text :>
         QueryParam "version" MapsGetVersion :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Map

-- | Return metadata for a particular map.
--
-- /See:/ 'mapsGet'' smart constructor.
data MapsGet' = MapsGet'
    { _mgQuotaUser   :: !(Maybe Text)
    , _mgPrettyPrint :: !Bool
    , _mgUserIP      :: !(Maybe Text)
    , _mgKey         :: !(Maybe AuthKey)
    , _mgVersion     :: !(Maybe MapsGetVersion)
    , _mgId          :: !Text
    , _mgOAuthToken  :: !(Maybe OAuthToken)
    , _mgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MapsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgQuotaUser'
--
-- * 'mgPrettyPrint'
--
-- * 'mgUserIP'
--
-- * 'mgKey'
--
-- * 'mgVersion'
--
-- * 'mgId'
--
-- * 'mgOAuthToken'
--
-- * 'mgFields'
mapsGet'
    :: Text -- ^ 'id'
    -> MapsGet'
mapsGet' pMgId_ =
    MapsGet'
    { _mgQuotaUser = Nothing
    , _mgPrettyPrint = True
    , _mgUserIP = Nothing
    , _mgKey = Nothing
    , _mgVersion = Nothing
    , _mgId = pMgId_
    , _mgOAuthToken = Nothing
    , _mgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mgQuotaUser :: Lens' MapsGet' (Maybe Text)
mgQuotaUser
  = lens _mgQuotaUser (\ s a -> s{_mgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mgPrettyPrint :: Lens' MapsGet' Bool
mgPrettyPrint
  = lens _mgPrettyPrint
      (\ s a -> s{_mgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mgUserIP :: Lens' MapsGet' (Maybe Text)
mgUserIP = lens _mgUserIP (\ s a -> s{_mgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mgKey :: Lens' MapsGet' (Maybe AuthKey)
mgKey = lens _mgKey (\ s a -> s{_mgKey = a})

-- | Deprecated: The version parameter indicates which version of the map
-- should be returned. When version is set to published, the published
-- version of the map will be returned. Please use the maps.getPublished
-- endpoint instead.
mgVersion :: Lens' MapsGet' (Maybe MapsGetVersion)
mgVersion
  = lens _mgVersion (\ s a -> s{_mgVersion = a})

-- | The ID of the map.
mgId :: Lens' MapsGet' Text
mgId = lens _mgId (\ s a -> s{_mgId = a})

-- | OAuth 2.0 token for the current user.
mgOAuthToken :: Lens' MapsGet' (Maybe OAuthToken)
mgOAuthToken
  = lens _mgOAuthToken (\ s a -> s{_mgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mgFields :: Lens' MapsGet' (Maybe Text)
mgFields = lens _mgFields (\ s a -> s{_mgFields = a})

instance GoogleAuth MapsGet' where
        authKey = mgKey . _Just
        authToken = mgOAuthToken . _Just

instance GoogleRequest MapsGet' where
        type Rs MapsGet' = Map
        request = requestWith mapsEngineRequest
        requestWith rq MapsGet'{..}
          = go _mgId _mgVersion _mgQuotaUser
              (Just _mgPrettyPrint)
              _mgUserIP
              _mgFields
              _mgKey
              _mgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy MapsGetResource) rq
