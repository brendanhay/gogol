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
module Network.Google.Resource.DFAReporting.LandingPages.Delete
    (
    -- * REST Resource
      LandingPagesDeleteResource

    -- * Creating a Request
    , landingPagesDelete'
    , LandingPagesDelete'

    -- * Request Lenses
    , lpdQuotaUser
    , lpdPrettyPrint
    , lpdUserIP
    , lpdCampaignId
    , lpdProFileId
    , lpdKey
    , lpdId
    , lpdOAuthToken
    , lpdFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingLandingPagesDelete@ which the
-- 'LandingPagesDelete'' request conforms to.
type LandingPagesDeleteResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "campaignId" Int64 :>
             "landingPages" :>
               Capture "id" Int64 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing campaign landing page.
--
-- /See:/ 'landingPagesDelete'' smart constructor.
data LandingPagesDelete' = LandingPagesDelete'
    { _lpdQuotaUser   :: !(Maybe Text)
    , _lpdPrettyPrint :: !Bool
    , _lpdUserIP      :: !(Maybe Text)
    , _lpdCampaignId  :: !Int64
    , _lpdProFileId   :: !Int64
    , _lpdKey         :: !(Maybe AuthKey)
    , _lpdId          :: !Int64
    , _lpdOAuthToken  :: !(Maybe OAuthToken)
    , _lpdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpdQuotaUser'
--
-- * 'lpdPrettyPrint'
--
-- * 'lpdUserIP'
--
-- * 'lpdCampaignId'
--
-- * 'lpdProFileId'
--
-- * 'lpdKey'
--
-- * 'lpdId'
--
-- * 'lpdOAuthToken'
--
-- * 'lpdFields'
landingPagesDelete'
    :: Int64 -- ^ 'campaignId'
    -> Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> LandingPagesDelete'
landingPagesDelete' pLpdCampaignId_ pLpdProFileId_ pLpdId_ =
    LandingPagesDelete'
    { _lpdQuotaUser = Nothing
    , _lpdPrettyPrint = True
    , _lpdUserIP = Nothing
    , _lpdCampaignId = pLpdCampaignId_
    , _lpdProFileId = pLpdProFileId_
    , _lpdKey = Nothing
    , _lpdId = pLpdId_
    , _lpdOAuthToken = Nothing
    , _lpdFields = Nothing
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
lpdUserIP :: Lens' LandingPagesDelete' (Maybe Text)
lpdUserIP
  = lens _lpdUserIP (\ s a -> s{_lpdUserIP = a})

-- | Landing page campaign ID.
lpdCampaignId :: Lens' LandingPagesDelete' Int64
lpdCampaignId
  = lens _lpdCampaignId
      (\ s a -> s{_lpdCampaignId = a})

-- | User profile ID associated with this request.
lpdProFileId :: Lens' LandingPagesDelete' Int64
lpdProFileId
  = lens _lpdProFileId (\ s a -> s{_lpdProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lpdKey :: Lens' LandingPagesDelete' (Maybe AuthKey)
lpdKey = lens _lpdKey (\ s a -> s{_lpdKey = a})

-- | Landing page ID.
lpdId :: Lens' LandingPagesDelete' Int64
lpdId = lens _lpdId (\ s a -> s{_lpdId = a})

-- | OAuth 2.0 token for the current user.
lpdOAuthToken :: Lens' LandingPagesDelete' (Maybe OAuthToken)
lpdOAuthToken
  = lens _lpdOAuthToken
      (\ s a -> s{_lpdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lpdFields :: Lens' LandingPagesDelete' (Maybe Text)
lpdFields
  = lens _lpdFields (\ s a -> s{_lpdFields = a})

instance GoogleAuth LandingPagesDelete' where
        authKey = lpdKey . _Just
        authToken = lpdOAuthToken . _Just

instance GoogleRequest LandingPagesDelete' where
        type Rs LandingPagesDelete' = ()
        request = requestWith dFAReportingRequest
        requestWith rq LandingPagesDelete'{..}
          = go _lpdProFileId _lpdCampaignId _lpdId
              _lpdQuotaUser
              (Just _lpdPrettyPrint)
              _lpdUserIP
              _lpdFields
              _lpdKey
              _lpdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy LandingPagesDeleteResource)
                      rq
