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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a GTM Trigger.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersTriggersUpdate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Triggers.Update
    (
    -- * REST Resource
      AccountsContainersTriggersUpdateResource

    -- * Creating a Request
    , accountsContainersTriggersUpdate'
    , AccountsContainersTriggersUpdate'

    -- * Request Lenses
    , actuQuotaUser
    , actuPrettyPrint
    , actuContainerId
    , actuTriggerId
    , actuUserIP
    , actuFingerprint
    , actuPayload
    , actuAccountId
    , actuKey
    , actuOAuthToken
    , actuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersTriggersUpdate@ which the
-- 'AccountsContainersTriggersUpdate'' request conforms to.
type AccountsContainersTriggersUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "triggers" :>
               Capture "triggerId" Text :>
                 QueryParam "fingerprint" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Trigger :> Put '[JSON] Trigger

-- | Updates a GTM Trigger.
--
-- /See:/ 'accountsContainersTriggersUpdate'' smart constructor.
data AccountsContainersTriggersUpdate' = AccountsContainersTriggersUpdate'
    { _actuQuotaUser   :: !(Maybe Text)
    , _actuPrettyPrint :: !Bool
    , _actuContainerId :: !Text
    , _actuTriggerId   :: !Text
    , _actuUserIP      :: !(Maybe Text)
    , _actuFingerprint :: !(Maybe Text)
    , _actuPayload     :: !Trigger
    , _actuAccountId   :: !Text
    , _actuKey         :: !(Maybe AuthKey)
    , _actuOAuthToken  :: !(Maybe OAuthToken)
    , _actuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTriggersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actuQuotaUser'
--
-- * 'actuPrettyPrint'
--
-- * 'actuContainerId'
--
-- * 'actuTriggerId'
--
-- * 'actuUserIP'
--
-- * 'actuFingerprint'
--
-- * 'actuPayload'
--
-- * 'actuAccountId'
--
-- * 'actuKey'
--
-- * 'actuOAuthToken'
--
-- * 'actuFields'
accountsContainersTriggersUpdate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'triggerId'
    -> Trigger -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTriggersUpdate'
accountsContainersTriggersUpdate' pActuContainerId_ pActuTriggerId_ pActuPayload_ pActuAccountId_ =
    AccountsContainersTriggersUpdate'
    { _actuQuotaUser = Nothing
    , _actuPrettyPrint = True
    , _actuContainerId = pActuContainerId_
    , _actuTriggerId = pActuTriggerId_
    , _actuUserIP = Nothing
    , _actuFingerprint = Nothing
    , _actuPayload = pActuPayload_
    , _actuAccountId = pActuAccountId_
    , _actuKey = Nothing
    , _actuOAuthToken = Nothing
    , _actuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actuQuotaUser :: Lens' AccountsContainersTriggersUpdate' (Maybe Text)
actuQuotaUser
  = lens _actuQuotaUser
      (\ s a -> s{_actuQuotaUser = a})

-- | Returns response with indentations and line breaks.
actuPrettyPrint :: Lens' AccountsContainersTriggersUpdate' Bool
actuPrettyPrint
  = lens _actuPrettyPrint
      (\ s a -> s{_actuPrettyPrint = a})

-- | The GTM Container ID.
actuContainerId :: Lens' AccountsContainersTriggersUpdate' Text
actuContainerId
  = lens _actuContainerId
      (\ s a -> s{_actuContainerId = a})

-- | The GTM Trigger ID.
actuTriggerId :: Lens' AccountsContainersTriggersUpdate' Text
actuTriggerId
  = lens _actuTriggerId
      (\ s a -> s{_actuTriggerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actuUserIP :: Lens' AccountsContainersTriggersUpdate' (Maybe Text)
actuUserIP
  = lens _actuUserIP (\ s a -> s{_actuUserIP = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- trigger in storage.
actuFingerprint :: Lens' AccountsContainersTriggersUpdate' (Maybe Text)
actuFingerprint
  = lens _actuFingerprint
      (\ s a -> s{_actuFingerprint = a})

-- | Multipart request metadata.
actuPayload :: Lens' AccountsContainersTriggersUpdate' Trigger
actuPayload
  = lens _actuPayload (\ s a -> s{_actuPayload = a})

-- | The GTM Account ID.
actuAccountId :: Lens' AccountsContainersTriggersUpdate' Text
actuAccountId
  = lens _actuAccountId
      (\ s a -> s{_actuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actuKey :: Lens' AccountsContainersTriggersUpdate' (Maybe AuthKey)
actuKey = lens _actuKey (\ s a -> s{_actuKey = a})

-- | OAuth 2.0 token for the current user.
actuOAuthToken :: Lens' AccountsContainersTriggersUpdate' (Maybe OAuthToken)
actuOAuthToken
  = lens _actuOAuthToken
      (\ s a -> s{_actuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
actuFields :: Lens' AccountsContainersTriggersUpdate' (Maybe Text)
actuFields
  = lens _actuFields (\ s a -> s{_actuFields = a})

instance GoogleAuth AccountsContainersTriggersUpdate'
         where
        _AuthKey = actuKey . _Just
        _AuthToken = actuOAuthToken . _Just

instance GoogleRequest
         AccountsContainersTriggersUpdate' where
        type Rs AccountsContainersTriggersUpdate' = Trigger
        request = requestWith tagManagerRequest
        requestWith rq AccountsContainersTriggersUpdate'{..}
          = go _actuAccountId _actuContainerId _actuTriggerId
              _actuFingerprint
              _actuQuotaUser
              (Just _actuPrettyPrint)
              _actuUserIP
              _actuFields
              _actuKey
              _actuOAuthToken
              (Just AltJSON)
              _actuPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy AccountsContainersTriggersUpdateResource)
                      rq
