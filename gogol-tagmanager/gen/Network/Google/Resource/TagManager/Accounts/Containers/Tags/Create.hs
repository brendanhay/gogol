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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Tags.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersTagsCreate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Tags.Create
    (
    -- * REST Resource
      AccountsContainersTagsCreateResource

    -- * Creating a Request
    , accountsContainersTagsCreate'
    , AccountsContainersTagsCreate'

    -- * Request Lenses
    , actcQuotaUser
    , actcPrettyPrint
    , actcContainerId
    , actcUserIP
    , actcPayload
    , actcAccountId
    , actcKey
    , actcOAuthToken
    , actcFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersTagsCreate@ method which the
-- 'AccountsContainersTagsCreate'' request conforms to.
type AccountsContainersTagsCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             "tags" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Tag :> Post '[JSON] Tag

-- | Creates a GTM Tag.
--
-- /See:/ 'accountsContainersTagsCreate'' smart constructor.
data AccountsContainersTagsCreate' = AccountsContainersTagsCreate'
    { _actcQuotaUser   :: !(Maybe Text)
    , _actcPrettyPrint :: !Bool
    , _actcContainerId :: !Text
    , _actcUserIP      :: !(Maybe Text)
    , _actcPayload     :: !Tag
    , _actcAccountId   :: !Text
    , _actcKey         :: !(Maybe AuthKey)
    , _actcOAuthToken  :: !(Maybe OAuthToken)
    , _actcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersTagsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actcQuotaUser'
--
-- * 'actcPrettyPrint'
--
-- * 'actcContainerId'
--
-- * 'actcUserIP'
--
-- * 'actcPayload'
--
-- * 'actcAccountId'
--
-- * 'actcKey'
--
-- * 'actcOAuthToken'
--
-- * 'actcFields'
accountsContainersTagsCreate'
    :: Text -- ^ 'containerId'
    -> Tag -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> AccountsContainersTagsCreate'
accountsContainersTagsCreate' pActcContainerId_ pActcPayload_ pActcAccountId_ =
    AccountsContainersTagsCreate'
    { _actcQuotaUser = Nothing
    , _actcPrettyPrint = True
    , _actcContainerId = pActcContainerId_
    , _actcUserIP = Nothing
    , _actcPayload = pActcPayload_
    , _actcAccountId = pActcAccountId_
    , _actcKey = Nothing
    , _actcOAuthToken = Nothing
    , _actcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
actcQuotaUser :: Lens' AccountsContainersTagsCreate' (Maybe Text)
actcQuotaUser
  = lens _actcQuotaUser
      (\ s a -> s{_actcQuotaUser = a})

-- | Returns response with indentations and line breaks.
actcPrettyPrint :: Lens' AccountsContainersTagsCreate' Bool
actcPrettyPrint
  = lens _actcPrettyPrint
      (\ s a -> s{_actcPrettyPrint = a})

-- | The GTM Container ID.
actcContainerId :: Lens' AccountsContainersTagsCreate' Text
actcContainerId
  = lens _actcContainerId
      (\ s a -> s{_actcContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
actcUserIP :: Lens' AccountsContainersTagsCreate' (Maybe Text)
actcUserIP
  = lens _actcUserIP (\ s a -> s{_actcUserIP = a})

-- | Multipart request metadata.
actcPayload :: Lens' AccountsContainersTagsCreate' Tag
actcPayload
  = lens _actcPayload (\ s a -> s{_actcPayload = a})

-- | The GTM Account ID.
actcAccountId :: Lens' AccountsContainersTagsCreate' Text
actcAccountId
  = lens _actcAccountId
      (\ s a -> s{_actcAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
actcKey :: Lens' AccountsContainersTagsCreate' (Maybe AuthKey)
actcKey = lens _actcKey (\ s a -> s{_actcKey = a})

-- | OAuth 2.0 token for the current user.
actcOAuthToken :: Lens' AccountsContainersTagsCreate' (Maybe OAuthToken)
actcOAuthToken
  = lens _actcOAuthToken
      (\ s a -> s{_actcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
actcFields :: Lens' AccountsContainersTagsCreate' (Maybe Text)
actcFields
  = lens _actcFields (\ s a -> s{_actcFields = a})

instance GoogleAuth AccountsContainersTagsCreate'
         where
        _AuthKey = actcKey . _Just
        _AuthToken = actcOAuthToken . _Just

instance GoogleRequest AccountsContainersTagsCreate'
         where
        type Rs AccountsContainersTagsCreate' = Tag
        request = requestWith tagManagerRequest
        requestWith rq AccountsContainersTagsCreate'{..}
          = go _actcAccountId _actcContainerId _actcQuotaUser
              (Just _actcPrettyPrint)
              _actcUserIP
              _actcFields
              _actcKey
              _actcOAuthToken
              (Just AltJSON)
              _actcPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsContainersTagsCreateResource)
                      rq
