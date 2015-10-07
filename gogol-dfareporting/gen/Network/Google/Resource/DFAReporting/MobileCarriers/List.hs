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
-- Module      : Network.Google.Resource.DFAReporting.MobileCarriers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of mobile carriers.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingMobileCarriersList@.
module Network.Google.Resource.DFAReporting.MobileCarriers.List
    (
    -- * REST Resource
      MobileCarriersListResource

    -- * Creating a Request
    , mobileCarriersList'
    , MobileCarriersList'

    -- * Request Lenses
    , mclQuotaUser
    , mclPrettyPrint
    , mclUserIP
    , mclProFileId
    , mclKey
    , mclOAuthToken
    , mclFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingMobileCarriersList@ method which the
-- 'MobileCarriersList'' request conforms to.
type MobileCarriersListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "mobileCarriers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] MobileCarriersListResponse

-- | Retrieves a list of mobile carriers.
--
-- /See:/ 'mobileCarriersList'' smart constructor.
data MobileCarriersList' = MobileCarriersList'
    { _mclQuotaUser   :: !(Maybe Text)
    , _mclPrettyPrint :: !Bool
    , _mclUserIP      :: !(Maybe Text)
    , _mclProFileId   :: !Int64
    , _mclKey         :: !(Maybe AuthKey)
    , _mclOAuthToken  :: !(Maybe OAuthToken)
    , _mclFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileCarriersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mclQuotaUser'
--
-- * 'mclPrettyPrint'
--
-- * 'mclUserIP'
--
-- * 'mclProFileId'
--
-- * 'mclKey'
--
-- * 'mclOAuthToken'
--
-- * 'mclFields'
mobileCarriersList'
    :: Int64 -- ^ 'profileId'
    -> MobileCarriersList'
mobileCarriersList' pMclProFileId_ =
    MobileCarriersList'
    { _mclQuotaUser = Nothing
    , _mclPrettyPrint = True
    , _mclUserIP = Nothing
    , _mclProFileId = pMclProFileId_
    , _mclKey = Nothing
    , _mclOAuthToken = Nothing
    , _mclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mclQuotaUser :: Lens' MobileCarriersList' (Maybe Text)
mclQuotaUser
  = lens _mclQuotaUser (\ s a -> s{_mclQuotaUser = a})

-- | Returns response with indentations and line breaks.
mclPrettyPrint :: Lens' MobileCarriersList' Bool
mclPrettyPrint
  = lens _mclPrettyPrint
      (\ s a -> s{_mclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mclUserIP :: Lens' MobileCarriersList' (Maybe Text)
mclUserIP
  = lens _mclUserIP (\ s a -> s{_mclUserIP = a})

-- | User profile ID associated with this request.
mclProFileId :: Lens' MobileCarriersList' Int64
mclProFileId
  = lens _mclProFileId (\ s a -> s{_mclProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mclKey :: Lens' MobileCarriersList' (Maybe AuthKey)
mclKey = lens _mclKey (\ s a -> s{_mclKey = a})

-- | OAuth 2.0 token for the current user.
mclOAuthToken :: Lens' MobileCarriersList' (Maybe OAuthToken)
mclOAuthToken
  = lens _mclOAuthToken
      (\ s a -> s{_mclOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mclFields :: Lens' MobileCarriersList' (Maybe Text)
mclFields
  = lens _mclFields (\ s a -> s{_mclFields = a})

instance GoogleAuth MobileCarriersList' where
        _AuthKey = mclKey . _Just
        _AuthToken = mclOAuthToken . _Just

instance GoogleRequest MobileCarriersList' where
        type Rs MobileCarriersList' =
             MobileCarriersListResponse
        request = requestWith dFAReportingRequest
        requestWith rq MobileCarriersList'{..}
          = go _mclProFileId _mclQuotaUser
              (Just _mclPrettyPrint)
              _mclUserIP
              _mclFields
              _mclKey
              _mclOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy MobileCarriersListResource)
                      rq
