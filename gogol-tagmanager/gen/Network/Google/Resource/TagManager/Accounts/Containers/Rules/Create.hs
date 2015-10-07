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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Rules.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a GTM Rule.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersRulesCreate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Rules.Create
    (
    -- * REST Resource
      AccountsContainersRulesCreateResource

    -- * Creating a Request
    , accountsContainersRulesCreate'
    , AccountsContainersRulesCreate'

    -- * Request Lenses
    , acrcQuotaUser
    , acrcPrettyPrint
    , acrcContainerId
    , acrcUserIP
    , acrcPayload
    , acrcAccountId
    , acrcKey
    , acrcOAuthToken
    , acrcFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersRulesCreate@ method which the
-- 'AccountsContainersRulesCreate'' request conforms to.
type AccountsContainersRulesCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "rules" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Rule :> Post '[JSON] Rule

-- | Creates a GTM Rule.
--
-- /See:/ 'accountsContainersRulesCreate'' smart constructor.
data AccountsContainersRulesCreate' = AccountsContainersRulesCreate'
    { _acrcQuotaUser   :: !(Maybe Text)
    , _acrcPrettyPrint :: !Bool
    , _acrcContainerId :: !Text
    , _acrcUserIP      :: !(Maybe Text)
    , _acrcPayload     :: !Rule
    , _acrcAccountId   :: !Text
    , _acrcKey         :: !(Maybe AuthKey)
    , _acrcOAuthToken  :: !(Maybe OAuthToken)
    , _acrcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersRulesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acrcQuotaUser'
--
-- * 'acrcPrettyPrint'
--
-- * 'acrcContainerId'
--
-- * 'acrcUserIP'
--
-- * 'acrcPayload'
--
-- * 'acrcAccountId'
--
-- * 'acrcKey'
--
-- * 'acrcOAuthToken'
--
-- * 'acrcFields'
accountsContainersRulesCreate'
    :: Text -- ^ 'containerId'
    -> Rule -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersRulesCreate'
accountsContainersRulesCreate' pAcrcContainerId_ pAcrcPayload_ pAcrcAccountId_ =
    AccountsContainersRulesCreate'
    { _acrcQuotaUser = Nothing
    , _acrcPrettyPrint = True
    , _acrcContainerId = pAcrcContainerId_
    , _acrcUserIP = Nothing
    , _acrcPayload = pAcrcPayload_
    , _acrcAccountId = pAcrcAccountId_
    , _acrcKey = Nothing
    , _acrcOAuthToken = Nothing
    , _acrcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acrcQuotaUser :: Lens' AccountsContainersRulesCreate' (Maybe Text)
acrcQuotaUser
  = lens _acrcQuotaUser
      (\ s a -> s{_acrcQuotaUser = a})

-- | Returns response with indentations and line breaks.
acrcPrettyPrint :: Lens' AccountsContainersRulesCreate' Bool
acrcPrettyPrint
  = lens _acrcPrettyPrint
      (\ s a -> s{_acrcPrettyPrint = a})

-- | The GTM Container ID.
acrcContainerId :: Lens' AccountsContainersRulesCreate' Text
acrcContainerId
  = lens _acrcContainerId
      (\ s a -> s{_acrcContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acrcUserIP :: Lens' AccountsContainersRulesCreate' (Maybe Text)
acrcUserIP
  = lens _acrcUserIP (\ s a -> s{_acrcUserIP = a})

-- | Multipart request metadata.
acrcPayload :: Lens' AccountsContainersRulesCreate' Rule
acrcPayload
  = lens _acrcPayload (\ s a -> s{_acrcPayload = a})

-- | The GTM Account ID.
acrcAccountId :: Lens' AccountsContainersRulesCreate' Text
acrcAccountId
  = lens _acrcAccountId
      (\ s a -> s{_acrcAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acrcKey :: Lens' AccountsContainersRulesCreate' (Maybe AuthKey)
acrcKey = lens _acrcKey (\ s a -> s{_acrcKey = a})

-- | OAuth 2.0 token for the current user.
acrcOAuthToken :: Lens' AccountsContainersRulesCreate' (Maybe OAuthToken)
acrcOAuthToken
  = lens _acrcOAuthToken
      (\ s a -> s{_acrcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acrcFields :: Lens' AccountsContainersRulesCreate' (Maybe Text)
acrcFields
  = lens _acrcFields (\ s a -> s{_acrcFields = a})

instance GoogleAuth AccountsContainersRulesCreate'
         where
        _AuthKey = acrcKey . _Just
        _AuthToken = acrcOAuthToken . _Just

instance GoogleRequest AccountsContainersRulesCreate'
         where
        type Rs AccountsContainersRulesCreate' = Rule
        request = requestWith tagManagerRequest
        requestWith rq AccountsContainersRulesCreate'{..}
          = go _acrcAccountId _acrcContainerId _acrcQuotaUser
              (Just _acrcPrettyPrint)
              _acrcUserIP
              _acrcFields
              _acrcKey
              _acrcOAuthToken
              (Just AltJSON)
              _acrcPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy AccountsContainersRulesCreateResource)
                      rq
