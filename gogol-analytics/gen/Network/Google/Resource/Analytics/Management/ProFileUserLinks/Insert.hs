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
-- Module      : Network.Google.Resource.Analytics.Management.ProFileUserLinks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a new user to the given view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFileUserLinksInsert@.
module Network.Google.Resource.Analytics.Management.ProFileUserLinks.Insert
    (
    -- * REST Resource
      ManagementProFileUserLinksInsertResource

    -- * Creating a Request
    , managementProFileUserLinksInsert'
    , ManagementProFileUserLinksInsert'

    -- * Request Lenses
    , mpfuliQuotaUser
    , mpfuliPrettyPrint
    , mpfuliWebPropertyId
    , mpfuliUserIP
    , mpfuliProFileId
    , mpfuliPayload
    , mpfuliAccountId
    , mpfuliKey
    , mpfuliOAuthToken
    , mpfuliFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFileUserLinksInsert@ method which the
-- 'ManagementProFileUserLinksInsert'' request conforms to.
type ManagementProFileUserLinksInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "entityUserLinks" :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] EntityUserLink :>
                                     Post '[JSON] EntityUserLink

-- | Adds a new user to the given view (profile).
--
-- /See:/ 'managementProFileUserLinksInsert'' smart constructor.
data ManagementProFileUserLinksInsert' = ManagementProFileUserLinksInsert'
    { _mpfuliQuotaUser     :: !(Maybe Text)
    , _mpfuliPrettyPrint   :: !Bool
    , _mpfuliWebPropertyId :: !Text
    , _mpfuliUserIP        :: !(Maybe Text)
    , _mpfuliProFileId     :: !Text
    , _mpfuliPayload       :: !EntityUserLink
    , _mpfuliAccountId     :: !Text
    , _mpfuliKey           :: !(Maybe AuthKey)
    , _mpfuliOAuthToken    :: !(Maybe OAuthToken)
    , _mpfuliFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFileUserLinksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfuliQuotaUser'
--
-- * 'mpfuliPrettyPrint'
--
-- * 'mpfuliWebPropertyId'
--
-- * 'mpfuliUserIP'
--
-- * 'mpfuliProFileId'
--
-- * 'mpfuliPayload'
--
-- * 'mpfuliAccountId'
--
-- * 'mpfuliKey'
--
-- * 'mpfuliOAuthToken'
--
-- * 'mpfuliFields'
managementProFileUserLinksInsert'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> EntityUserLink -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementProFileUserLinksInsert'
managementProFileUserLinksInsert' pMpfuliWebPropertyId_ pMpfuliProFileId_ pMpfuliPayload_ pMpfuliAccountId_ =
    ManagementProFileUserLinksInsert'
    { _mpfuliQuotaUser = Nothing
    , _mpfuliPrettyPrint = False
    , _mpfuliWebPropertyId = pMpfuliWebPropertyId_
    , _mpfuliUserIP = Nothing
    , _mpfuliProFileId = pMpfuliProFileId_
    , _mpfuliPayload = pMpfuliPayload_
    , _mpfuliAccountId = pMpfuliAccountId_
    , _mpfuliKey = Nothing
    , _mpfuliOAuthToken = Nothing
    , _mpfuliFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpfuliQuotaUser :: Lens' ManagementProFileUserLinksInsert' (Maybe Text)
mpfuliQuotaUser
  = lens _mpfuliQuotaUser
      (\ s a -> s{_mpfuliQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpfuliPrettyPrint :: Lens' ManagementProFileUserLinksInsert' Bool
mpfuliPrettyPrint
  = lens _mpfuliPrettyPrint
      (\ s a -> s{_mpfuliPrettyPrint = a})

-- | Web Property ID to create the user link for.
mpfuliWebPropertyId :: Lens' ManagementProFileUserLinksInsert' Text
mpfuliWebPropertyId
  = lens _mpfuliWebPropertyId
      (\ s a -> s{_mpfuliWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpfuliUserIP :: Lens' ManagementProFileUserLinksInsert' (Maybe Text)
mpfuliUserIP
  = lens _mpfuliUserIP (\ s a -> s{_mpfuliUserIP = a})

-- | View (Profile) ID to create the user link for.
mpfuliProFileId :: Lens' ManagementProFileUserLinksInsert' Text
mpfuliProFileId
  = lens _mpfuliProFileId
      (\ s a -> s{_mpfuliProFileId = a})

-- | Multipart request metadata.
mpfuliPayload :: Lens' ManagementProFileUserLinksInsert' EntityUserLink
mpfuliPayload
  = lens _mpfuliPayload
      (\ s a -> s{_mpfuliPayload = a})

-- | Account ID to create the user link for.
mpfuliAccountId :: Lens' ManagementProFileUserLinksInsert' Text
mpfuliAccountId
  = lens _mpfuliAccountId
      (\ s a -> s{_mpfuliAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpfuliKey :: Lens' ManagementProFileUserLinksInsert' (Maybe AuthKey)
mpfuliKey
  = lens _mpfuliKey (\ s a -> s{_mpfuliKey = a})

-- | OAuth 2.0 token for the current user.
mpfuliOAuthToken :: Lens' ManagementProFileUserLinksInsert' (Maybe OAuthToken)
mpfuliOAuthToken
  = lens _mpfuliOAuthToken
      (\ s a -> s{_mpfuliOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpfuliFields :: Lens' ManagementProFileUserLinksInsert' (Maybe Text)
mpfuliFields
  = lens _mpfuliFields (\ s a -> s{_mpfuliFields = a})

instance GoogleAuth ManagementProFileUserLinksInsert'
         where
        _AuthKey = mpfuliKey . _Just
        _AuthToken = mpfuliOAuthToken . _Just

instance GoogleRequest
         ManagementProFileUserLinksInsert' where
        type Rs ManagementProFileUserLinksInsert' =
             EntityUserLink
        request = requestWith analyticsRequest
        requestWith rq ManagementProFileUserLinksInsert'{..}
          = go _mpfuliAccountId _mpfuliWebPropertyId
              _mpfuliProFileId
              _mpfuliQuotaUser
              (Just _mpfuliPrettyPrint)
              _mpfuliUserIP
              _mpfuliFields
              _mpfuliKey
              _mpfuliOAuthToken
              (Just AltJSON)
              _mpfuliPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ManagementProFileUserLinksInsertResource)
                      rq
