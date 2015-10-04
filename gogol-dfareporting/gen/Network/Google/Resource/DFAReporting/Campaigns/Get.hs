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
-- Module      : Network.Google.Resource.DFAReporting.Campaigns.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one campaign by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCampaignsGet@.
module Network.Google.Resource.DFAReporting.Campaigns.Get
    (
    -- * REST Resource
      CampaignsGetResource

    -- * Creating a Request
    , campaignsGet'
    , CampaignsGet'

    -- * Request Lenses
    , camaQuotaUser
    , camaPrettyPrint
    , camaUserIP
    , camaProFileId
    , camaKey
    , camaId
    , camaOAuthToken
    , camaFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCampaignsGet@ which the
-- 'CampaignsGet'' request conforms to.
type CampaignsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Campaign

-- | Gets one campaign by ID.
--
-- /See:/ 'campaignsGet'' smart constructor.
data CampaignsGet' = CampaignsGet'
    { _camaQuotaUser   :: !(Maybe Text)
    , _camaPrettyPrint :: !Bool
    , _camaUserIP      :: !(Maybe Text)
    , _camaProFileId   :: !Int64
    , _camaKey         :: !(Maybe Key)
    , _camaId          :: !Int64
    , _camaOAuthToken  :: !(Maybe OAuthToken)
    , _camaFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CampaignsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'camaQuotaUser'
--
-- * 'camaPrettyPrint'
--
-- * 'camaUserIP'
--
-- * 'camaProFileId'
--
-- * 'camaKey'
--
-- * 'camaId'
--
-- * 'camaOAuthToken'
--
-- * 'camaFields'
campaignsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> CampaignsGet'
campaignsGet' pCamaProFileId_ pCamaId_ =
    CampaignsGet'
    { _camaQuotaUser = Nothing
    , _camaPrettyPrint = True
    , _camaUserIP = Nothing
    , _camaProFileId = pCamaProFileId_
    , _camaKey = Nothing
    , _camaId = pCamaId_
    , _camaOAuthToken = Nothing
    , _camaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
camaQuotaUser :: Lens' CampaignsGet' (Maybe Text)
camaQuotaUser
  = lens _camaQuotaUser
      (\ s a -> s{_camaQuotaUser = a})

-- | Returns response with indentations and line breaks.
camaPrettyPrint :: Lens' CampaignsGet' Bool
camaPrettyPrint
  = lens _camaPrettyPrint
      (\ s a -> s{_camaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
camaUserIP :: Lens' CampaignsGet' (Maybe Text)
camaUserIP
  = lens _camaUserIP (\ s a -> s{_camaUserIP = a})

-- | User profile ID associated with this request.
camaProFileId :: Lens' CampaignsGet' Int64
camaProFileId
  = lens _camaProFileId
      (\ s a -> s{_camaProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
camaKey :: Lens' CampaignsGet' (Maybe Key)
camaKey = lens _camaKey (\ s a -> s{_camaKey = a})

-- | Campaign ID.
camaId :: Lens' CampaignsGet' Int64
camaId = lens _camaId (\ s a -> s{_camaId = a})

-- | OAuth 2.0 token for the current user.
camaOAuthToken :: Lens' CampaignsGet' (Maybe OAuthToken)
camaOAuthToken
  = lens _camaOAuthToken
      (\ s a -> s{_camaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
camaFields :: Lens' CampaignsGet' (Maybe Text)
camaFields
  = lens _camaFields (\ s a -> s{_camaFields = a})

instance GoogleAuth CampaignsGet' where
        authKey = camaKey . _Just
        authToken = camaOAuthToken . _Just

instance GoogleRequest CampaignsGet' where
        type Rs CampaignsGet' = Campaign
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u CampaignsGet'{..}
          = go _camaProFileId _camaId _camaQuotaUser
              (Just _camaPrettyPrint)
              _camaUserIP
              _camaFields
              _camaKey
              _camaOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CampaignsGetResource)
                      r
                      u
