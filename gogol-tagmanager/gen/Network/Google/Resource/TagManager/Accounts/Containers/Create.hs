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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersCreate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Create
    (
    -- * REST Resource
      AccountsContainersCreateResource

    -- * Creating a Request
    , accountsContainersCreate'
    , AccountsContainersCreate'

    -- * Request Lenses
    , accQuotaUser
    , accPrettyPrint
    , accUserIP
    , accPayload
    , accAccountId
    , accKey
    , accOAuthToken
    , accFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersCreate@ which the
-- 'AccountsContainersCreate'' request conforms to.
type AccountsContainersCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Container :> Post '[JSON] Container

-- | Creates a Container.
--
-- /See:/ 'accountsContainersCreate'' smart constructor.
data AccountsContainersCreate' = AccountsContainersCreate'
    { _accQuotaUser   :: !(Maybe Text)
    , _accPrettyPrint :: !Bool
    , _accUserIP      :: !(Maybe Text)
    , _accPayload     :: !Container
    , _accAccountId   :: !Text
    , _accKey         :: !(Maybe Key)
    , _accOAuthToken  :: !(Maybe OAuthToken)
    , _accFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accQuotaUser'
--
-- * 'accPrettyPrint'
--
-- * 'accUserIP'
--
-- * 'accPayload'
--
-- * 'accAccountId'
--
-- * 'accKey'
--
-- * 'accOAuthToken'
--
-- * 'accFields'
accountsContainersCreate'
    :: Container -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersCreate'
accountsContainersCreate' pAccPayload_ pAccAccountId_ =
    AccountsContainersCreate'
    { _accQuotaUser = Nothing
    , _accPrettyPrint = True
    , _accUserIP = Nothing
    , _accPayload = pAccPayload_
    , _accAccountId = pAccAccountId_
    , _accKey = Nothing
    , _accOAuthToken = Nothing
    , _accFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
accQuotaUser :: Lens' AccountsContainersCreate' (Maybe Text)
accQuotaUser
  = lens _accQuotaUser (\ s a -> s{_accQuotaUser = a})

-- | Returns response with indentations and line breaks.
accPrettyPrint :: Lens' AccountsContainersCreate' Bool
accPrettyPrint
  = lens _accPrettyPrint
      (\ s a -> s{_accPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
accUserIP :: Lens' AccountsContainersCreate' (Maybe Text)
accUserIP
  = lens _accUserIP (\ s a -> s{_accUserIP = a})

-- | Multipart request metadata.
accPayload :: Lens' AccountsContainersCreate' Container
accPayload
  = lens _accPayload (\ s a -> s{_accPayload = a})

-- | The GTM Account ID.
accAccountId :: Lens' AccountsContainersCreate' Text
accAccountId
  = lens _accAccountId (\ s a -> s{_accAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
accKey :: Lens' AccountsContainersCreate' (Maybe Key)
accKey = lens _accKey (\ s a -> s{_accKey = a})

-- | OAuth 2.0 token for the current user.
accOAuthToken :: Lens' AccountsContainersCreate' (Maybe OAuthToken)
accOAuthToken
  = lens _accOAuthToken
      (\ s a -> s{_accOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
accFields :: Lens' AccountsContainersCreate' (Maybe Text)
accFields
  = lens _accFields (\ s a -> s{_accFields = a})

instance GoogleAuth AccountsContainersCreate' where
        authKey = accKey . _Just
        authToken = accOAuthToken . _Just

instance GoogleRequest AccountsContainersCreate'
         where
        type Rs AccountsContainersCreate' = Container
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersCreate'{..}
          = go _accAccountId _accQuotaUser
              (Just _accPrettyPrint)
              _accUserIP
              _accFields
              _accKey
              _accOAuthToken
              (Just AltJSON)
              _accPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersCreateResource)
                      r
                      u
