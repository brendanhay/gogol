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
-- Module      : Network.Google.Resource.DFAReporting.OperatingSystemVersions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one operating system version by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingOperatingSystemVersionsGet@.
module Network.Google.Resource.DFAReporting.OperatingSystemVersions.Get
    (
    -- * REST Resource
      OperatingSystemVersionsGetResource

    -- * Creating a Request
    , operatingSystemVersionsGet'
    , OperatingSystemVersionsGet'

    -- * Request Lenses
    , osvgQuotaUser
    , osvgPrettyPrint
    , osvgUserIP
    , osvgProFileId
    , osvgKey
    , osvgId
    , osvgOAuthToken
    , osvgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingOperatingSystemVersionsGet@ which the
-- 'OperatingSystemVersionsGet'' request conforms to.
type OperatingSystemVersionsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "operatingSystemVersions" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] OperatingSystemVersion

-- | Gets one operating system version by ID.
--
-- /See:/ 'operatingSystemVersionsGet'' smart constructor.
data OperatingSystemVersionsGet' = OperatingSystemVersionsGet'
    { _osvgQuotaUser   :: !(Maybe Text)
    , _osvgPrettyPrint :: !Bool
    , _osvgUserIP      :: !(Maybe Text)
    , _osvgProFileId   :: !Int64
    , _osvgKey         :: !(Maybe AuthKey)
    , _osvgId          :: !Int64
    , _osvgOAuthToken  :: !(Maybe OAuthToken)
    , _osvgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperatingSystemVersionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osvgQuotaUser'
--
-- * 'osvgPrettyPrint'
--
-- * 'osvgUserIP'
--
-- * 'osvgProFileId'
--
-- * 'osvgKey'
--
-- * 'osvgId'
--
-- * 'osvgOAuthToken'
--
-- * 'osvgFields'
operatingSystemVersionsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> OperatingSystemVersionsGet'
operatingSystemVersionsGet' pOsvgProFileId_ pOsvgId_ =
    OperatingSystemVersionsGet'
    { _osvgQuotaUser = Nothing
    , _osvgPrettyPrint = True
    , _osvgUserIP = Nothing
    , _osvgProFileId = pOsvgProFileId_
    , _osvgKey = Nothing
    , _osvgId = pOsvgId_
    , _osvgOAuthToken = Nothing
    , _osvgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
osvgQuotaUser :: Lens' OperatingSystemVersionsGet' (Maybe Text)
osvgQuotaUser
  = lens _osvgQuotaUser
      (\ s a -> s{_osvgQuotaUser = a})

-- | Returns response with indentations and line breaks.
osvgPrettyPrint :: Lens' OperatingSystemVersionsGet' Bool
osvgPrettyPrint
  = lens _osvgPrettyPrint
      (\ s a -> s{_osvgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
osvgUserIP :: Lens' OperatingSystemVersionsGet' (Maybe Text)
osvgUserIP
  = lens _osvgUserIP (\ s a -> s{_osvgUserIP = a})

-- | User profile ID associated with this request.
osvgProFileId :: Lens' OperatingSystemVersionsGet' Int64
osvgProFileId
  = lens _osvgProFileId
      (\ s a -> s{_osvgProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
osvgKey :: Lens' OperatingSystemVersionsGet' (Maybe AuthKey)
osvgKey = lens _osvgKey (\ s a -> s{_osvgKey = a})

-- | Operating system version ID.
osvgId :: Lens' OperatingSystemVersionsGet' Int64
osvgId = lens _osvgId (\ s a -> s{_osvgId = a})

-- | OAuth 2.0 token for the current user.
osvgOAuthToken :: Lens' OperatingSystemVersionsGet' (Maybe OAuthToken)
osvgOAuthToken
  = lens _osvgOAuthToken
      (\ s a -> s{_osvgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
osvgFields :: Lens' OperatingSystemVersionsGet' (Maybe Text)
osvgFields
  = lens _osvgFields (\ s a -> s{_osvgFields = a})

instance GoogleAuth OperatingSystemVersionsGet' where
        authKey = osvgKey . _Just
        authToken = osvgOAuthToken . _Just

instance GoogleRequest OperatingSystemVersionsGet'
         where
        type Rs OperatingSystemVersionsGet' =
             OperatingSystemVersion
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u OperatingSystemVersionsGet'{..}
          = go _osvgProFileId _osvgId _osvgQuotaUser
              (Just _osvgPrettyPrint)
              _osvgUserIP
              _osvgFields
              _osvgKey
              _osvgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OperatingSystemVersionsGetResource)
                      r
                      u
