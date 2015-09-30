{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Subaccounts.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing subaccount. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSubaccountsPatch@.
module DFAReporting.Subaccounts.Patch
    (
    -- * REST Resource
      SubaccountsPatchAPI

    -- * Creating a Request
    , subaccountsPatch
    , SubaccountsPatch

    -- * Request Lenses
    , sppQuotaUser
    , sppPrettyPrint
    , sppUserIp
    , sppProfileId
    , sppKey
    , sppId
    , sppOauthToken
    , sppFields
    , sppAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSubaccountsPatch@ which the
-- 'SubaccountsPatch' request conforms to.
type SubaccountsPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "subaccounts" :>
           QueryParam "id" Int64 :> Patch '[JSON] Subaccount

-- | Updates an existing subaccount. This method supports patch semantics.
--
-- /See:/ 'subaccountsPatch' smart constructor.
data SubaccountsPatch = SubaccountsPatch
    { _sppQuotaUser   :: !(Maybe Text)
    , _sppPrettyPrint :: !Bool
    , _sppUserIp      :: !(Maybe Text)
    , _sppProfileId   :: !Int64
    , _sppKey         :: !(Maybe Text)
    , _sppId          :: !Int64
    , _sppOauthToken  :: !(Maybe Text)
    , _sppFields      :: !(Maybe Text)
    , _sppAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubaccountsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sppQuotaUser'
--
-- * 'sppPrettyPrint'
--
-- * 'sppUserIp'
--
-- * 'sppProfileId'
--
-- * 'sppKey'
--
-- * 'sppId'
--
-- * 'sppOauthToken'
--
-- * 'sppFields'
--
-- * 'sppAlt'
subaccountsPatch
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> SubaccountsPatch
subaccountsPatch pSppProfileId_ pSppId_ =
    SubaccountsPatch
    { _sppQuotaUser = Nothing
    , _sppPrettyPrint = True
    , _sppUserIp = Nothing
    , _sppProfileId = pSppProfileId_
    , _sppKey = Nothing
    , _sppId = pSppId_
    , _sppOauthToken = Nothing
    , _sppFields = Nothing
    , _sppAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sppQuotaUser :: Lens' SubaccountsPatch' (Maybe Text)
sppQuotaUser
  = lens _sppQuotaUser (\ s a -> s{_sppQuotaUser = a})

-- | Returns response with indentations and line breaks.
sppPrettyPrint :: Lens' SubaccountsPatch' Bool
sppPrettyPrint
  = lens _sppPrettyPrint
      (\ s a -> s{_sppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sppUserIp :: Lens' SubaccountsPatch' (Maybe Text)
sppUserIp
  = lens _sppUserIp (\ s a -> s{_sppUserIp = a})

-- | User profile ID associated with this request.
sppProfileId :: Lens' SubaccountsPatch' Int64
sppProfileId
  = lens _sppProfileId (\ s a -> s{_sppProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sppKey :: Lens' SubaccountsPatch' (Maybe Text)
sppKey = lens _sppKey (\ s a -> s{_sppKey = a})

-- | Subaccount ID.
sppId :: Lens' SubaccountsPatch' Int64
sppId = lens _sppId (\ s a -> s{_sppId = a})

-- | OAuth 2.0 token for the current user.
sppOauthToken :: Lens' SubaccountsPatch' (Maybe Text)
sppOauthToken
  = lens _sppOauthToken
      (\ s a -> s{_sppOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sppFields :: Lens' SubaccountsPatch' (Maybe Text)
sppFields
  = lens _sppFields (\ s a -> s{_sppFields = a})

-- | Data format for the response.
sppAlt :: Lens' SubaccountsPatch' Text
sppAlt = lens _sppAlt (\ s a -> s{_sppAlt = a})

instance GoogleRequest SubaccountsPatch' where
        type Rs SubaccountsPatch' = Subaccount
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SubaccountsPatch{..}
          = go _sppQuotaUser _sppPrettyPrint _sppUserIp
              _sppProfileId
              _sppKey
              (Just _sppId)
              _sppOauthToken
              _sppFields
              _sppAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubaccountsPatchAPI)
                      r
                      u
