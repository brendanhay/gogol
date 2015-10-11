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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a web property-AdWords link to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertyAdWordsLinksGet@.
module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Get
    (
    -- * REST Resource
      ManagementWebPropertyAdWordsLinksGetResource

    -- * Creating a Request
    , managementWebPropertyAdWordsLinksGet'
    , ManagementWebPropertyAdWordsLinksGet'

    -- * Request Lenses
    , mwpawlgQuotaUser
    , mwpawlgPrettyPrint
    , mwpawlgWebPropertyId
    , mwpawlgUserIP
    , mwpawlgAccountId
    , mwpawlgKey
    , mwpawlgWebPropertyAdWordsLinkId
    , mwpawlgOAuthToken
    , mwpawlgFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertyAdWordsLinksGet@ method which the
-- 'ManagementWebPropertyAdWordsLinksGet'' request conforms to.
type ManagementWebPropertyAdWordsLinksGetResource =
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
                           QueryParam "key" AuthKey :>
                             Header "Authorization" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] EntityAdWordsLink

-- | Returns a web property-AdWords link to which the user has access.
--
-- /See:/ 'managementWebPropertyAdWordsLinksGet'' smart constructor.
data ManagementWebPropertyAdWordsLinksGet' = ManagementWebPropertyAdWordsLinksGet'
    { _mwpawlgQuotaUser                :: !(Maybe Text)
    , _mwpawlgPrettyPrint              :: !Bool
    , _mwpawlgWebPropertyId            :: !Text
    , _mwpawlgUserIP                   :: !(Maybe Text)
    , _mwpawlgAccountId                :: !Text
    , _mwpawlgKey                      :: !(Maybe AuthKey)
    , _mwpawlgWebPropertyAdWordsLinkId :: !Text
    , _mwpawlgOAuthToken               :: !(Maybe OAuthToken)
    , _mwpawlgFields                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyAdWordsLinksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpawlgQuotaUser'
--
-- * 'mwpawlgPrettyPrint'
--
-- * 'mwpawlgWebPropertyId'
--
-- * 'mwpawlgUserIP'
--
-- * 'mwpawlgAccountId'
--
-- * 'mwpawlgKey'
--
-- * 'mwpawlgWebPropertyAdWordsLinkId'
--
-- * 'mwpawlgOAuthToken'
--
-- * 'mwpawlgFields'
managementWebPropertyAdWordsLinksGet'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'webPropertyAdWordsLinkId'
    -> ManagementWebPropertyAdWordsLinksGet'
managementWebPropertyAdWordsLinksGet' pMwpawlgWebPropertyId_ pMwpawlgAccountId_ pMwpawlgWebPropertyAdWordsLinkId_ =
    ManagementWebPropertyAdWordsLinksGet'
    { _mwpawlgQuotaUser = Nothing
    , _mwpawlgPrettyPrint = False
    , _mwpawlgWebPropertyId = pMwpawlgWebPropertyId_
    , _mwpawlgUserIP = Nothing
    , _mwpawlgAccountId = pMwpawlgAccountId_
    , _mwpawlgKey = Nothing
    , _mwpawlgWebPropertyAdWordsLinkId = pMwpawlgWebPropertyAdWordsLinkId_
    , _mwpawlgOAuthToken = Nothing
    , _mwpawlgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpawlgQuotaUser :: Lens' ManagementWebPropertyAdWordsLinksGet' (Maybe Text)
mwpawlgQuotaUser
  = lens _mwpawlgQuotaUser
      (\ s a -> s{_mwpawlgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpawlgPrettyPrint :: Lens' ManagementWebPropertyAdWordsLinksGet' Bool
mwpawlgPrettyPrint
  = lens _mwpawlgPrettyPrint
      (\ s a -> s{_mwpawlgPrettyPrint = a})

-- | Web property ID to retrieve the AdWords link for.
mwpawlgWebPropertyId :: Lens' ManagementWebPropertyAdWordsLinksGet' Text
mwpawlgWebPropertyId
  = lens _mwpawlgWebPropertyId
      (\ s a -> s{_mwpawlgWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpawlgUserIP :: Lens' ManagementWebPropertyAdWordsLinksGet' (Maybe Text)
mwpawlgUserIP
  = lens _mwpawlgUserIP
      (\ s a -> s{_mwpawlgUserIP = a})

-- | ID of the account which the given web property belongs to.
mwpawlgAccountId :: Lens' ManagementWebPropertyAdWordsLinksGet' Text
mwpawlgAccountId
  = lens _mwpawlgAccountId
      (\ s a -> s{_mwpawlgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpawlgKey :: Lens' ManagementWebPropertyAdWordsLinksGet' (Maybe AuthKey)
mwpawlgKey
  = lens _mwpawlgKey (\ s a -> s{_mwpawlgKey = a})

-- | Web property-AdWords link ID.
mwpawlgWebPropertyAdWordsLinkId :: Lens' ManagementWebPropertyAdWordsLinksGet' Text
mwpawlgWebPropertyAdWordsLinkId
  = lens _mwpawlgWebPropertyAdWordsLinkId
      (\ s a -> s{_mwpawlgWebPropertyAdWordsLinkId = a})

-- | OAuth 2.0 token for the current user.
mwpawlgOAuthToken :: Lens' ManagementWebPropertyAdWordsLinksGet' (Maybe OAuthToken)
mwpawlgOAuthToken
  = lens _mwpawlgOAuthToken
      (\ s a -> s{_mwpawlgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwpawlgFields :: Lens' ManagementWebPropertyAdWordsLinksGet' (Maybe Text)
mwpawlgFields
  = lens _mwpawlgFields
      (\ s a -> s{_mwpawlgFields = a})

instance GoogleAuth
         ManagementWebPropertyAdWordsLinksGet' where
        _AuthKey = mwpawlgKey . _Just
        _AuthToken = mwpawlgOAuthToken . _Just

instance GoogleRequest
         ManagementWebPropertyAdWordsLinksGet' where
        type Rs ManagementWebPropertyAdWordsLinksGet' =
             EntityAdWordsLink
        request = requestWith analyticsRequest
        requestWith rq
          ManagementWebPropertyAdWordsLinksGet'{..}
          = go _mwpawlgAccountId _mwpawlgWebPropertyId
              _mwpawlgWebPropertyAdWordsLinkId
              _mwpawlgQuotaUser
              (Just _mwpawlgPrettyPrint)
              _mwpawlgUserIP
              _mwpawlgFields
              _mwpawlgKey
              _mwpawlgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ManagementWebPropertyAdWordsLinksGetResource)
                      rq
