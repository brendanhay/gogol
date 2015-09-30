{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.PostalCodes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of postal codes.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPostalCodesList@.
module DFAReporting.PostalCodes.List
    (
    -- * REST Resource
      PostalCodesListAPI

    -- * Creating a Request
    , postalCodesList
    , PostalCodesList

    -- * Request Lenses
    , pclQuotaUser
    , pclPrettyPrint
    , pclUserIp
    , pclProfileId
    , pclKey
    , pclOauthToken
    , pclFields
    , pclAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPostalCodesList@ which the
-- 'PostalCodesList' request conforms to.
type PostalCodesListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "postalCodes" :> Get '[JSON] PostalCodesListResponse

-- | Retrieves a list of postal codes.
--
-- /See:/ 'postalCodesList' smart constructor.
data PostalCodesList = PostalCodesList
    { _pclQuotaUser   :: !(Maybe Text)
    , _pclPrettyPrint :: !Bool
    , _pclUserIp      :: !(Maybe Text)
    , _pclProfileId   :: !Int64
    , _pclKey         :: !(Maybe Text)
    , _pclOauthToken  :: !(Maybe Text)
    , _pclFields      :: !(Maybe Text)
    , _pclAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PostalCodesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pclQuotaUser'
--
-- * 'pclPrettyPrint'
--
-- * 'pclUserIp'
--
-- * 'pclProfileId'
--
-- * 'pclKey'
--
-- * 'pclOauthToken'
--
-- * 'pclFields'
--
-- * 'pclAlt'
postalCodesList
    :: Int64 -- ^ 'profileId'
    -> PostalCodesList
postalCodesList pPclProfileId_ =
    PostalCodesList
    { _pclQuotaUser = Nothing
    , _pclPrettyPrint = True
    , _pclUserIp = Nothing
    , _pclProfileId = pPclProfileId_
    , _pclKey = Nothing
    , _pclOauthToken = Nothing
    , _pclFields = Nothing
    , _pclAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pclQuotaUser :: Lens' PostalCodesList' (Maybe Text)
pclQuotaUser
  = lens _pclQuotaUser (\ s a -> s{_pclQuotaUser = a})

-- | Returns response with indentations and line breaks.
pclPrettyPrint :: Lens' PostalCodesList' Bool
pclPrettyPrint
  = lens _pclPrettyPrint
      (\ s a -> s{_pclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pclUserIp :: Lens' PostalCodesList' (Maybe Text)
pclUserIp
  = lens _pclUserIp (\ s a -> s{_pclUserIp = a})

-- | User profile ID associated with this request.
pclProfileId :: Lens' PostalCodesList' Int64
pclProfileId
  = lens _pclProfileId (\ s a -> s{_pclProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pclKey :: Lens' PostalCodesList' (Maybe Text)
pclKey = lens _pclKey (\ s a -> s{_pclKey = a})

-- | OAuth 2.0 token for the current user.
pclOauthToken :: Lens' PostalCodesList' (Maybe Text)
pclOauthToken
  = lens _pclOauthToken
      (\ s a -> s{_pclOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pclFields :: Lens' PostalCodesList' (Maybe Text)
pclFields
  = lens _pclFields (\ s a -> s{_pclFields = a})

-- | Data format for the response.
pclAlt :: Lens' PostalCodesList' Text
pclAlt = lens _pclAlt (\ s a -> s{_pclAlt = a})

instance GoogleRequest PostalCodesList' where
        type Rs PostalCodesList' = PostalCodesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PostalCodesList{..}
          = go _pclQuotaUser _pclPrettyPrint _pclUserIp
              _pclProfileId
              _pclKey
              _pclOauthToken
              _pclFields
              _pclAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PostalCodesListAPI)
                      r
                      u
