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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Macros.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a GTM Macro.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersMacrosDelete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Macros.Delete
    (
    -- * REST Resource
      AccountsContainersMacrosDeleteResource

    -- * Creating a Request
    , accountsContainersMacrosDelete'
    , AccountsContainersMacrosDelete'

    -- * Request Lenses
    , acmdQuotaUser
    , acmdPrettyPrint
    , acmdContainerId
    , acmdUserIP
    , acmdAccountId
    , acmdKey
    , acmdMacroId
    , acmdOAuthToken
    , acmdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersMacrosDelete@ which the
-- 'AccountsContainersMacrosDelete'' request conforms to.
type AccountsContainersMacrosDeleteResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "macros" :>
               Capture "macroId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Macro.
--
-- /See:/ 'accountsContainersMacrosDelete'' smart constructor.
data AccountsContainersMacrosDelete' = AccountsContainersMacrosDelete'
    { _acmdQuotaUser   :: !(Maybe Text)
    , _acmdPrettyPrint :: !Bool
    , _acmdContainerId :: !Text
    , _acmdUserIP      :: !(Maybe Text)
    , _acmdAccountId   :: !Text
    , _acmdKey         :: !(Maybe AuthKey)
    , _acmdMacroId     :: !Text
    , _acmdOAuthToken  :: !(Maybe OAuthToken)
    , _acmdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersMacrosDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acmdQuotaUser'
--
-- * 'acmdPrettyPrint'
--
-- * 'acmdContainerId'
--
-- * 'acmdUserIP'
--
-- * 'acmdAccountId'
--
-- * 'acmdKey'
--
-- * 'acmdMacroId'
--
-- * 'acmdOAuthToken'
--
-- * 'acmdFields'
accountsContainersMacrosDelete'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'macroId'
    -> AccountsContainersMacrosDelete'
accountsContainersMacrosDelete' pAcmdContainerId_ pAcmdAccountId_ pAcmdMacroId_ =
    AccountsContainersMacrosDelete'
    { _acmdQuotaUser = Nothing
    , _acmdPrettyPrint = True
    , _acmdContainerId = pAcmdContainerId_
    , _acmdUserIP = Nothing
    , _acmdAccountId = pAcmdAccountId_
    , _acmdKey = Nothing
    , _acmdMacroId = pAcmdMacroId_
    , _acmdOAuthToken = Nothing
    , _acmdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acmdQuotaUser :: Lens' AccountsContainersMacrosDelete' (Maybe Text)
acmdQuotaUser
  = lens _acmdQuotaUser
      (\ s a -> s{_acmdQuotaUser = a})

-- | Returns response with indentations and line breaks.
acmdPrettyPrint :: Lens' AccountsContainersMacrosDelete' Bool
acmdPrettyPrint
  = lens _acmdPrettyPrint
      (\ s a -> s{_acmdPrettyPrint = a})

-- | The GTM Container ID.
acmdContainerId :: Lens' AccountsContainersMacrosDelete' Text
acmdContainerId
  = lens _acmdContainerId
      (\ s a -> s{_acmdContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acmdUserIP :: Lens' AccountsContainersMacrosDelete' (Maybe Text)
acmdUserIP
  = lens _acmdUserIP (\ s a -> s{_acmdUserIP = a})

-- | The GTM Account ID.
acmdAccountId :: Lens' AccountsContainersMacrosDelete' Text
acmdAccountId
  = lens _acmdAccountId
      (\ s a -> s{_acmdAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acmdKey :: Lens' AccountsContainersMacrosDelete' (Maybe AuthKey)
acmdKey = lens _acmdKey (\ s a -> s{_acmdKey = a})

-- | The GTM Macro ID.
acmdMacroId :: Lens' AccountsContainersMacrosDelete' Text
acmdMacroId
  = lens _acmdMacroId (\ s a -> s{_acmdMacroId = a})

-- | OAuth 2.0 token for the current user.
acmdOAuthToken :: Lens' AccountsContainersMacrosDelete' (Maybe OAuthToken)
acmdOAuthToken
  = lens _acmdOAuthToken
      (\ s a -> s{_acmdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acmdFields :: Lens' AccountsContainersMacrosDelete' (Maybe Text)
acmdFields
  = lens _acmdFields (\ s a -> s{_acmdFields = a})

instance GoogleAuth AccountsContainersMacrosDelete'
         where
        authKey = acmdKey . _Just
        authToken = acmdOAuthToken . _Just

instance GoogleRequest
         AccountsContainersMacrosDelete' where
        type Rs AccountsContainersMacrosDelete' = ()
        request = requestWith tagManagerRequest
        requestWith rq AccountsContainersMacrosDelete'{..}
          = go _acmdAccountId _acmdContainerId _acmdMacroId
              _acmdQuotaUser
              (Just _acmdPrettyPrint)
              _acmdUserIP
              _acmdFields
              _acmdKey
              _acmdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy AccountsContainersMacrosDeleteResource)
                      rq
