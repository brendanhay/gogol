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
-- Module      : Network.Google.Resource.DFAReporting.OperatingSystemVersions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of operating system versions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingOperatingSystemVersionsList@.
module Network.Google.Resource.DFAReporting.OperatingSystemVersions.List
    (
    -- * REST Resource
      OperatingSystemVersionsListResource

    -- * Creating a Request
    , operatingSystemVersionsList'
    , OperatingSystemVersionsList'

    -- * Request Lenses
    , osvlQuotaUser
    , osvlPrettyPrint
    , osvlUserIP
    , osvlProFileId
    , osvlKey
    , osvlOAuthToken
    , osvlFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingOperatingSystemVersionsList@ which the
-- 'OperatingSystemVersionsList'' request conforms to.
type OperatingSystemVersionsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "operatingSystemVersions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] OperatingSystemVersionsListResponse

-- | Retrieves a list of operating system versions.
--
-- /See:/ 'operatingSystemVersionsList'' smart constructor.
data OperatingSystemVersionsList' = OperatingSystemVersionsList'
    { _osvlQuotaUser   :: !(Maybe Text)
    , _osvlPrettyPrint :: !Bool
    , _osvlUserIP      :: !(Maybe Text)
    , _osvlProFileId   :: !Int64
    , _osvlKey         :: !(Maybe AuthKey)
    , _osvlOAuthToken  :: !(Maybe OAuthToken)
    , _osvlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperatingSystemVersionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osvlQuotaUser'
--
-- * 'osvlPrettyPrint'
--
-- * 'osvlUserIP'
--
-- * 'osvlProFileId'
--
-- * 'osvlKey'
--
-- * 'osvlOAuthToken'
--
-- * 'osvlFields'
operatingSystemVersionsList'
    :: Int64 -- ^ 'profileId'
    -> OperatingSystemVersionsList'
operatingSystemVersionsList' pOsvlProFileId_ =
    OperatingSystemVersionsList'
    { _osvlQuotaUser = Nothing
    , _osvlPrettyPrint = True
    , _osvlUserIP = Nothing
    , _osvlProFileId = pOsvlProFileId_
    , _osvlKey = Nothing
    , _osvlOAuthToken = Nothing
    , _osvlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
osvlQuotaUser :: Lens' OperatingSystemVersionsList' (Maybe Text)
osvlQuotaUser
  = lens _osvlQuotaUser
      (\ s a -> s{_osvlQuotaUser = a})

-- | Returns response with indentations and line breaks.
osvlPrettyPrint :: Lens' OperatingSystemVersionsList' Bool
osvlPrettyPrint
  = lens _osvlPrettyPrint
      (\ s a -> s{_osvlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
osvlUserIP :: Lens' OperatingSystemVersionsList' (Maybe Text)
osvlUserIP
  = lens _osvlUserIP (\ s a -> s{_osvlUserIP = a})

-- | User profile ID associated with this request.
osvlProFileId :: Lens' OperatingSystemVersionsList' Int64
osvlProFileId
  = lens _osvlProFileId
      (\ s a -> s{_osvlProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
osvlKey :: Lens' OperatingSystemVersionsList' (Maybe AuthKey)
osvlKey = lens _osvlKey (\ s a -> s{_osvlKey = a})

-- | OAuth 2.0 token for the current user.
osvlOAuthToken :: Lens' OperatingSystemVersionsList' (Maybe OAuthToken)
osvlOAuthToken
  = lens _osvlOAuthToken
      (\ s a -> s{_osvlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
osvlFields :: Lens' OperatingSystemVersionsList' (Maybe Text)
osvlFields
  = lens _osvlFields (\ s a -> s{_osvlFields = a})

instance GoogleAuth OperatingSystemVersionsList'
         where
        _AuthKey = osvlKey . _Just
        _AuthToken = osvlOAuthToken . _Just

instance GoogleRequest OperatingSystemVersionsList'
         where
        type Rs OperatingSystemVersionsList' =
             OperatingSystemVersionsListResponse
        request = requestWith dFAReportingRequest
        requestWith rq OperatingSystemVersionsList'{..}
          = go _osvlProFileId _osvlQuotaUser
              (Just _osvlPrettyPrint)
              _osvlUserIP
              _osvlFields
              _osvlKey
              _osvlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy OperatingSystemVersionsListResource)
                      rq
