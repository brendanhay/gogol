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
-- Module      : Network.Google.Resource.DFAReporting.AccountUserProFiles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one account user profile by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountUserProFilesGet@.
module Network.Google.Resource.DFAReporting.AccountUserProFiles.Get
    (
    -- * REST Resource
      AccountUserProFilesGetResource

    -- * Creating a Request
    , accountUserProFilesGet'
    , AccountUserProFilesGet'

    -- * Request Lenses
    , aupfgQuotaUser
    , aupfgPrettyPrint
    , aupfgUserIP
    , aupfgProFileId
    , aupfgKey
    , aupfgId
    , aupfgOAuthToken
    , aupfgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountUserProFilesGet@ method which the
-- 'AccountUserProFilesGet'' request conforms to.
type AccountUserProFilesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountUserProfiles" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AccountUserProFile

-- | Gets one account user profile by ID.
--
-- /See:/ 'accountUserProFilesGet'' smart constructor.
data AccountUserProFilesGet' = AccountUserProFilesGet'
    { _aupfgQuotaUser   :: !(Maybe Text)
    , _aupfgPrettyPrint :: !Bool
    , _aupfgUserIP      :: !(Maybe Text)
    , _aupfgProFileId   :: !Int64
    , _aupfgKey         :: !(Maybe AuthKey)
    , _aupfgId          :: !Int64
    , _aupfgOAuthToken  :: !(Maybe OAuthToken)
    , _aupfgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProFilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupfgQuotaUser'
--
-- * 'aupfgPrettyPrint'
--
-- * 'aupfgUserIP'
--
-- * 'aupfgProFileId'
--
-- * 'aupfgKey'
--
-- * 'aupfgId'
--
-- * 'aupfgOAuthToken'
--
-- * 'aupfgFields'
accountUserProFilesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AccountUserProFilesGet'
accountUserProFilesGet' pAupfgProFileId_ pAupfgId_ =
    AccountUserProFilesGet'
    { _aupfgQuotaUser = Nothing
    , _aupfgPrettyPrint = True
    , _aupfgUserIP = Nothing
    , _aupfgProFileId = pAupfgProFileId_
    , _aupfgKey = Nothing
    , _aupfgId = pAupfgId_
    , _aupfgOAuthToken = Nothing
    , _aupfgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aupfgQuotaUser :: Lens' AccountUserProFilesGet' (Maybe Text)
aupfgQuotaUser
  = lens _aupfgQuotaUser
      (\ s a -> s{_aupfgQuotaUser = a})

-- | Returns response with indentations and line breaks.
aupfgPrettyPrint :: Lens' AccountUserProFilesGet' Bool
aupfgPrettyPrint
  = lens _aupfgPrettyPrint
      (\ s a -> s{_aupfgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aupfgUserIP :: Lens' AccountUserProFilesGet' (Maybe Text)
aupfgUserIP
  = lens _aupfgUserIP (\ s a -> s{_aupfgUserIP = a})

-- | User profile ID associated with this request.
aupfgProFileId :: Lens' AccountUserProFilesGet' Int64
aupfgProFileId
  = lens _aupfgProFileId
      (\ s a -> s{_aupfgProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aupfgKey :: Lens' AccountUserProFilesGet' (Maybe AuthKey)
aupfgKey = lens _aupfgKey (\ s a -> s{_aupfgKey = a})

-- | User profile ID.
aupfgId :: Lens' AccountUserProFilesGet' Int64
aupfgId = lens _aupfgId (\ s a -> s{_aupfgId = a})

-- | OAuth 2.0 token for the current user.
aupfgOAuthToken :: Lens' AccountUserProFilesGet' (Maybe OAuthToken)
aupfgOAuthToken
  = lens _aupfgOAuthToken
      (\ s a -> s{_aupfgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aupfgFields :: Lens' AccountUserProFilesGet' (Maybe Text)
aupfgFields
  = lens _aupfgFields (\ s a -> s{_aupfgFields = a})

instance GoogleAuth AccountUserProFilesGet' where
        _AuthKey = aupfgKey . _Just
        _AuthToken = aupfgOAuthToken . _Just

instance GoogleRequest AccountUserProFilesGet' where
        type Rs AccountUserProFilesGet' = AccountUserProFile
        request = requestWith dFAReportingRequest
        requestWith rq AccountUserProFilesGet'{..}
          = go _aupfgProFileId _aupfgId _aupfgQuotaUser
              (Just _aupfgPrettyPrint)
              _aupfgUserIP
              _aupfgFields
              _aupfgKey
              _aupfgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountUserProFilesGetResource)
                      rq
