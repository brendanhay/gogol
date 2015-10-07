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
-- Module      : Network.Google.Resource.Analytics.Management.ProFiles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a view (profile) to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFilesGet@.
module Network.Google.Resource.Analytics.Management.ProFiles.Get
    (
    -- * REST Resource
      ManagementProFilesGetResource

    -- * Creating a Request
    , managementProFilesGet'
    , ManagementProFilesGet'

    -- * Request Lenses
    , mpfgQuotaUser
    , mpfgPrettyPrint
    , mpfgWebPropertyId
    , mpfgUserIP
    , mpfgProFileId
    , mpfgAccountId
    , mpfgKey
    , mpfgOAuthToken
    , mpfgFields
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFilesGet@ method which the
-- 'ManagementProFilesGet'' request conforms to.
type ManagementProFilesGetResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Get '[JSON] ProFile

-- | Gets a view (profile) to which the user has access.
--
-- /See:/ 'managementProFilesGet'' smart constructor.
data ManagementProFilesGet' = ManagementProFilesGet'
    { _mpfgQuotaUser     :: !(Maybe Text)
    , _mpfgPrettyPrint   :: !Bool
    , _mpfgWebPropertyId :: !Text
    , _mpfgUserIP        :: !(Maybe Text)
    , _mpfgProFileId     :: !Text
    , _mpfgAccountId     :: !Text
    , _mpfgKey           :: !(Maybe AuthKey)
    , _mpfgOAuthToken    :: !(Maybe OAuthToken)
    , _mpfgFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfgQuotaUser'
--
-- * 'mpfgPrettyPrint'
--
-- * 'mpfgWebPropertyId'
--
-- * 'mpfgUserIP'
--
-- * 'mpfgProFileId'
--
-- * 'mpfgAccountId'
--
-- * 'mpfgKey'
--
-- * 'mpfgOAuthToken'
--
-- * 'mpfgFields'
managementProFilesGet'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementProFilesGet'
managementProFilesGet' pMpfgWebPropertyId_ pMpfgProFileId_ pMpfgAccountId_ =
    ManagementProFilesGet'
    { _mpfgQuotaUser = Nothing
    , _mpfgPrettyPrint = False
    , _mpfgWebPropertyId = pMpfgWebPropertyId_
    , _mpfgUserIP = Nothing
    , _mpfgProFileId = pMpfgProFileId_
    , _mpfgAccountId = pMpfgAccountId_
    , _mpfgKey = Nothing
    , _mpfgOAuthToken = Nothing
    , _mpfgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpfgQuotaUser :: Lens' ManagementProFilesGet' (Maybe Text)
mpfgQuotaUser
  = lens _mpfgQuotaUser
      (\ s a -> s{_mpfgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mpfgPrettyPrint :: Lens' ManagementProFilesGet' Bool
mpfgPrettyPrint
  = lens _mpfgPrettyPrint
      (\ s a -> s{_mpfgPrettyPrint = a})

-- | Web property ID to retrieve the goal for.
mpfgWebPropertyId :: Lens' ManagementProFilesGet' Text
mpfgWebPropertyId
  = lens _mpfgWebPropertyId
      (\ s a -> s{_mpfgWebPropertyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpfgUserIP :: Lens' ManagementProFilesGet' (Maybe Text)
mpfgUserIP
  = lens _mpfgUserIP (\ s a -> s{_mpfgUserIP = a})

-- | View (Profile) ID to retrieve the goal for.
mpfgProFileId :: Lens' ManagementProFilesGet' Text
mpfgProFileId
  = lens _mpfgProFileId
      (\ s a -> s{_mpfgProFileId = a})

-- | Account ID to retrieve the goal for.
mpfgAccountId :: Lens' ManagementProFilesGet' Text
mpfgAccountId
  = lens _mpfgAccountId
      (\ s a -> s{_mpfgAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpfgKey :: Lens' ManagementProFilesGet' (Maybe AuthKey)
mpfgKey = lens _mpfgKey (\ s a -> s{_mpfgKey = a})

-- | OAuth 2.0 token for the current user.
mpfgOAuthToken :: Lens' ManagementProFilesGet' (Maybe OAuthToken)
mpfgOAuthToken
  = lens _mpfgOAuthToken
      (\ s a -> s{_mpfgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mpfgFields :: Lens' ManagementProFilesGet' (Maybe Text)
mpfgFields
  = lens _mpfgFields (\ s a -> s{_mpfgFields = a})

instance GoogleAuth ManagementProFilesGet' where
        _AuthKey = mpfgKey . _Just
        _AuthToken = mpfgOAuthToken . _Just

instance GoogleRequest ManagementProFilesGet' where
        type Rs ManagementProFilesGet' = ProFile
        request = requestWith analyticsRequest
        requestWith rq ManagementProFilesGet'{..}
          = go _mpfgAccountId _mpfgWebPropertyId _mpfgProFileId
              _mpfgQuotaUser
              (Just _mpfgPrettyPrint)
              _mpfgUserIP
              _mpfgFields
              _mpfgKey
              _mpfgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ManagementProFilesGetResource)
                      rq
