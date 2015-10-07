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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a user from the given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertyUserLinksDelete@.
module Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Delete
    (
    -- * REST Resource
      ManagementWebPropertyUserLinksDeleteResource

    -- * Creating a Request
    , managementWebPropertyUserLinksDelete'
    , ManagementWebPropertyUserLinksDelete'

    -- * Request Lenses
    , mwpuldQuotaUser
    , mwpuldPrettyPrint
    , mwpuldWebPropertyId
    , mwpuldUserIP
    , mwpuldAccountId
    , mwpuldKey
    , mwpuldLinkId
    , mwpuldOAuthToken
    , mwpuldFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertyUserLinksDelete@ method which the
-- 'ManagementWebPropertyUserLinksDelete'' request conforms to.
type ManagementWebPropertyUserLinksDeleteResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityUserLinks" :>
                 Capture "linkId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a user from the given web property.
--
-- /See:/ 'managementWebPropertyUserLinksDelete'' smart constructor.
data ManagementWebPropertyUserLinksDelete' = ManagementWebPropertyUserLinksDelete'
    { _mwpuldQuotaUser     :: !(Maybe Text)
    , _mwpuldPrettyPrint   :: !Bool
    , _mwpuldWebPropertyId :: !Text
    , _mwpuldUserIP        :: !(Maybe Text)
    , _mwpuldAccountId     :: !Text
    , _mwpuldKey           :: !(Maybe AuthKey)
    , _mwpuldLinkId        :: !Text
    , _mwpuldOAuthToken    :: !(Maybe OAuthToken)
    , _mwpuldFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyUserLinksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpuldQuotaUser'
--
-- * 'mwpuldPrettyPrint'
--
-- * 'mwpuldWebPropertyId'
--
-- * 'mwpuldUserIP'
--
-- * 'mwpuldAccountId'
--
-- * 'mwpuldKey'
--
-- * 'mwpuldLinkId'
--
-- * 'mwpuldOAuthToken'
--
-- * 'mwpuldFields'
managementWebPropertyUserLinksDelete'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'linkId'
    -> ManagementWebPropertyUserLinksDelete'
managementWebPropertyUserLinksDelete' pMwpuldWebPropertyId_ pMwpuldAccountId_ pMwpuldLinkId_ =
    ManagementWebPropertyUserLinksDelete'
    { _mwpuldQuotaUser = Nothing
    , _mwpuldPrettyPrint = False
    , _mwpuldWebPropertyId = pMwpuldWebPropertyId_
    , _mwpuldUserIP = Nothing
    , _mwpuldAccountId = pMwpuldAccountId_
    , _mwpuldKey = Nothing
    , _mwpuldLinkId = pMwpuldLinkId_
    , _mwpuldOAuthToken = Nothing
    , _mwpuldFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mwpuldQuotaUser :: Lens' ManagementWebPropertyUserLinksDelete' (Maybe Text)
mwpuldQuotaUser
  = lens _mwpuldQuotaUser
      (\ s a -> s{_mwpuldQuotaUser = a})

-- | Returns response with indentations and line breaks.
mwpuldPrettyPrint :: Lens' ManagementWebPropertyUserLinksDelete' Bool
mwpuldPrettyPrint
  = lens _mwpuldPrettyPrint
      (\ s a -> s{_mwpuldPrettyPrint = a})

-- | Web Property ID to delete the user link for.
mwpuldWebPropertyId :: Lens' ManagementWebPropertyUserLinksDelete' Text
mwpuldWebPropertyId
  = lens _mwpuldWebPropertyId
      (\ s a -> s{_mwpuldWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mwpuldUserIP :: Lens' ManagementWebPropertyUserLinksDelete' (Maybe Text)
mwpuldUserIP
  = lens _mwpuldUserIP (\ s a -> s{_mwpuldUserIP = a})

-- | Account ID to delete the user link for.
mwpuldAccountId :: Lens' ManagementWebPropertyUserLinksDelete' Text
mwpuldAccountId
  = lens _mwpuldAccountId
      (\ s a -> s{_mwpuldAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mwpuldKey :: Lens' ManagementWebPropertyUserLinksDelete' (Maybe AuthKey)
mwpuldKey
  = lens _mwpuldKey (\ s a -> s{_mwpuldKey = a})

-- | Link ID to delete the user link for.
mwpuldLinkId :: Lens' ManagementWebPropertyUserLinksDelete' Text
mwpuldLinkId
  = lens _mwpuldLinkId (\ s a -> s{_mwpuldLinkId = a})

-- | OAuth 2.0 token for the current user.
mwpuldOAuthToken :: Lens' ManagementWebPropertyUserLinksDelete' (Maybe OAuthToken)
mwpuldOAuthToken
  = lens _mwpuldOAuthToken
      (\ s a -> s{_mwpuldOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mwpuldFields :: Lens' ManagementWebPropertyUserLinksDelete' (Maybe Text)
mwpuldFields
  = lens _mwpuldFields (\ s a -> s{_mwpuldFields = a})

instance GoogleAuth
         ManagementWebPropertyUserLinksDelete' where
        _AuthKey = mwpuldKey . _Just
        _AuthToken = mwpuldOAuthToken . _Just

instance GoogleRequest
         ManagementWebPropertyUserLinksDelete' where
        type Rs ManagementWebPropertyUserLinksDelete' = ()
        request = requestWith analyticsRequest
        requestWith rq
          ManagementWebPropertyUserLinksDelete'{..}
          = go _mwpuldAccountId _mwpuldWebPropertyId
              _mwpuldLinkId
              _mwpuldQuotaUser
              (Just _mwpuldPrettyPrint)
              _mwpuldUserIP
              _mwpuldFields
              _mwpuldKey
              _mwpuldOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ManagementWebPropertyUserLinksDeleteResource)
                      rq
