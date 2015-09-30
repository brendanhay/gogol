{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Ads.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one ad by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdsGet@.
module DFAReporting.Ads.Get
    (
    -- * REST Resource
      AdsGetAPI

    -- * Creating a Request
    , adsGet
    , AdsGet

    -- * Request Lenses
    , ag1QuotaUser
    , ag1PrettyPrint
    , ag1UserIp
    , ag1ProfileId
    , ag1Key
    , ag1Id
    , ag1OauthToken
    , ag1Fields
    , ag1Alt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdsGet@ which the
-- 'AdsGet' request conforms to.
type AdsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "ads" :> Capture "id" Int64 :> Get '[JSON] Ad

-- | Gets one ad by ID.
--
-- /See:/ 'adsGet' smart constructor.
data AdsGet = AdsGet
    { _ag1QuotaUser   :: !(Maybe Text)
    , _ag1PrettyPrint :: !Bool
    , _ag1UserIp      :: !(Maybe Text)
    , _ag1ProfileId   :: !Int64
    , _ag1Key         :: !(Maybe Text)
    , _ag1Id          :: !Int64
    , _ag1OauthToken  :: !(Maybe Text)
    , _ag1Fields      :: !(Maybe Text)
    , _ag1Alt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ag1QuotaUser'
--
-- * 'ag1PrettyPrint'
--
-- * 'ag1UserIp'
--
-- * 'ag1ProfileId'
--
-- * 'ag1Key'
--
-- * 'ag1Id'
--
-- * 'ag1OauthToken'
--
-- * 'ag1Fields'
--
-- * 'ag1Alt'
adsGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AdsGet
adsGet pAg1ProfileId_ pAg1Id_ =
    AdsGet
    { _ag1QuotaUser = Nothing
    , _ag1PrettyPrint = True
    , _ag1UserIp = Nothing
    , _ag1ProfileId = pAg1ProfileId_
    , _ag1Key = Nothing
    , _ag1Id = pAg1Id_
    , _ag1OauthToken = Nothing
    , _ag1Fields = Nothing
    , _ag1Alt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ag1QuotaUser :: Lens' AdsGet' (Maybe Text)
ag1QuotaUser
  = lens _ag1QuotaUser (\ s a -> s{_ag1QuotaUser = a})

-- | Returns response with indentations and line breaks.
ag1PrettyPrint :: Lens' AdsGet' Bool
ag1PrettyPrint
  = lens _ag1PrettyPrint
      (\ s a -> s{_ag1PrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ag1UserIp :: Lens' AdsGet' (Maybe Text)
ag1UserIp
  = lens _ag1UserIp (\ s a -> s{_ag1UserIp = a})

-- | User profile ID associated with this request.
ag1ProfileId :: Lens' AdsGet' Int64
ag1ProfileId
  = lens _ag1ProfileId (\ s a -> s{_ag1ProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ag1Key :: Lens' AdsGet' (Maybe Text)
ag1Key = lens _ag1Key (\ s a -> s{_ag1Key = a})

-- | Ad ID.
ag1Id :: Lens' AdsGet' Int64
ag1Id = lens _ag1Id (\ s a -> s{_ag1Id = a})

-- | OAuth 2.0 token for the current user.
ag1OauthToken :: Lens' AdsGet' (Maybe Text)
ag1OauthToken
  = lens _ag1OauthToken
      (\ s a -> s{_ag1OauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ag1Fields :: Lens' AdsGet' (Maybe Text)
ag1Fields
  = lens _ag1Fields (\ s a -> s{_ag1Fields = a})

-- | Data format for the response.
ag1Alt :: Lens' AdsGet' Text
ag1Alt = lens _ag1Alt (\ s a -> s{_ag1Alt = a})

instance GoogleRequest AdsGet' where
        type Rs AdsGet' = Ad
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdsGet{..}
          = go _ag1QuotaUser _ag1PrettyPrint _ag1UserIp
              _ag1ProfileId
              _ag1Key
              _ag1Id
              _ag1OauthToken
              _ag1Fields
              _ag1Alt
          where go
                  = clientWithRoute (Proxy :: Proxy AdsGetAPI) r u
