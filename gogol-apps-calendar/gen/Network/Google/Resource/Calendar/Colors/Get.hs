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
-- Module      : Network.Google.Resource.Calendar.Colors.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the color definitions for calendars and events.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarColorsGet@.
module Network.Google.Resource.Calendar.Colors.Get
    (
    -- * REST Resource
      ColorsGetResource

    -- * Creating a Request
    , colorsGet'
    , ColorsGet'

    -- * Request Lenses
    , cgQuotaUser
    , cgPrettyPrint
    , cgUserIP
    , cgKey
    , cgOAuthToken
    , cgFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarColorsGet@ which the
-- 'ColorsGet'' request conforms to.
type ColorsGetResource =
     "colors" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Colors

-- | Returns the color definitions for calendars and events.
--
-- /See:/ 'colorsGet'' smart constructor.
data ColorsGet' = ColorsGet'
    { _cgQuotaUser   :: !(Maybe Text)
    , _cgPrettyPrint :: !Bool
    , _cgUserIP      :: !(Maybe Text)
    , _cgKey         :: !(Maybe Key)
    , _cgOAuthToken  :: !(Maybe OAuthToken)
    , _cgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ColorsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgUserIP'
--
-- * 'cgKey'
--
-- * 'cgOAuthToken'
--
-- * 'cgFields'
colorsGet'
    :: ColorsGet'
colorsGet' =
    ColorsGet'
    { _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgUserIP = Nothing
    , _cgKey = Nothing
    , _cgOAuthToken = Nothing
    , _cgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cgQuotaUser :: Lens' ColorsGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' ColorsGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cgUserIP :: Lens' ColorsGet' (Maybe Text)
cgUserIP = lens _cgUserIP (\ s a -> s{_cgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' ColorsGet' (Maybe Key)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | OAuth 2.0 token for the current user.
cgOAuthToken :: Lens' ColorsGet' (Maybe OAuthToken)
cgOAuthToken
  = lens _cgOAuthToken (\ s a -> s{_cgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' ColorsGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

instance GoogleAuth ColorsGet' where
        authKey = cgKey . _Just
        authToken = cgOAuthToken . _Just

instance GoogleRequest ColorsGet' where
        type Rs ColorsGet' = Colors
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u ColorsGet'{..}
          = go _cgQuotaUser (Just _cgPrettyPrint) _cgUserIP
              _cgKey
              _cgOAuthToken
              _cgFields
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy ColorsGetResource)
                      r
                      u
