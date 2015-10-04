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
-- Module      : Network.Google.Resource.Mirror.Locations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a single location by ID.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorLocationsGet@.
module Network.Google.Resource.Mirror.Locations.Get
    (
    -- * REST Resource
      LocationsGetResource

    -- * Creating a Request
    , locationsGet'
    , LocationsGet'

    -- * Request Lenses
    , lgQuotaUser
    , lgPrettyPrint
    , lgUserIP
    , lgKey
    , lgId
    , lgOAuthToken
    , lgFields
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorLocationsGet@ which the
-- 'LocationsGet'' request conforms to.
type LocationsGetResource =
     "locations" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Location

-- | Gets a single location by ID.
--
-- /See:/ 'locationsGet'' smart constructor.
data LocationsGet' = LocationsGet'
    { _lgQuotaUser   :: !(Maybe Text)
    , _lgPrettyPrint :: !Bool
    , _lgUserIP      :: !(Maybe Text)
    , _lgKey         :: !(Maybe Key)
    , _lgId          :: !Text
    , _lgOAuthToken  :: !(Maybe OAuthToken)
    , _lgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgQuotaUser'
--
-- * 'lgPrettyPrint'
--
-- * 'lgUserIP'
--
-- * 'lgKey'
--
-- * 'lgId'
--
-- * 'lgOAuthToken'
--
-- * 'lgFields'
locationsGet'
    :: Text -- ^ 'id'
    -> LocationsGet'
locationsGet' pLgId_ =
    LocationsGet'
    { _lgQuotaUser = Nothing
    , _lgPrettyPrint = True
    , _lgUserIP = Nothing
    , _lgKey = Nothing
    , _lgId = pLgId_
    , _lgOAuthToken = Nothing
    , _lgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lgQuotaUser :: Lens' LocationsGet' (Maybe Text)
lgQuotaUser
  = lens _lgQuotaUser (\ s a -> s{_lgQuotaUser = a})

-- | Returns response with indentations and line breaks.
lgPrettyPrint :: Lens' LocationsGet' Bool
lgPrettyPrint
  = lens _lgPrettyPrint
      (\ s a -> s{_lgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lgUserIP :: Lens' LocationsGet' (Maybe Text)
lgUserIP = lens _lgUserIP (\ s a -> s{_lgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lgKey :: Lens' LocationsGet' (Maybe Key)
lgKey = lens _lgKey (\ s a -> s{_lgKey = a})

-- | The ID of the location or latest for the last known location.
lgId :: Lens' LocationsGet' Text
lgId = lens _lgId (\ s a -> s{_lgId = a})

-- | OAuth 2.0 token for the current user.
lgOAuthToken :: Lens' LocationsGet' (Maybe OAuthToken)
lgOAuthToken
  = lens _lgOAuthToken (\ s a -> s{_lgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lgFields :: Lens' LocationsGet' (Maybe Text)
lgFields = lens _lgFields (\ s a -> s{_lgFields = a})

instance GoogleAuth LocationsGet' where
        authKey = lgKey . _Just
        authToken = lgOAuthToken . _Just

instance GoogleRequest LocationsGet' where
        type Rs LocationsGet' = Location
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u LocationsGet'{..}
          = go _lgId _lgQuotaUser (Just _lgPrettyPrint)
              _lgUserIP
              _lgFields
              _lgKey
              _lgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LocationsGetResource)
                      r
                      u
