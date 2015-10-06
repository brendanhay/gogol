{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.LandingPages.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing campaign landing page. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingLandingPagesPatch@.
module Network.Google.Resource.DFAReporting.LandingPages.Patch
    (
    -- * REST Resource
      LandingPagesPatchResource

    -- * Creating a Request
    , landingPagesPatch'
    , LandingPagesPatch'

    -- * Request Lenses
    , lppQuotaUser
    , lppPrettyPrint
    , lppUserIP
    , lppCampaignId
    , lppProFileId
    , lppPayload
    , lppKey
    , lppId
    , lppOAuthToken
    , lppFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingLandingPagesPatch@ which the
-- 'LandingPagesPatch'' request conforms to.
type LandingPagesPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "campaignId" Int64 :>
             "landingPages" :>
               QueryParam "id" Int64 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] LandingPage :>
                                 Patch '[JSON] LandingPage

-- | Updates an existing campaign landing page. This method supports patch
-- semantics.
--
-- /See:/ 'landingPagesPatch'' smart constructor.
data LandingPagesPatch' = LandingPagesPatch'
    { _lppQuotaUser   :: !(Maybe Text)
    , _lppPrettyPrint :: !Bool
    , _lppUserIP      :: !(Maybe Text)
    , _lppCampaignId  :: !Int64
    , _lppProFileId   :: !Int64
    , _lppPayload     :: !LandingPage
    , _lppKey         :: !(Maybe AuthKey)
    , _lppId          :: !Int64
    , _lppOAuthToken  :: !(Maybe OAuthToken)
    , _lppFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lppQuotaUser'
--
-- * 'lppPrettyPrint'
--
-- * 'lppUserIP'
--
-- * 'lppCampaignId'
--
-- * 'lppProFileId'
--
-- * 'lppPayload'
--
-- * 'lppKey'
--
-- * 'lppId'
--
-- * 'lppOAuthToken'
--
-- * 'lppFields'
landingPagesPatch'
    :: Int64 -- ^ 'campaignId'
    -> Int64 -- ^ 'profileId'
    -> LandingPage -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> LandingPagesPatch'
landingPagesPatch' pLppCampaignId_ pLppProFileId_ pLppPayload_ pLppId_ =
    LandingPagesPatch'
    { _lppQuotaUser = Nothing
    , _lppPrettyPrint = True
    , _lppUserIP = Nothing
    , _lppCampaignId = pLppCampaignId_
    , _lppProFileId = pLppProFileId_
    , _lppPayload = pLppPayload_
    , _lppKey = Nothing
    , _lppId = pLppId_
    , _lppOAuthToken = Nothing
    , _lppFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lppQuotaUser :: Lens' LandingPagesPatch' (Maybe Text)
lppQuotaUser
  = lens _lppQuotaUser (\ s a -> s{_lppQuotaUser = a})

-- | Returns response with indentations and line breaks.
lppPrettyPrint :: Lens' LandingPagesPatch' Bool
lppPrettyPrint
  = lens _lppPrettyPrint
      (\ s a -> s{_lppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lppUserIP :: Lens' LandingPagesPatch' (Maybe Text)
lppUserIP
  = lens _lppUserIP (\ s a -> s{_lppUserIP = a})

-- | Landing page campaign ID.
lppCampaignId :: Lens' LandingPagesPatch' Int64
lppCampaignId
  = lens _lppCampaignId
      (\ s a -> s{_lppCampaignId = a})

-- | User profile ID associated with this request.
lppProFileId :: Lens' LandingPagesPatch' Int64
lppProFileId
  = lens _lppProFileId (\ s a -> s{_lppProFileId = a})

-- | Multipart request metadata.
lppPayload :: Lens' LandingPagesPatch' LandingPage
lppPayload
  = lens _lppPayload (\ s a -> s{_lppPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lppKey :: Lens' LandingPagesPatch' (Maybe AuthKey)
lppKey = lens _lppKey (\ s a -> s{_lppKey = a})

-- | Landing page ID.
lppId :: Lens' LandingPagesPatch' Int64
lppId = lens _lppId (\ s a -> s{_lppId = a})

-- | OAuth 2.0 token for the current user.
lppOAuthToken :: Lens' LandingPagesPatch' (Maybe OAuthToken)
lppOAuthToken
  = lens _lppOAuthToken
      (\ s a -> s{_lppOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lppFields :: Lens' LandingPagesPatch' (Maybe Text)
lppFields
  = lens _lppFields (\ s a -> s{_lppFields = a})

instance GoogleAuth LandingPagesPatch' where
        authKey = lppKey . _Just
        authToken = lppOAuthToken . _Just

instance GoogleRequest LandingPagesPatch' where
        type Rs LandingPagesPatch' = LandingPage
        request = requestWith dFAReportingRequest
        requestWith rq LandingPagesPatch'{..}
          = go _lppProFileId _lppCampaignId (Just _lppId)
              _lppQuotaUser
              (Just _lppPrettyPrint)
              _lppUserIP
              _lppFields
              _lppKey
              _lppOAuthToken
              (Just AltJSON)
              _lppPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy LandingPagesPatchResource)
                      rq
