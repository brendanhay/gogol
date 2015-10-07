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
-- Module      : Network.Google.Resource.Mirror.Locations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of locations for the user.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorLocationsList@.
module Network.Google.Resource.Mirror.Locations.List
    (
    -- * REST Resource
      LocationsListResource

    -- * Creating a Request
    , locationsList'
    , LocationsList'

    -- * Request Lenses
    , llQuotaUser
    , llPrettyPrint
    , llUserIP
    , llKey
    , llOAuthToken
    , llFields
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorLocationsList@ method which the
-- 'LocationsList'' request conforms to.
type LocationsListResource =
     "locations" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] LocationsListResponse

-- | Retrieves a list of locations for the user.
--
-- /See:/ 'locationsList'' smart constructor.
data LocationsList' = LocationsList'
    { _llQuotaUser   :: !(Maybe Text)
    , _llPrettyPrint :: !Bool
    , _llUserIP      :: !(Maybe Text)
    , _llKey         :: !(Maybe AuthKey)
    , _llOAuthToken  :: !(Maybe OAuthToken)
    , _llFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llQuotaUser'
--
-- * 'llPrettyPrint'
--
-- * 'llUserIP'
--
-- * 'llKey'
--
-- * 'llOAuthToken'
--
-- * 'llFields'
locationsList'
    :: LocationsList'
locationsList' =
    LocationsList'
    { _llQuotaUser = Nothing
    , _llPrettyPrint = True
    , _llUserIP = Nothing
    , _llKey = Nothing
    , _llOAuthToken = Nothing
    , _llFields = Nothing
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
llUserIP :: Lens' LocationsList' (Maybe Text)
llUserIP = lens _llUserIP (\ s a -> s{_llUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
llKey :: Lens' LocationsList' (Maybe AuthKey)
llKey = lens _llKey (\ s a -> s{_llKey = a})

-- | OAuth 2.0 token for the current user.
llOAuthToken :: Lens' LocationsList' (Maybe OAuthToken)
llOAuthToken
  = lens _llOAuthToken (\ s a -> s{_llOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
llFields :: Lens' LocationsList' (Maybe Text)
llFields = lens _llFields (\ s a -> s{_llFields = a})

instance GoogleAuth LocationsList' where
        _AuthKey = llKey . _Just
        _AuthToken = llOAuthToken . _Just

instance GoogleRequest LocationsList' where
        type Rs LocationsList' = LocationsListResponse
        request = requestWith mirrorRequest
        requestWith rq LocationsList'{..}
          = go _llQuotaUser (Just _llPrettyPrint) _llUserIP
              _llFields
              _llKey
              _llOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy LocationsListResource)
                      rq
