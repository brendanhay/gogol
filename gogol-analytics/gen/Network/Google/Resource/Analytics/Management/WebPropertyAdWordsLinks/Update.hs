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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing webProperty-AdWords link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertyAdWordsLinksUpdate@.
module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Update
    (
    -- * REST Resource
      ManagementWebPropertyAdWordsLinksUpdateResource

    -- * Creating a Request
    , managementWebPropertyAdWordsLinksUpdate'
    , ManagementWebPropertyAdWordsLinksUpdate'

    -- * Request Lenses
    , mwpawluQuotaUser
    , mwpawluPrettyPrint
    , mwpawluWebPropertyId
    , mwpawluUserIP
    , mwpawluPayload
    , mwpawluAccountId
    , mwpawluKey
    , mwpawluWebPropertyAdWordsLinkId
    , mwpawluOAuthToken
    , mwpawluFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertyAdWordsLinksUpdate@ which the
-- 'ManagementWebPropertyAdWordsLinksUpdate'' request conforms to.
type ManagementWebPropertyAdWordsLinksUpdateResource
     =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityAdWordsLinks" :>
                 Capture "webPropertyAdWordsLinkId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] EntityAdWordsLink :>
                                   Put '[JSON] EntityAdWordsLink

-- | Updates an existing webProperty-AdWords link.
--
-- /See:/ 'managementWebPropertyAdWordsLinksUpdate'' smart constructor.
data ManagementWebPropertyAdWordsLinksUpdate' = ManagementWebPropertyAdWordsLinksUpdate'
    { _mwpawluQuotaUser                :: !(Maybe Text)
    , _mwpawluPrettyPrint              :: !Bool
    , _mwpawluWebPropertyId            :: !Text
    , _mwpawluUserIP                   :: !(Maybe Text)
    , _mwpawluPayload                  :: !EntityAdWordsLink
    , _mwpawluAccountId                :: !Text
    , _mwpawluKey                      :: !(Maybe Key)
    , _mwpawluWebPropertyAdWordsLinkId :: !Text
    , _mwpawluOAuthToken               :: !(Maybe OAuthToken)
    , _mwpawluFields                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyAdWordsLinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpawluQuotaUser'
--
-- * 'mwpawluPrettyPrint'
--
-- * 'mwpawluWebPropertyId'
--
-- * 'mwpawluUserIP'
--
-- * 'mwpawluPayload'
--
-- * 'mwpawluAccountId'
--
-- * 'mwpawluKey'
--
-- * 'mwpawluWebPropertyAdWordsLinkId'
--
-- * 'mwpawluOAuthToken'
--
-- * 'mwpawluFields'
managementWebPropertyAdWordsLinksUpdate'
    :: Text -- ^ 'webPropertyId'
    -> EntityAdWordsLink -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'webPropertyAdWordsLinkId'
    -> ManagementWebPropertyAdWordsLinksUpdate'
managementWebPropertyAdWordsLinksUpdate' pMwpawluWebPropertyId_ pMwpawluPayload_ pMwpawluAccountId_ pMwpawluWebPropertyAdWordsLinkId_ =
    ManagementWebPropertyAdWordsLinksUpdate'
    { _mwpawluQuotaUser = Nothing
    , _mwpawluPrettyPrint = False
    , _mwpawluWebPropertyId = pMwpawluWebPropertyId_
    , _mwpawluUserIP = Nothing
    , _mwpawluPayload = pMwpawluPayload_
    , _mwpawluAccountId = pMwpawluAccountId_
    , _mwpawluKey = Nothing
    , _mwpawluWebPropertyAdWordsLinkId = pMwpawluWebPropertyAdWordsLinkId_
    , _mwpawluOAuthToken = Nothing
    , _mwpawluFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpawluQuotaUser :: Lens' ManagementWebPropertyAdWordsLinksUpdate' (Maybe Text)
mwpawluQuotaUser
  = lens _mwpawluQuotaUser
      (\ s a -> s{_mwpawluQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpawluPrettyPrint :: Lens' ManagementWebPropertyAdWordsLinksUpdate' Bool
mwpawluPrettyPrint
  = lens _mwpawluPrettyPrint
      (\ s a -> s{_mwpawluPrettyPrint = a})

-- | Web property ID to retrieve the AdWords link for.
mwpawluWebPropertyId :: Lens' ManagementWebPropertyAdWordsLinksUpdate' Text
mwpawluWebPropertyId
  = lens _mwpawluWebPropertyId
      (\ s a -> s{_mwpawluWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpawluUserIP :: Lens' ManagementWebPropertyAdWordsLinksUpdate' (Maybe Text)
mwpawluUserIP
  = lens _mwpawluUserIP
      (\ s a -> s{_mwpawluUserIP = a})

-- | Multipart request metadata.
mwpawluPayload :: Lens' ManagementWebPropertyAdWordsLinksUpdate' EntityAdWordsLink
mwpawluPayload
  = lens _mwpawluPayload
      (\ s a -> s{_mwpawluPayload = a})

-- | ID of the account which the given web property belongs to.
mwpawluAccountId :: Lens' ManagementWebPropertyAdWordsLinksUpdate' Text
mwpawluAccountId
  = lens _mwpawluAccountId
      (\ s a -> s{_mwpawluAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpawluKey :: Lens' ManagementWebPropertyAdWordsLinksUpdate' (Maybe Key)
mwpawluKey
  = lens _mwpawluKey (\ s a -> s{_mwpawluKey = a})

-- | Web property-AdWords link ID.
mwpawluWebPropertyAdWordsLinkId :: Lens' ManagementWebPropertyAdWordsLinksUpdate' Text
mwpawluWebPropertyAdWordsLinkId
  = lens _mwpawluWebPropertyAdWordsLinkId
      (\ s a -> s{_mwpawluWebPropertyAdWordsLinkId = a})

-- | OAuth 2.0 token for the current user.
mwpawluOAuthToken :: Lens' ManagementWebPropertyAdWordsLinksUpdate' (Maybe OAuthToken)
mwpawluOAuthToken
  = lens _mwpawluOAuthToken
      (\ s a -> s{_mwpawluOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwpawluFields :: Lens' ManagementWebPropertyAdWordsLinksUpdate' (Maybe Text)
mwpawluFields
  = lens _mwpawluFields
      (\ s a -> s{_mwpawluFields = a})

instance GoogleAuth
         ManagementWebPropertyAdWordsLinksUpdate' where
        authKey = mwpawluKey . _Just
        authToken = mwpawluOAuthToken . _Just

instance GoogleRequest
         ManagementWebPropertyAdWordsLinksUpdate' where
        type Rs ManagementWebPropertyAdWordsLinksUpdate' =
             EntityAdWordsLink
        request = requestWithRoute defReq analyticsURL
        requestWithRoute r u
          ManagementWebPropertyAdWordsLinksUpdate'{..}
          = go _mwpawluAccountId _mwpawluWebPropertyId
              _mwpawluWebPropertyAdWordsLinkId
              _mwpawluQuotaUser
              (Just _mwpawluPrettyPrint)
              _mwpawluUserIP
              _mwpawluFields
              _mwpawluKey
              _mwpawluOAuthToken
              (Just AltJSON)
              _mwpawluPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy
                           ManagementWebPropertyAdWordsLinksUpdateResource)
                      r
                      u
