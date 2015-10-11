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
-- Module      : Network.Google.Resource.CloudUserAccounts.Groups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a Group resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @CloudUserAccountsGroupsInsert@.
module Network.Google.Resource.CloudUserAccounts.Groups.Insert
    (
    -- * REST Resource
      GroupsInsertResource

    -- * Creating a Request
    , groupsInsert'
    , GroupsInsert'

    -- * Request Lenses
    , giQuotaUser
    , giPrettyPrint
    , giProject
    , giUserIP
    , giPayload
    , giKey
    , giOAuthToken
    , giFields
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @CloudUserAccountsGroupsInsert@ method which the
-- 'GroupsInsert'' request conforms to.
type GroupsInsertResource =
     Capture "project" Text :>
       "global" :>
         "groups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Group :> Post '[JSON] Operation

-- | Creates a Group resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'groupsInsert'' smart constructor.
data GroupsInsert' = GroupsInsert'
    { _giQuotaUser   :: !(Maybe Text)
    , _giPrettyPrint :: !Bool
    , _giProject     :: !Text
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
-- * 'giProject'
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
    :: Text -- ^ 'project'
    -> Group -- ^ 'payload'
    -> GroupsInsert'
groupsInsert' pGiProject_ pGiPayload_ =
    GroupsInsert'
    { _giQuotaUser = Nothing
    , _giPrettyPrint = True
    , _giProject = pGiProject_
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

-- | Project ID for this request.
giProject :: Lens' GroupsInsert' Text
giProject
  = lens _giProject (\ s a -> s{_giProject = a})

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
        _AuthKey = giKey . _Just
        _AuthToken = giOAuthToken . _Just

instance GoogleRequest GroupsInsert' where
        type Rs GroupsInsert' = Operation
        request = requestWith userAccountsRequest
        requestWith rq GroupsInsert'{..}
          = go _giProject _giQuotaUser (Just _giPrettyPrint)
              _giUserIP
              _giFields
              _giKey
              _giOAuthToken
              (Just AltJSON)
              _giPayload
          where go
                  = clientBuild (Proxy :: Proxy GroupsInsertResource)
                      rq
