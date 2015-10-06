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
-- Module      : Network.Google.Resource.Books.MyConfig.GetUserSettings
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the current settings for the user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyConfigGetUserSettings@.
module Network.Google.Resource.Books.MyConfig.GetUserSettings
    (
    -- * REST Resource
      MyConfigGetUserSettingsResource

    -- * Creating a Request
    , myConfigGetUserSettings'
    , MyConfigGetUserSettings'

    -- * Request Lenses
    , mcgusQuotaUser
    , mcgusPrettyPrint
    , mcgusUserIP
    , mcgusKey
    , mcgusOAuthToken
    , mcgusFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyConfigGetUserSettings@ which the
-- 'MyConfigGetUserSettings'' request conforms to.
type MyConfigGetUserSettingsResource =
     "myconfig" :>
       "getUserSettings" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Usersettings

-- | Gets the current settings for the user.
--
-- /See:/ 'myConfigGetUserSettings'' smart constructor.
data MyConfigGetUserSettings' = MyConfigGetUserSettings'
    { _mcgusQuotaUser   :: !(Maybe Text)
    , _mcgusPrettyPrint :: !Bool
    , _mcgusUserIP      :: !(Maybe Text)
    , _mcgusKey         :: !(Maybe AuthKey)
    , _mcgusOAuthToken  :: !(Maybe OAuthToken)
    , _mcgusFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyConfigGetUserSettings'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcgusQuotaUser'
--
-- * 'mcgusPrettyPrint'
--
-- * 'mcgusUserIP'
--
-- * 'mcgusKey'
--
-- * 'mcgusOAuthToken'
--
-- * 'mcgusFields'
myConfigGetUserSettings'
    :: MyConfigGetUserSettings'
myConfigGetUserSettings' =
    MyConfigGetUserSettings'
    { _mcgusQuotaUser = Nothing
    , _mcgusPrettyPrint = True
    , _mcgusUserIP = Nothing
    , _mcgusKey = Nothing
    , _mcgusOAuthToken = Nothing
    , _mcgusFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcgusQuotaUser :: Lens' MyConfigGetUserSettings' (Maybe Text)
mcgusQuotaUser
  = lens _mcgusQuotaUser
      (\ s a -> s{_mcgusQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcgusPrettyPrint :: Lens' MyConfigGetUserSettings' Bool
mcgusPrettyPrint
  = lens _mcgusPrettyPrint
      (\ s a -> s{_mcgusPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcgusUserIP :: Lens' MyConfigGetUserSettings' (Maybe Text)
mcgusUserIP
  = lens _mcgusUserIP (\ s a -> s{_mcgusUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcgusKey :: Lens' MyConfigGetUserSettings' (Maybe AuthKey)
mcgusKey = lens _mcgusKey (\ s a -> s{_mcgusKey = a})

-- | OAuth 2.0 token for the current user.
mcgusOAuthToken :: Lens' MyConfigGetUserSettings' (Maybe OAuthToken)
mcgusOAuthToken
  = lens _mcgusOAuthToken
      (\ s a -> s{_mcgusOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mcgusFields :: Lens' MyConfigGetUserSettings' (Maybe Text)
mcgusFields
  = lens _mcgusFields (\ s a -> s{_mcgusFields = a})

instance GoogleAuth MyConfigGetUserSettings' where
        authKey = mcgusKey . _Just
        authToken = mcgusOAuthToken . _Just

instance GoogleRequest MyConfigGetUserSettings' where
        type Rs MyConfigGetUserSettings' = Usersettings
        request = requestWith booksRequest
        requestWith rq MyConfigGetUserSettings'{..}
          = go _mcgusQuotaUser (Just _mcgusPrettyPrint)
              _mcgusUserIP
              _mcgusFields
              _mcgusKey
              _mcgusOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy MyConfigGetUserSettingsResource)
                      rq
