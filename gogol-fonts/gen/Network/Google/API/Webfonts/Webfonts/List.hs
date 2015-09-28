{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Webfonts.Webfonts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of fonts currently served by the Google Fonts
-- Developer API
--
-- /See:/ <https://developers.google.com/fonts/docs/developer_api Google Fonts Developer API Reference> for @webfonts.webfonts.list@.
module Network.Google.API.Webfonts.Webfonts.List
    (
    -- * REST Resource
      WebfontsListAPI

    -- * Creating a Request
    , webfontsList'
    , WebfontsList'

    -- * Request Lenses
    , wlQuotaUser
    , wlPrettyPrint
    , wlUserIp
    , wlKey
    , wlSort
    , wlOauthToken
    , wlFields
    , wlAlt
    ) where

import           Network.Google.Fonts.Types
import           Network.Google.Prelude

-- | A resource alias for webfonts.webfonts.list which the
-- 'WebfontsList'' request conforms to.
type WebfontsListAPI =
     "webfonts" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "sort" WebfontsList'Sort :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] WebfontList

-- | Retrieves the list of fonts currently served by the Google Fonts
-- Developer API
--
-- /See:/ 'webfontsList'' smart constructor.
data WebfontsList' = WebfontsList'
    { _wlQuotaUser   :: !(Maybe Text)
    , _wlPrettyPrint :: !Bool
    , _wlUserIp      :: !(Maybe Text)
    , _wlKey         :: !(Maybe Text)
    , _wlSort        :: !(Maybe WebfontsList'Sort)
    , _wlOauthToken  :: !(Maybe Text)
    , _wlFields      :: !(Maybe Text)
    , _wlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebfontsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlQuotaUser'
--
-- * 'wlPrettyPrint'
--
-- * 'wlUserIp'
--
-- * 'wlKey'
--
-- * 'wlSort'
--
-- * 'wlOauthToken'
--
-- * 'wlFields'
--
-- * 'wlAlt'
webfontsList'
    :: WebfontsList'
webfontsList' =
    WebfontsList'
    { _wlQuotaUser = Nothing
    , _wlPrettyPrint = True
    , _wlUserIp = Nothing
    , _wlKey = Nothing
    , _wlSort = Nothing
    , _wlOauthToken = Nothing
    , _wlFields = Nothing
    , _wlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
wlQuotaUser :: Lens' WebfontsList' (Maybe Text)
wlQuotaUser
  = lens _wlQuotaUser (\ s a -> s{_wlQuotaUser = a})

-- | Returns response with indentations and line breaks.
wlPrettyPrint :: Lens' WebfontsList' Bool
wlPrettyPrint
  = lens _wlPrettyPrint
      (\ s a -> s{_wlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
wlUserIp :: Lens' WebfontsList' (Maybe Text)
wlUserIp = lens _wlUserIp (\ s a -> s{_wlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wlKey :: Lens' WebfontsList' (Maybe Text)
wlKey = lens _wlKey (\ s a -> s{_wlKey = a})

-- | Enables sorting of the list
wlSort :: Lens' WebfontsList' (Maybe WebfontsList'Sort)
wlSort = lens _wlSort (\ s a -> s{_wlSort = a})

-- | OAuth 2.0 token for the current user.
wlOauthToken :: Lens' WebfontsList' (Maybe Text)
wlOauthToken
  = lens _wlOauthToken (\ s a -> s{_wlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
wlFields :: Lens' WebfontsList' (Maybe Text)
wlFields = lens _wlFields (\ s a -> s{_wlFields = a})

-- | Data format for the response.
wlAlt :: Lens' WebfontsList' Alt
wlAlt = lens _wlAlt (\ s a -> s{_wlAlt = a})

instance GoogleRequest WebfontsList' where
        type Rs WebfontsList' = WebfontList
        request = requestWithRoute defReq fontsURL
        requestWithRoute r u WebfontsList'{..}
          = go _wlQuotaUser (Just _wlPrettyPrint) _wlUserIp
              _wlKey
              _wlSort
              _wlOauthToken
              _wlFields
              (Just _wlAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy WebfontsListAPI) r
                      u
