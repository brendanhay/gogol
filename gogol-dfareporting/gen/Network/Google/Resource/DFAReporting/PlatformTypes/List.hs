{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.PlatformTypes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of platform types.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlatformTypesList@.
module Network.Google.Resource.DFAReporting.PlatformTypes.List
    (
    -- * REST Resource
      PlatformTypesListResource

    -- * Creating a Request
    , platformTypesList'
    , PlatformTypesList'

    -- * Request Lenses
    , ptlQuotaUser
    , ptlPrettyPrint
    , ptlUserIp
    , ptlProfileId
    , ptlKey
    , ptlOauthToken
    , ptlFields
    , ptlAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlatformTypesList@ which the
-- 'PlatformTypesList'' request conforms to.
type PlatformTypesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "platformTypes" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] PlatformTypesListResponse

-- | Retrieves a list of platform types.
--
-- /See:/ 'platformTypesList'' smart constructor.
data PlatformTypesList' = PlatformTypesList'
    { _ptlQuotaUser   :: !(Maybe Text)
    , _ptlPrettyPrint :: !Bool
    , _ptlUserIp      :: !(Maybe Text)
    , _ptlProfileId   :: !Int64
    , _ptlKey         :: !(Maybe Text)
    , _ptlOauthToken  :: !(Maybe Text)
    , _ptlFields      :: !(Maybe Text)
    , _ptlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlatformTypesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptlQuotaUser'
--
-- * 'ptlPrettyPrint'
--
-- * 'ptlUserIp'
--
-- * 'ptlProfileId'
--
-- * 'ptlKey'
--
-- * 'ptlOauthToken'
--
-- * 'ptlFields'
--
-- * 'ptlAlt'
platformTypesList'
    :: Int64 -- ^ 'profileId'
    -> PlatformTypesList'
platformTypesList' pPtlProfileId_ =
    PlatformTypesList'
    { _ptlQuotaUser = Nothing
    , _ptlPrettyPrint = True
    , _ptlUserIp = Nothing
    , _ptlProfileId = pPtlProfileId_
    , _ptlKey = Nothing
    , _ptlOauthToken = Nothing
    , _ptlFields = Nothing
    , _ptlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ptlQuotaUser :: Lens' PlatformTypesList' (Maybe Text)
ptlQuotaUser
  = lens _ptlQuotaUser (\ s a -> s{_ptlQuotaUser = a})

-- | Returns response with indentations and line breaks.
ptlPrettyPrint :: Lens' PlatformTypesList' Bool
ptlPrettyPrint
  = lens _ptlPrettyPrint
      (\ s a -> s{_ptlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ptlUserIp :: Lens' PlatformTypesList' (Maybe Text)
ptlUserIp
  = lens _ptlUserIp (\ s a -> s{_ptlUserIp = a})

-- | User profile ID associated with this request.
ptlProfileId :: Lens' PlatformTypesList' Int64
ptlProfileId
  = lens _ptlProfileId (\ s a -> s{_ptlProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ptlKey :: Lens' PlatformTypesList' (Maybe Text)
ptlKey = lens _ptlKey (\ s a -> s{_ptlKey = a})

-- | OAuth 2.0 token for the current user.
ptlOauthToken :: Lens' PlatformTypesList' (Maybe Text)
ptlOauthToken
  = lens _ptlOauthToken
      (\ s a -> s{_ptlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ptlFields :: Lens' PlatformTypesList' (Maybe Text)
ptlFields
  = lens _ptlFields (\ s a -> s{_ptlFields = a})

-- | Data format for the response.
ptlAlt :: Lens' PlatformTypesList' Alt
ptlAlt = lens _ptlAlt (\ s a -> s{_ptlAlt = a})

instance GoogleRequest PlatformTypesList' where
        type Rs PlatformTypesList' =
             PlatformTypesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlatformTypesList'{..}
          = go _ptlQuotaUser (Just _ptlPrettyPrint) _ptlUserIp
              _ptlProfileId
              _ptlKey
              _ptlOauthToken
              _ptlFields
              (Just _ptlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlatformTypesListResource)
                      r
                      u
