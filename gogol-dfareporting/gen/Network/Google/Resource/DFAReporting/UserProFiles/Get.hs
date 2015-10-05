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
-- Module      : Network.Google.Resource.DFAReporting.UserProFiles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one user profile by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingUserProFilesGet@.
module Network.Google.Resource.DFAReporting.UserProFiles.Get
    (
    -- * REST Resource
      UserProFilesGetResource

    -- * Creating a Request
    , userProFilesGet'
    , UserProFilesGet'

    -- * Request Lenses
    , upfgQuotaUser
    , upfgPrettyPrint
    , upfgUserIP
    , upfgProFileId
    , upfgKey
    , upfgOAuthToken
    , upfgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserProFilesGet@ which the
-- 'UserProFilesGet'' request conforms to.
type UserProFilesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] UserProFile

-- | Gets one user profile by ID.
--
-- /See:/ 'userProFilesGet'' smart constructor.
data UserProFilesGet' = UserProFilesGet'
    { _upfgQuotaUser   :: !(Maybe Text)
    , _upfgPrettyPrint :: !Bool
    , _upfgUserIP      :: !(Maybe Text)
    , _upfgProFileId   :: !Int64
    , _upfgKey         :: !(Maybe AuthKey)
    , _upfgOAuthToken  :: !(Maybe OAuthToken)
    , _upfgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserProFilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upfgQuotaUser'
--
-- * 'upfgPrettyPrint'
--
-- * 'upfgUserIP'
--
-- * 'upfgProFileId'
--
-- * 'upfgKey'
--
-- * 'upfgOAuthToken'
--
-- * 'upfgFields'
userProFilesGet'
    :: Int64 -- ^ 'profileId'
    -> UserProFilesGet'
userProFilesGet' pUpfgProFileId_ =
    UserProFilesGet'
    { _upfgQuotaUser = Nothing
    , _upfgPrettyPrint = True
    , _upfgUserIP = Nothing
    , _upfgProFileId = pUpfgProFileId_
    , _upfgKey = Nothing
    , _upfgOAuthToken = Nothing
    , _upfgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
upfgQuotaUser :: Lens' UserProFilesGet' (Maybe Text)
upfgQuotaUser
  = lens _upfgQuotaUser
      (\ s a -> s{_upfgQuotaUser = a})

-- | Returns response with indentations and line breaks.
upfgPrettyPrint :: Lens' UserProFilesGet' Bool
upfgPrettyPrint
  = lens _upfgPrettyPrint
      (\ s a -> s{_upfgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
upfgUserIP :: Lens' UserProFilesGet' (Maybe Text)
upfgUserIP
  = lens _upfgUserIP (\ s a -> s{_upfgUserIP = a})

-- | The user profile ID.
upfgProFileId :: Lens' UserProFilesGet' Int64
upfgProFileId
  = lens _upfgProFileId
      (\ s a -> s{_upfgProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
upfgKey :: Lens' UserProFilesGet' (Maybe AuthKey)
upfgKey = lens _upfgKey (\ s a -> s{_upfgKey = a})

-- | OAuth 2.0 token for the current user.
upfgOAuthToken :: Lens' UserProFilesGet' (Maybe OAuthToken)
upfgOAuthToken
  = lens _upfgOAuthToken
      (\ s a -> s{_upfgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
upfgFields :: Lens' UserProFilesGet' (Maybe Text)
upfgFields
  = lens _upfgFields (\ s a -> s{_upfgFields = a})

instance GoogleAuth UserProFilesGet' where
        authKey = upfgKey . _Just
        authToken = upfgOAuthToken . _Just

instance GoogleRequest UserProFilesGet' where
        type Rs UserProFilesGet' = UserProFile
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserProFilesGet'{..}
          = go _upfgProFileId _upfgQuotaUser
              (Just _upfgPrettyPrint)
              _upfgUserIP
              _upfgFields
              _upfgKey
              _upfgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserProFilesGetResource)
                      r
                      u
