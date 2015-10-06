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
-- Module      : Network.Google.Resource.Webfonts.Webfonts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of fonts currently served by the Google Fonts
-- Developer API
--
-- /See:/ <https://developers.google.com/fonts/docs/developer_api Google Fonts Developer API Reference> for @WebfontsWebfontsList@.
module Network.Google.Resource.Webfonts.Webfonts.List
    (
    -- * REST Resource
      WebfontsListResource

    -- * Creating a Request
    , webfontsList'
    , WebfontsList'

    -- * Request Lenses
    , wlQuotaUser
    , wlPrettyPrint
    , wlUserIP
    , wlKey
    , wlSort
    , wlOAuthToken
    , wlFields
    ) where

import           Network.Google.Fonts.Types
import           Network.Google.Prelude

-- | A resource alias for @WebfontsWebfontsList@ which the
-- 'WebfontsList'' request conforms to.
type WebfontsListResource =
     "webfonts" :>
       QueryParam "sort" WebfontsListSort :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] WebfontList

-- | Retrieves the list of fonts currently served by the Google Fonts
-- Developer API
--
-- /See:/ 'webfontsList'' smart constructor.
data WebfontsList' = WebfontsList'
    { _wlQuotaUser   :: !(Maybe Text)
    , _wlPrettyPrint :: !Bool
    , _wlUserIP      :: !(Maybe Text)
    , _wlKey         :: !(Maybe AuthKey)
    , _wlSort        :: !(Maybe WebfontsListSort)
    , _wlOAuthToken  :: !(Maybe OAuthToken)
    , _wlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WebfontsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlQuotaUser'
--
-- * 'wlPrettyPrint'
--
-- * 'wlUserIP'
--
-- * 'wlKey'
--
-- * 'wlSort'
--
-- * 'wlOAuthToken'
--
-- * 'wlFields'
webfontsList'
    :: WebfontsList'
webfontsList' =
    WebfontsList'
    { _wlQuotaUser = Nothing
    , _wlPrettyPrint = True
    , _wlUserIP = Nothing
    , _wlKey = Nothing
    , _wlSort = Nothing
    , _wlOAuthToken = Nothing
    , _wlFields = Nothing
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
wlUserIP :: Lens' WebfontsList' (Maybe Text)
wlUserIP = lens _wlUserIP (\ s a -> s{_wlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wlKey :: Lens' WebfontsList' (Maybe AuthKey)
wlKey = lens _wlKey (\ s a -> s{_wlKey = a})

-- | Enables sorting of the list
wlSort :: Lens' WebfontsList' (Maybe WebfontsListSort)
wlSort = lens _wlSort (\ s a -> s{_wlSort = a})

-- | OAuth 2.0 token for the current user.
wlOAuthToken :: Lens' WebfontsList' (Maybe OAuthToken)
wlOAuthToken
  = lens _wlOAuthToken (\ s a -> s{_wlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
wlFields :: Lens' WebfontsList' (Maybe Text)
wlFields = lens _wlFields (\ s a -> s{_wlFields = a})

instance GoogleAuth WebfontsList' where
        _AuthKey = wlKey . _Just
        _AuthToken = wlOAuthToken . _Just

instance GoogleRequest WebfontsList' where
        type Rs WebfontsList' = WebfontList
        request = requestWith fontsRequest
        requestWith rq WebfontsList'{..}
          = go _wlSort _wlQuotaUser (Just _wlPrettyPrint)
              _wlUserIP
              _wlFields
              _wlKey
              _wlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy WebfontsListResource)
                      rq
