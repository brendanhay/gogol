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
-- Module      : Network.Google.Resource.DFAReporting.PlatformTypes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one platform type by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlatformTypesGet@.
module Network.Google.Resource.DFAReporting.PlatformTypes.Get
    (
    -- * REST Resource
      PlatformTypesGetResource

    -- * Creating a Request
    , platformTypesGet'
    , PlatformTypesGet'

    -- * Request Lenses
    , ptgQuotaUser
    , ptgPrettyPrint
    , ptgUserIP
    , ptgProfileId
    , ptgKey
    , ptgId
    , ptgOAuthToken
    , ptgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlatformTypesGet@ which the
-- 'PlatformTypesGet'' request conforms to.
type PlatformTypesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "platformTypes" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] PlatformType

-- | Gets one platform type by ID.
--
-- /See:/ 'platformTypesGet'' smart constructor.
data PlatformTypesGet' = PlatformTypesGet'
    { _ptgQuotaUser   :: !(Maybe Text)
    , _ptgPrettyPrint :: !Bool
    , _ptgUserIP      :: !(Maybe Text)
    , _ptgProfileId   :: !Int64
    , _ptgKey         :: !(Maybe Key)
    , _ptgId          :: !Int64
    , _ptgOAuthToken  :: !(Maybe OAuthToken)
    , _ptgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlatformTypesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptgQuotaUser'
--
-- * 'ptgPrettyPrint'
--
-- * 'ptgUserIP'
--
-- * 'ptgProfileId'
--
-- * 'ptgKey'
--
-- * 'ptgId'
--
-- * 'ptgOAuthToken'
--
-- * 'ptgFields'
platformTypesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlatformTypesGet'
platformTypesGet' pPtgProfileId_ pPtgId_ =
    PlatformTypesGet'
    { _ptgQuotaUser = Nothing
    , _ptgPrettyPrint = True
    , _ptgUserIP = Nothing
    , _ptgProfileId = pPtgProfileId_
    , _ptgKey = Nothing
    , _ptgId = pPtgId_
    , _ptgOAuthToken = Nothing
    , _ptgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ptgQuotaUser :: Lens' PlatformTypesGet' (Maybe Text)
ptgQuotaUser
  = lens _ptgQuotaUser (\ s a -> s{_ptgQuotaUser = a})

-- | Returns response with indentations and line breaks.
ptgPrettyPrint :: Lens' PlatformTypesGet' Bool
ptgPrettyPrint
  = lens _ptgPrettyPrint
      (\ s a -> s{_ptgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ptgUserIP :: Lens' PlatformTypesGet' (Maybe Text)
ptgUserIP
  = lens _ptgUserIP (\ s a -> s{_ptgUserIP = a})

-- | User profile ID associated with this request.
ptgProfileId :: Lens' PlatformTypesGet' Int64
ptgProfileId
  = lens _ptgProfileId (\ s a -> s{_ptgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ptgKey :: Lens' PlatformTypesGet' (Maybe Key)
ptgKey = lens _ptgKey (\ s a -> s{_ptgKey = a})

-- | Platform type ID.
ptgId :: Lens' PlatformTypesGet' Int64
ptgId = lens _ptgId (\ s a -> s{_ptgId = a})

-- | OAuth 2.0 token for the current user.
ptgOAuthToken :: Lens' PlatformTypesGet' (Maybe OAuthToken)
ptgOAuthToken
  = lens _ptgOAuthToken
      (\ s a -> s{_ptgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ptgFields :: Lens' PlatformTypesGet' (Maybe Text)
ptgFields
  = lens _ptgFields (\ s a -> s{_ptgFields = a})

instance GoogleAuth PlatformTypesGet' where
        authKey = ptgKey . _Just
        authToken = ptgOAuthToken . _Just

instance GoogleRequest PlatformTypesGet' where
        type Rs PlatformTypesGet' = PlatformType
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlatformTypesGet'{..}
          = go _ptgQuotaUser (Just _ptgPrettyPrint) _ptgUserIP
              _ptgProfileId
              _ptgKey
              _ptgId
              _ptgOAuthToken
              _ptgFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlatformTypesGetResource)
                      r
                      u
