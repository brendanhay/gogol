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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersDelete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Delete
    (
    -- * REST Resource
      AccountsContainersDeleteResource

    -- * Creating a Request
    , accountsContainersDelete'
    , AccountsContainersDelete'

    -- * Request Lenses
    , acdQuotaUser
    , acdPrettyPrint
    , acdContainerId
    , acdUserIP
    , acdAccountId
    , acdKey
    , acdOAuthToken
    , acdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersDelete@ which the
-- 'AccountsContainersDelete'' request conforms to.
type AccountsContainersDeleteResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a Container.
--
-- /See:/ 'accountsContainersDelete'' smart constructor.
data AccountsContainersDelete' = AccountsContainersDelete'
    { _acdQuotaUser   :: !(Maybe Text)
    , _acdPrettyPrint :: !Bool
    , _acdContainerId :: !Text
    , _acdUserIP      :: !(Maybe Text)
    , _acdAccountId   :: !Text
    , _acdKey         :: !(Maybe AuthKey)
    , _acdOAuthToken  :: !(Maybe OAuthToken)
    , _acdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdQuotaUser'
--
-- * 'acdPrettyPrint'
--
-- * 'acdContainerId'
--
-- * 'acdUserIP'
--
-- * 'acdAccountId'
--
-- * 'acdKey'
--
-- * 'acdOAuthToken'
--
-- * 'acdFields'
accountsContainersDelete'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> AccountsContainersDelete'
accountsContainersDelete' pAcdContainerId_ pAcdAccountId_ =
    AccountsContainersDelete'
    { _acdQuotaUser = Nothing
    , _acdPrettyPrint = True
    , _acdContainerId = pAcdContainerId_
    , _acdUserIP = Nothing
    , _acdAccountId = pAcdAccountId_
    , _acdKey = Nothing
    , _acdOAuthToken = Nothing
    , _acdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acdQuotaUser :: Lens' AccountsContainersDelete' (Maybe Text)
acdQuotaUser
  = lens _acdQuotaUser (\ s a -> s{_acdQuotaUser = a})

-- | Returns response with indentations and line breaks.
acdPrettyPrint :: Lens' AccountsContainersDelete' Bool
acdPrettyPrint
  = lens _acdPrettyPrint
      (\ s a -> s{_acdPrettyPrint = a})

-- | The GTM Container ID.
acdContainerId :: Lens' AccountsContainersDelete' Text
acdContainerId
  = lens _acdContainerId
      (\ s a -> s{_acdContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acdUserIP :: Lens' AccountsContainersDelete' (Maybe Text)
acdUserIP
  = lens _acdUserIP (\ s a -> s{_acdUserIP = a})

-- | The GTM Account ID.
acdAccountId :: Lens' AccountsContainersDelete' Text
acdAccountId
  = lens _acdAccountId (\ s a -> s{_acdAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acdKey :: Lens' AccountsContainersDelete' (Maybe AuthKey)
acdKey = lens _acdKey (\ s a -> s{_acdKey = a})

-- | OAuth 2.0 token for the current user.
acdOAuthToken :: Lens' AccountsContainersDelete' (Maybe OAuthToken)
acdOAuthToken
  = lens _acdOAuthToken
      (\ s a -> s{_acdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acdFields :: Lens' AccountsContainersDelete' (Maybe Text)
acdFields
  = lens _acdFields (\ s a -> s{_acdFields = a})

instance GoogleAuth AccountsContainersDelete' where
        authKey = acdKey . _Just
        authToken = acdOAuthToken . _Just

instance GoogleRequest AccountsContainersDelete'
         where
        type Rs AccountsContainersDelete' = ()
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersDelete'{..}
          = go _acdAccountId _acdContainerId _acdQuotaUser
              (Just _acdPrettyPrint)
              _acdUserIP
              _acdFields
              _acdKey
              _acdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersDeleteResource)
                      r
                      u
