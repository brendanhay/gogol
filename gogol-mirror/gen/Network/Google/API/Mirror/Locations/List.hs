{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mirror.Locations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of locations for the user.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.locations.list@.
module Network.Google.API.Mirror.Locations.List
    (
    -- * REST Resource
      LocationsListAPI

    -- * Creating a Request
    , locationsList'
    , LocationsList'

    -- * Request Lenses
    , llQuotaUser
    , llPrettyPrint
    , llUserIp
    , llKey
    , llOauthToken
    , llFields
    , llAlt
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for mirror.locations.list which the
-- 'LocationsList'' request conforms to.
type LocationsListAPI =
     "locations" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :>
                     Get '[JSON] LocationsListResponse

-- | Retrieves a list of locations for the user.
--
-- /See:/ 'locationsList'' smart constructor.
data LocationsList' = LocationsList'
    { _llQuotaUser   :: !(Maybe Text)
    , _llPrettyPrint :: !Bool
    , _llUserIp      :: !(Maybe Text)
    , _llKey         :: !(Maybe Text)
    , _llOauthToken  :: !(Maybe Text)
    , _llFields      :: !(Maybe Text)
    , _llAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llQuotaUser'
--
-- * 'llPrettyPrint'
--
-- * 'llUserIp'
--
-- * 'llKey'
--
-- * 'llOauthToken'
--
-- * 'llFields'
--
-- * 'llAlt'
locationsList'
    :: LocationsList'
locationsList' =
    LocationsList'
    { _llQuotaUser = Nothing
    , _llPrettyPrint = True
    , _llUserIp = Nothing
    , _llKey = Nothing
    , _llOauthToken = Nothing
    , _llFields = Nothing
    , _llAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
llQuotaUser :: Lens' LocationsList' (Maybe Text)
llQuotaUser
  = lens _llQuotaUser (\ s a -> s{_llQuotaUser = a})

-- | Returns response with indentations and line breaks.
llPrettyPrint :: Lens' LocationsList' Bool
llPrettyPrint
  = lens _llPrettyPrint
      (\ s a -> s{_llPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
llUserIp :: Lens' LocationsList' (Maybe Text)
llUserIp = lens _llUserIp (\ s a -> s{_llUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
llKey :: Lens' LocationsList' (Maybe Text)
llKey = lens _llKey (\ s a -> s{_llKey = a})

-- | OAuth 2.0 token for the current user.
llOauthToken :: Lens' LocationsList' (Maybe Text)
llOauthToken
  = lens _llOauthToken (\ s a -> s{_llOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
llFields :: Lens' LocationsList' (Maybe Text)
llFields = lens _llFields (\ s a -> s{_llFields = a})

-- | Data format for the response.
llAlt :: Lens' LocationsList' Alt
llAlt = lens _llAlt (\ s a -> s{_llAlt = a})

instance GoogleRequest LocationsList' where
        type Rs LocationsList' = LocationsListResponse
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u LocationsList'{..}
          = go _llQuotaUser (Just _llPrettyPrint) _llUserIp
              _llKey
              _llOauthToken
              _llFields
              (Just _llAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy LocationsListAPI) r
                      u
