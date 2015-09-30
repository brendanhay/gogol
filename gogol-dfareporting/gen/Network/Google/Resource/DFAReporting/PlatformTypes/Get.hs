{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module DFAReporting.PlatformTypes.Get
    (
    -- * REST Resource
      PlatformTypesGetAPI

    -- * Creating a Request
    , platformTypesGet
    , PlatformTypesGet

    -- * Request Lenses
    , ptgQuotaUser
    , ptgPrettyPrint
    , ptgUserIp
    , ptgProfileId
    , ptgKey
    , ptgId
    , ptgOauthToken
    , ptgFields
    , ptgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlatformTypesGet@ which the
-- 'PlatformTypesGet' request conforms to.
type PlatformTypesGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "platformTypes" :>
           Capture "id" Int64 :> Get '[JSON] PlatformType

-- | Gets one platform type by ID.
--
-- /See:/ 'platformTypesGet' smart constructor.
data PlatformTypesGet = PlatformTypesGet
    { _ptgQuotaUser   :: !(Maybe Text)
    , _ptgPrettyPrint :: !Bool
    , _ptgUserIp      :: !(Maybe Text)
    , _ptgProfileId   :: !Int64
    , _ptgKey         :: !(Maybe Text)
    , _ptgId          :: !Int64
    , _ptgOauthToken  :: !(Maybe Text)
    , _ptgFields      :: !(Maybe Text)
    , _ptgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlatformTypesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptgQuotaUser'
--
-- * 'ptgPrettyPrint'
--
-- * 'ptgUserIp'
--
-- * 'ptgProfileId'
--
-- * 'ptgKey'
--
-- * 'ptgId'
--
-- * 'ptgOauthToken'
--
-- * 'ptgFields'
--
-- * 'ptgAlt'
platformTypesGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlatformTypesGet
platformTypesGet pPtgProfileId_ pPtgId_ =
    PlatformTypesGet
    { _ptgQuotaUser = Nothing
    , _ptgPrettyPrint = True
    , _ptgUserIp = Nothing
    , _ptgProfileId = pPtgProfileId_
    , _ptgKey = Nothing
    , _ptgId = pPtgId_
    , _ptgOauthToken = Nothing
    , _ptgFields = Nothing
    , _ptgAlt = "json"
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
ptgUserIp :: Lens' PlatformTypesGet' (Maybe Text)
ptgUserIp
  = lens _ptgUserIp (\ s a -> s{_ptgUserIp = a})

-- | User profile ID associated with this request.
ptgProfileId :: Lens' PlatformTypesGet' Int64
ptgProfileId
  = lens _ptgProfileId (\ s a -> s{_ptgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ptgKey :: Lens' PlatformTypesGet' (Maybe Text)
ptgKey = lens _ptgKey (\ s a -> s{_ptgKey = a})

-- | Platform type ID.
ptgId :: Lens' PlatformTypesGet' Int64
ptgId = lens _ptgId (\ s a -> s{_ptgId = a})

-- | OAuth 2.0 token for the current user.
ptgOauthToken :: Lens' PlatformTypesGet' (Maybe Text)
ptgOauthToken
  = lens _ptgOauthToken
      (\ s a -> s{_ptgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ptgFields :: Lens' PlatformTypesGet' (Maybe Text)
ptgFields
  = lens _ptgFields (\ s a -> s{_ptgFields = a})

-- | Data format for the response.
ptgAlt :: Lens' PlatformTypesGet' Text
ptgAlt = lens _ptgAlt (\ s a -> s{_ptgAlt = a})

instance GoogleRequest PlatformTypesGet' where
        type Rs PlatformTypesGet' = PlatformType
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlatformTypesGet{..}
          = go _ptgQuotaUser _ptgPrettyPrint _ptgUserIp
              _ptgProfileId
              _ptgKey
              _ptgId
              _ptgOauthToken
              _ptgFields
              _ptgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlatformTypesGetAPI)
                      r
                      u
