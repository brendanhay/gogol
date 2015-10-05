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
-- Module      : Network.Google.Resource.Directory.Groups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create Group
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryGroupsInsert@.
module Network.Google.Resource.Directory.Groups.Insert
    (
    -- * REST Resource
      GroupsInsertResource

    -- * Creating a Request
    , groupsInsert'
    , GroupsInsert'

    -- * Request Lenses
    , giQuotaUser
    , giPrettyPrint
    , giUserIP
    , giPayload
    , giKey
    , giOAuthToken
    , giFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryGroupsInsert@ which the
-- 'GroupsInsert'' request conforms to.
type GroupsInsertResource =
     "groups" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Group :> Post '[JSON] Group

-- | Create Group
--
-- /See:/ 'groupsInsert'' smart constructor.
data GroupsInsert' = GroupsInsert'
    { _giQuotaUser   :: !(Maybe Text)
    , _giPrettyPrint :: !Bool
    , _giUserIP      :: !(Maybe Text)
    , _giPayload     :: !Group
    , _giKey         :: !(Maybe AuthKey)
    , _giOAuthToken  :: !(Maybe OAuthToken)
    , _giFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giQuotaUser'
--
-- * 'giPrettyPrint'
--
-- * 'giUserIP'
--
-- * 'giPayload'
--
-- * 'giKey'
--
-- * 'giOAuthToken'
--
-- * 'giFields'
groupsInsert'
    :: Group -- ^ 'payload'
    -> GroupsInsert'
groupsInsert' pGiPayload_ =
    GroupsInsert'
    { _giQuotaUser = Nothing
    , _giPrettyPrint = True
    , _giUserIP = Nothing
    , _giPayload = pGiPayload_
    , _giKey = Nothing
    , _giOAuthToken = Nothing
    , _giFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
giQuotaUser :: Lens' GroupsInsert' (Maybe Text)
giQuotaUser
  = lens _giQuotaUser (\ s a -> s{_giQuotaUser = a})

-- | Returns response with indentations and line breaks.
giPrettyPrint :: Lens' GroupsInsert' Bool
giPrettyPrint
  = lens _giPrettyPrint
      (\ s a -> s{_giPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
giUserIP :: Lens' GroupsInsert' (Maybe Text)
giUserIP = lens _giUserIP (\ s a -> s{_giUserIP = a})

-- | Multipart request metadata.
giPayload :: Lens' GroupsInsert' Group
giPayload
  = lens _giPayload (\ s a -> s{_giPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
giKey :: Lens' GroupsInsert' (Maybe AuthKey)
giKey = lens _giKey (\ s a -> s{_giKey = a})

-- | OAuth 2.0 token for the current user.
giOAuthToken :: Lens' GroupsInsert' (Maybe OAuthToken)
giOAuthToken
  = lens _giOAuthToken (\ s a -> s{_giOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
giFields :: Lens' GroupsInsert' (Maybe Text)
giFields = lens _giFields (\ s a -> s{_giFields = a})

instance GoogleAuth GroupsInsert' where
        authKey = giKey . _Just
        authToken = giOAuthToken . _Just

instance GoogleRequest GroupsInsert' where
        type Rs GroupsInsert' = Group
        request = requestWithRoute defReq directoryURL
        requestWithRoute r u GroupsInsert'{..}
          = go _giQuotaUser (Just _giPrettyPrint) _giUserIP
              _giFields
              _giKey
              _giOAuthToken
              (Just AltJSON)
              _giPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupsInsertResource)
                      r
                      u
