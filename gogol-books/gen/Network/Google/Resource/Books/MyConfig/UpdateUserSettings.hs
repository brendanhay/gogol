{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.MyConfig.UpdateUserSettings
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the settings for the user. If a sub-object is specified, it will
-- overwrite the existing sub-object stored in the server. Unspecified
-- sub-objects will retain the existing value.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyConfigUpdateUserSettings@.
module Network.Google.Resource.Books.MyConfig.UpdateUserSettings
    (
    -- * REST Resource
      MyConfigUpdateUserSettingsResource

    -- * Creating a Request
    , myConfigUpdateUserSettings'
    , MyConfigUpdateUserSettings'

    -- * Request Lenses
    , mcuusQuotaUser
    , mcuusPrettyPrint
    , mcuusUserIP
    , mcuusPayload
    , mcuusKey
    , mcuusOAuthToken
    , mcuusFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyConfigUpdateUserSettings@ which the
-- 'MyConfigUpdateUserSettings'' request conforms to.
type MyConfigUpdateUserSettingsResource =
     "myconfig" :>
       "updateUserSettings" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Usersettings :>
                         Post '[JSON] Usersettings

-- | Sets the settings for the user. If a sub-object is specified, it will
-- overwrite the existing sub-object stored in the server. Unspecified
-- sub-objects will retain the existing value.
--
-- /See:/ 'myConfigUpdateUserSettings'' smart constructor.
data MyConfigUpdateUserSettings' = MyConfigUpdateUserSettings'
    { _mcuusQuotaUser   :: !(Maybe Text)
    , _mcuusPrettyPrint :: !Bool
    , _mcuusUserIP      :: !(Maybe Text)
    , _mcuusPayload     :: !Usersettings
    , _mcuusKey         :: !(Maybe Key)
    , _mcuusOAuthToken  :: !(Maybe OAuthToken)
    , _mcuusFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyConfigUpdateUserSettings'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcuusQuotaUser'
--
-- * 'mcuusPrettyPrint'
--
-- * 'mcuusUserIP'
--
-- * 'mcuusPayload'
--
-- * 'mcuusKey'
--
-- * 'mcuusOAuthToken'
--
-- * 'mcuusFields'
myConfigUpdateUserSettings'
    :: Usersettings -- ^ 'payload'
    -> MyConfigUpdateUserSettings'
myConfigUpdateUserSettings' pMcuusPayload_ =
    MyConfigUpdateUserSettings'
    { _mcuusQuotaUser = Nothing
    , _mcuusPrettyPrint = True
    , _mcuusUserIP = Nothing
    , _mcuusPayload = pMcuusPayload_
    , _mcuusKey = Nothing
    , _mcuusOAuthToken = Nothing
    , _mcuusFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcuusQuotaUser :: Lens' MyConfigUpdateUserSettings' (Maybe Text)
mcuusQuotaUser
  = lens _mcuusQuotaUser
      (\ s a -> s{_mcuusQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcuusPrettyPrint :: Lens' MyConfigUpdateUserSettings' Bool
mcuusPrettyPrint
  = lens _mcuusPrettyPrint
      (\ s a -> s{_mcuusPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcuusUserIP :: Lens' MyConfigUpdateUserSettings' (Maybe Text)
mcuusUserIP
  = lens _mcuusUserIP (\ s a -> s{_mcuusUserIP = a})

-- | Multipart request metadata.
mcuusPayload :: Lens' MyConfigUpdateUserSettings' Usersettings
mcuusPayload
  = lens _mcuusPayload (\ s a -> s{_mcuusPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcuusKey :: Lens' MyConfigUpdateUserSettings' (Maybe Key)
mcuusKey = lens _mcuusKey (\ s a -> s{_mcuusKey = a})

-- | OAuth 2.0 token for the current user.
mcuusOAuthToken :: Lens' MyConfigUpdateUserSettings' (Maybe OAuthToken)
mcuusOAuthToken
  = lens _mcuusOAuthToken
      (\ s a -> s{_mcuusOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mcuusFields :: Lens' MyConfigUpdateUserSettings' (Maybe Text)
mcuusFields
  = lens _mcuusFields (\ s a -> s{_mcuusFields = a})

instance GoogleAuth MyConfigUpdateUserSettings' where
        authKey = mcuusKey . _Just
        authToken = mcuusOAuthToken . _Just

instance GoogleRequest MyConfigUpdateUserSettings'
         where
        type Rs MyConfigUpdateUserSettings' = Usersettings
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MyConfigUpdateUserSettings'{..}
          = go _mcuusQuotaUser (Just _mcuusPrettyPrint)
              _mcuusUserIP
              _mcuusFields
              _mcuusKey
              _mcuusOAuthToken
              (Just AltJSON)
              _mcuusPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MyConfigUpdateUserSettingsResource)
                      r
                      u
