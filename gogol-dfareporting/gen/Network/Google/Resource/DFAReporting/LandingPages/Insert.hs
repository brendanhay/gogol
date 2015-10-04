{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.LandingPages.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new landing page for the specified campaign.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingLandingPagesInsert@.
module Network.Google.Resource.DFAReporting.LandingPages.Insert
    (
    -- * REST Resource
      LandingPagesInsertResource

    -- * Creating a Request
    , landingPagesInsert'
    , LandingPagesInsert'

    -- * Request Lenses
    , lpiQuotaUser
    , lpiPrettyPrint
    , lpiUserIP
    , lpiCampaignId
    , lpiProFileId
    , lpiPayload
    , lpiKey
    , lpiOAuthToken
    , lpiFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingLandingPagesInsert@ which the
-- 'LandingPagesInsert'' request conforms to.
type LandingPagesInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "campaignId" Int64 :>
             "landingPages" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[OctetStream] LandingPage :>
                               Post '[JSON] LandingPage

-- | Inserts a new landing page for the specified campaign.
--
-- /See:/ 'landingPagesInsert'' smart constructor.
data LandingPagesInsert' = LandingPagesInsert'
    { _lpiQuotaUser   :: !(Maybe Text)
    , _lpiPrettyPrint :: !Bool
    , _lpiUserIP      :: !(Maybe Text)
    , _lpiCampaignId  :: !Int64
    , _lpiProFileId   :: !Int64
    , _lpiPayload     :: !LandingPage
    , _lpiKey         :: !(Maybe Key)
    , _lpiOAuthToken  :: !(Maybe OAuthToken)
    , _lpiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpiQuotaUser'
--
-- * 'lpiPrettyPrint'
--
-- * 'lpiUserIP'
--
-- * 'lpiCampaignId'
--
-- * 'lpiProFileId'
--
-- * 'lpiPayload'
--
-- * 'lpiKey'
--
-- * 'lpiOAuthToken'
--
-- * 'lpiFields'
landingPagesInsert'
    :: Int64 -- ^ 'campaignId'
    -> Int64 -- ^ 'profileId'
    -> LandingPage -- ^ 'payload'
    -> LandingPagesInsert'
landingPagesInsert' pLpiCampaignId_ pLpiProFileId_ pLpiPayload_ =
    LandingPagesInsert'
    { _lpiQuotaUser = Nothing
    , _lpiPrettyPrint = True
    , _lpiUserIP = Nothing
    , _lpiCampaignId = pLpiCampaignId_
    , _lpiProFileId = pLpiProFileId_
    , _lpiPayload = pLpiPayload_
    , _lpiKey = Nothing
    , _lpiOAuthToken = Nothing
    , _lpiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lpiQuotaUser :: Lens' LandingPagesInsert' (Maybe Text)
lpiQuotaUser
  = lens _lpiQuotaUser (\ s a -> s{_lpiQuotaUser = a})

-- | Returns response with indentations and line breaks.
lpiPrettyPrint :: Lens' LandingPagesInsert' Bool
lpiPrettyPrint
  = lens _lpiPrettyPrint
      (\ s a -> s{_lpiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lpiUserIP :: Lens' LandingPagesInsert' (Maybe Text)
lpiUserIP
  = lens _lpiUserIP (\ s a -> s{_lpiUserIP = a})

-- | Landing page campaign ID.
lpiCampaignId :: Lens' LandingPagesInsert' Int64
lpiCampaignId
  = lens _lpiCampaignId
      (\ s a -> s{_lpiCampaignId = a})

-- | User profile ID associated with this request.
lpiProFileId :: Lens' LandingPagesInsert' Int64
lpiProFileId
  = lens _lpiProFileId (\ s a -> s{_lpiProFileId = a})

-- | Multipart request metadata.
lpiPayload :: Lens' LandingPagesInsert' LandingPage
lpiPayload
  = lens _lpiPayload (\ s a -> s{_lpiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lpiKey :: Lens' LandingPagesInsert' (Maybe Key)
lpiKey = lens _lpiKey (\ s a -> s{_lpiKey = a})

-- | OAuth 2.0 token for the current user.
lpiOAuthToken :: Lens' LandingPagesInsert' (Maybe OAuthToken)
lpiOAuthToken
  = lens _lpiOAuthToken
      (\ s a -> s{_lpiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lpiFields :: Lens' LandingPagesInsert' (Maybe Text)
lpiFields
  = lens _lpiFields (\ s a -> s{_lpiFields = a})

instance GoogleAuth LandingPagesInsert' where
        authKey = lpiKey . _Just
        authToken = lpiOAuthToken . _Just

instance GoogleRequest LandingPagesInsert' where
        type Rs LandingPagesInsert' = LandingPage
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u LandingPagesInsert'{..}
          = go _lpiProFileId _lpiCampaignId _lpiQuotaUser
              (Just _lpiPrettyPrint)
              _lpiUserIP
              _lpiFields
              _lpiKey
              _lpiOAuthToken
              (Just AltJSON)
              _lpiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LandingPagesInsertResource)
                      r
                      u
