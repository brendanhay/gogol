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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Tags.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersTagsDelete@.
module Network.Google.Resource.TagManager.Accounts.Containers.Tags.Delete
    (
    -- * REST Resource
      AccountsContainersTagsDeleteResource

    -- * Creating a Request
    , accountsContainersTagsDelete'
    , AccountsContainersTagsDelete'

    -- * Request Lenses
    , actdcQuotaUser
    , actdcPrettyPrint
    , actdcContainerId
    , actdcUserIP
    , actdcAccountId
    , actdcTagId
    , actdcKey
    , actdcOAuthToken
    , actdcFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersTagsDelete@ which the
-- 'AccountsContainersTagsDelete'' request conforms to.
type AccountsContainersTagsDeleteResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "tags" :>
               Capture "tagId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a GTM Tag.
--
-- /See:/ 'accountsContainersTagsDelete'' smart constructor.
data AccountsContainersTagsDelete' = AccountsContainersTagsDelete'
    { _actdcQuotaUser   :: !(Maybe Text)
    , _actdcPrettyPrint :: !Bool
    , _actdcContainerId :: !Text
    , _actdcUserIP      :: !(Maybe Text)
    , _actdcAccountId   :: !Text
    , _actdcTagId       :: !Text
    , _actdcKey         :: !(Maybe AuthKey)
    , _actdcOAuthToken  :: !(Maybe OAuthToken)
    , _actdcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTagsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actdcQuotaUser'
--
-- * 'actdcPrettyPrint'
--
-- * 'actdcContainerId'
--
-- * 'actdcUserIP'
--
-- * 'actdcAccountId'
--
-- * 'actdcTagId'
--
-- * 'actdcKey'
--
-- * 'actdcOAuthToken'
--
-- * 'actdcFields'
accountsContainersTagsDelete'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'tagId'
    -> AccountsContainersTagsDelete'
accountsContainersTagsDelete' pActdcContainerId_ pActdcAccountId_ pActdcTagId_ =
    AccountsContainersTagsDelete'
    { _actdcQuotaUser = Nothing
    , _actdcPrettyPrint = True
    , _actdcContainerId = pActdcContainerId_
    , _actdcUserIP = Nothing
    , _actdcAccountId = pActdcAccountId_
    , _actdcTagId = pActdcTagId_
    , _actdcKey = Nothing
    , _actdcOAuthToken = Nothing
    , _actdcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actdcQuotaUser :: Lens' AccountsContainersTagsDelete' (Maybe Text)
actdcQuotaUser
  = lens _actdcQuotaUser
      (\ s a -> s{_actdcQuotaUser = a})

-- | Returns response with indentations and line breaks.
actdcPrettyPrint :: Lens' AccountsContainersTagsDelete' Bool
actdcPrettyPrint
  = lens _actdcPrettyPrint
      (\ s a -> s{_actdcPrettyPrint = a})

-- | The GTM Container ID.
actdcContainerId :: Lens' AccountsContainersTagsDelete' Text
actdcContainerId
  = lens _actdcContainerId
      (\ s a -> s{_actdcContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actdcUserIP :: Lens' AccountsContainersTagsDelete' (Maybe Text)
actdcUserIP
  = lens _actdcUserIP (\ s a -> s{_actdcUserIP = a})

-- | The GTM Account ID.
actdcAccountId :: Lens' AccountsContainersTagsDelete' Text
actdcAccountId
  = lens _actdcAccountId
      (\ s a -> s{_actdcAccountId = a})

-- | The GTM Tag ID.
actdcTagId :: Lens' AccountsContainersTagsDelete' Text
actdcTagId
  = lens _actdcTagId (\ s a -> s{_actdcTagId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actdcKey :: Lens' AccountsContainersTagsDelete' (Maybe AuthKey)
actdcKey = lens _actdcKey (\ s a -> s{_actdcKey = a})

-- | OAuth 2.0 token for the current user.
actdcOAuthToken :: Lens' AccountsContainersTagsDelete' (Maybe OAuthToken)
actdcOAuthToken
  = lens _actdcOAuthToken
      (\ s a -> s{_actdcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
actdcFields :: Lens' AccountsContainersTagsDelete' (Maybe Text)
actdcFields
  = lens _actdcFields (\ s a -> s{_actdcFields = a})

instance GoogleAuth AccountsContainersTagsDelete'
         where
        _AuthKey = actdcKey . _Just
        _AuthToken = actdcOAuthToken . _Just

instance GoogleRequest AccountsContainersTagsDelete'
         where
        type Rs AccountsContainersTagsDelete' = ()
        request = requestWith tagManagerRequest
        requestWith rq AccountsContainersTagsDelete'{..}
          = go _actdcAccountId _actdcContainerId _actdcTagId
              _actdcQuotaUser
              (Just _actdcPrettyPrint)
              _actdcUserIP
              _actdcFields
              _actdcKey
              _actdcOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsContainersTagsDeleteResource)
                      rq
