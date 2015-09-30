{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Ads.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing ad. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdsPatch@.
module DFAReporting.Ads.Patch
    (
    -- * REST Resource
      AdsPatchAPI

    -- * Creating a Request
    , adsPatch
    , AdsPatch

    -- * Request Lenses
    , adsdQuotaUser
    , adsdPrettyPrint
    , adsdUserIp
    , adsdProfileId
    , adsdKey
    , adsdId
    , adsdOauthToken
    , adsdFields
    , adsdAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdsPatch@ which the
-- 'AdsPatch' request conforms to.
type AdsPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "ads" :> QueryParam "id" Int64 :> Patch '[JSON] Ad

-- | Updates an existing ad. This method supports patch semantics.
--
-- /See:/ 'adsPatch' smart constructor.
data AdsPatch = AdsPatch
    { _adsdQuotaUser   :: !(Maybe Text)
    , _adsdPrettyPrint :: !Bool
    , _adsdUserIp      :: !(Maybe Text)
    , _adsdProfileId   :: !Int64
    , _adsdKey         :: !(Maybe Text)
    , _adsdId          :: !Int64
    , _adsdOauthToken  :: !(Maybe Text)
    , _adsdFields      :: !(Maybe Text)
    , _adsdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adsdQuotaUser'
--
-- * 'adsdPrettyPrint'
--
-- * 'adsdUserIp'
--
-- * 'adsdProfileId'
--
-- * 'adsdKey'
--
-- * 'adsdId'
--
-- * 'adsdOauthToken'
--
-- * 'adsdFields'
--
-- * 'adsdAlt'
adsPatch
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AdsPatch
adsPatch pAdsdProfileId_ pAdsdId_ =
    AdsPatch
    { _adsdQuotaUser = Nothing
    , _adsdPrettyPrint = True
    , _adsdUserIp = Nothing
    , _adsdProfileId = pAdsdProfileId_
    , _adsdKey = Nothing
    , _adsdId = pAdsdId_
    , _adsdOauthToken = Nothing
    , _adsdFields = Nothing
    , _adsdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
adsdQuotaUser :: Lens' AdsPatch' (Maybe Text)
adsdQuotaUser
  = lens _adsdQuotaUser
      (\ s a -> s{_adsdQuotaUser = a})

-- | Returns response with indentations and line breaks.
adsdPrettyPrint :: Lens' AdsPatch' Bool
adsdPrettyPrint
  = lens _adsdPrettyPrint
      (\ s a -> s{_adsdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
adsdUserIp :: Lens' AdsPatch' (Maybe Text)
adsdUserIp
  = lens _adsdUserIp (\ s a -> s{_adsdUserIp = a})

-- | User profile ID associated with this request.
adsdProfileId :: Lens' AdsPatch' Int64
adsdProfileId
  = lens _adsdProfileId
      (\ s a -> s{_adsdProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adsdKey :: Lens' AdsPatch' (Maybe Text)
adsdKey = lens _adsdKey (\ s a -> s{_adsdKey = a})

-- | Ad ID.
adsdId :: Lens' AdsPatch' Int64
adsdId = lens _adsdId (\ s a -> s{_adsdId = a})

-- | OAuth 2.0 token for the current user.
adsdOauthToken :: Lens' AdsPatch' (Maybe Text)
adsdOauthToken
  = lens _adsdOauthToken
      (\ s a -> s{_adsdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
adsdFields :: Lens' AdsPatch' (Maybe Text)
adsdFields
  = lens _adsdFields (\ s a -> s{_adsdFields = a})

-- | Data format for the response.
adsdAlt :: Lens' AdsPatch' Text
adsdAlt = lens _adsdAlt (\ s a -> s{_adsdAlt = a})

instance GoogleRequest AdsPatch' where
        type Rs AdsPatch' = Ad
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdsPatch{..}
          = go _adsdQuotaUser _adsdPrettyPrint _adsdUserIp
              _adsdProfileId
              _adsdKey
              (Just _adsdId)
              _adsdOauthToken
              _adsdFields
              _adsdAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AdsPatchAPI) r u
