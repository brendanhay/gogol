{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.CreativeGroups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one creative group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativeGroupsGet@.
module DFAReporting.CreativeGroups.Get
    (
    -- * REST Resource
      CreativeGroupsGetAPI

    -- * Creating a Request
    , creativeGroupsGet
    , CreativeGroupsGet

    -- * Request Lenses
    , cggQuotaUser
    , cggPrettyPrint
    , cggUserIp
    , cggProfileId
    , cggKey
    , cggId
    , cggOauthToken
    , cggFields
    , cggAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativeGroupsGet@ which the
-- 'CreativeGroupsGet' request conforms to.
type CreativeGroupsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creativeGroups" :>
           Capture "id" Int64 :> Get '[JSON] CreativeGroup

-- | Gets one creative group by ID.
--
-- /See:/ 'creativeGroupsGet' smart constructor.
data CreativeGroupsGet = CreativeGroupsGet
    { _cggQuotaUser   :: !(Maybe Text)
    , _cggPrettyPrint :: !Bool
    , _cggUserIp      :: !(Maybe Text)
    , _cggProfileId   :: !Int64
    , _cggKey         :: !(Maybe Text)
    , _cggId          :: !Int64
    , _cggOauthToken  :: !(Maybe Text)
    , _cggFields      :: !(Maybe Text)
    , _cggAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeGroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cggQuotaUser'
--
-- * 'cggPrettyPrint'
--
-- * 'cggUserIp'
--
-- * 'cggProfileId'
--
-- * 'cggKey'
--
-- * 'cggId'
--
-- * 'cggOauthToken'
--
-- * 'cggFields'
--
-- * 'cggAlt'
creativeGroupsGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CreativeGroupsGet
creativeGroupsGet pCggProfileId_ pCggId_ =
    CreativeGroupsGet
    { _cggQuotaUser = Nothing
    , _cggPrettyPrint = True
    , _cggUserIp = Nothing
    , _cggProfileId = pCggProfileId_
    , _cggKey = Nothing
    , _cggId = pCggId_
    , _cggOauthToken = Nothing
    , _cggFields = Nothing
    , _cggAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cggQuotaUser :: Lens' CreativeGroupsGet' (Maybe Text)
cggQuotaUser
  = lens _cggQuotaUser (\ s a -> s{_cggQuotaUser = a})

-- | Returns response with indentations and line breaks.
cggPrettyPrint :: Lens' CreativeGroupsGet' Bool
cggPrettyPrint
  = lens _cggPrettyPrint
      (\ s a -> s{_cggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cggUserIp :: Lens' CreativeGroupsGet' (Maybe Text)
cggUserIp
  = lens _cggUserIp (\ s a -> s{_cggUserIp = a})

-- | User profile ID associated with this request.
cggProfileId :: Lens' CreativeGroupsGet' Int64
cggProfileId
  = lens _cggProfileId (\ s a -> s{_cggProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cggKey :: Lens' CreativeGroupsGet' (Maybe Text)
cggKey = lens _cggKey (\ s a -> s{_cggKey = a})

-- | Creative group ID.
cggId :: Lens' CreativeGroupsGet' Int64
cggId = lens _cggId (\ s a -> s{_cggId = a})

-- | OAuth 2.0 token for the current user.
cggOauthToken :: Lens' CreativeGroupsGet' (Maybe Text)
cggOauthToken
  = lens _cggOauthToken
      (\ s a -> s{_cggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cggFields :: Lens' CreativeGroupsGet' (Maybe Text)
cggFields
  = lens _cggFields (\ s a -> s{_cggFields = a})

-- | Data format for the response.
cggAlt :: Lens' CreativeGroupsGet' Text
cggAlt = lens _cggAlt (\ s a -> s{_cggAlt = a})

instance GoogleRequest CreativeGroupsGet' where
        type Rs CreativeGroupsGet' = CreativeGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CreativeGroupsGet{..}
          = go _cggQuotaUser _cggPrettyPrint _cggUserIp
              _cggProfileId
              _cggKey
              _cggId
              _cggOauthToken
              _cggFields
              _cggAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CreativeGroupsGetAPI)
                      r
                      u
