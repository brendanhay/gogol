{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.LandingPages.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing campaign landing page.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingLandingPagesDelete@.
module DFAReporting.LandingPages.Delete
    (
    -- * REST Resource
      LandingPagesDeleteAPI

    -- * Creating a Request
    , landingPagesDelete
    , LandingPagesDelete

    -- * Request Lenses
    , lpdQuotaUser
    , lpdPrettyPrint
    , lpdUserIp
    , lpdCampaignId
    , lpdProfileId
    , lpdKey
    , lpdId
    , lpdOauthToken
    , lpdFields
    , lpdAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingLandingPagesDelete@ which the
-- 'LandingPagesDelete' request conforms to.
type LandingPagesDeleteAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "campaignId" Int64 :>
             "landingPages" :>
               Capture "id" Int64 :> Delete '[JSON] ()

-- | Deletes an existing campaign landing page.
--
-- /See:/ 'landingPagesDelete' smart constructor.
data LandingPagesDelete = LandingPagesDelete
    { _lpdQuotaUser   :: !(Maybe Text)
    , _lpdPrettyPrint :: !Bool
    , _lpdUserIp      :: !(Maybe Text)
    , _lpdCampaignId  :: !Int64
    , _lpdProfileId   :: !Int64
    , _lpdKey         :: !(Maybe Text)
    , _lpdId          :: !Int64
    , _lpdOauthToken  :: !(Maybe Text)
    , _lpdFields      :: !(Maybe Text)
    , _lpdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpdQuotaUser'
--
-- * 'lpdPrettyPrint'
--
-- * 'lpdUserIp'
--
-- * 'lpdCampaignId'
--
-- * 'lpdProfileId'
--
-- * 'lpdKey'
--
-- * 'lpdId'
--
-- * 'lpdOauthToken'
--
-- * 'lpdFields'
--
-- * 'lpdAlt'
landingPagesDelete
    :: Int64 -- ^ 'campaignId'
    -> Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> LandingPagesDelete
landingPagesDelete pLpdCampaignId_ pLpdProfileId_ pLpdId_ =
    LandingPagesDelete
    { _lpdQuotaUser = Nothing
    , _lpdPrettyPrint = True
    , _lpdUserIp = Nothing
    , _lpdCampaignId = pLpdCampaignId_
    , _lpdProfileId = pLpdProfileId_
    , _lpdKey = Nothing
    , _lpdId = pLpdId_
    , _lpdOauthToken = Nothing
    , _lpdFields = Nothing
    , _lpdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lpdQuotaUser :: Lens' LandingPagesDelete' (Maybe Text)
lpdQuotaUser
  = lens _lpdQuotaUser (\ s a -> s{_lpdQuotaUser = a})

-- | Returns response with indentations and line breaks.
lpdPrettyPrint :: Lens' LandingPagesDelete' Bool
lpdPrettyPrint
  = lens _lpdPrettyPrint
      (\ s a -> s{_lpdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lpdUserIp :: Lens' LandingPagesDelete' (Maybe Text)
lpdUserIp
  = lens _lpdUserIp (\ s a -> s{_lpdUserIp = a})

-- | Landing page campaign ID.
lpdCampaignId :: Lens' LandingPagesDelete' Int64
lpdCampaignId
  = lens _lpdCampaignId
      (\ s a -> s{_lpdCampaignId = a})

-- | User profile ID associated with this request.
lpdProfileId :: Lens' LandingPagesDelete' Int64
lpdProfileId
  = lens _lpdProfileId (\ s a -> s{_lpdProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lpdKey :: Lens' LandingPagesDelete' (Maybe Text)
lpdKey = lens _lpdKey (\ s a -> s{_lpdKey = a})

-- | Landing page ID.
lpdId :: Lens' LandingPagesDelete' Int64
lpdId = lens _lpdId (\ s a -> s{_lpdId = a})

-- | OAuth 2.0 token for the current user.
lpdOauthToken :: Lens' LandingPagesDelete' (Maybe Text)
lpdOauthToken
  = lens _lpdOauthToken
      (\ s a -> s{_lpdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lpdFields :: Lens' LandingPagesDelete' (Maybe Text)
lpdFields
  = lens _lpdFields (\ s a -> s{_lpdFields = a})

-- | Data format for the response.
lpdAlt :: Lens' LandingPagesDelete' Text
lpdAlt = lens _lpdAlt (\ s a -> s{_lpdAlt = a})

instance GoogleRequest LandingPagesDelete' where
        type Rs LandingPagesDelete' = ()
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u LandingPagesDelete{..}
          = go _lpdQuotaUser _lpdPrettyPrint _lpdUserIp
              _lpdCampaignId
              _lpdProfileId
              _lpdKey
              _lpdId
              _lpdOauthToken
              _lpdFields
              _lpdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LandingPagesDeleteAPI)
                      r
                      u
