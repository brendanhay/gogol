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
-- Module      : Network.Google.Resource.DFAReporting.MobileCarriers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one mobile carrier by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingMobileCarriersGet@.
module Network.Google.Resource.DFAReporting.MobileCarriers.Get
    (
    -- * REST Resource
      MobileCarriersGetResource

    -- * Creating a Request
    , mobileCarriersGet'
    , MobileCarriersGet'

    -- * Request Lenses
    , mcgQuotaUser
    , mcgPrettyPrint
    , mcgUserIP
    , mcgProFileId
    , mcgKey
    , mcgId
    , mcgOAuthToken
    , mcgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingMobileCarriersGet@ which the
-- 'MobileCarriersGet'' request conforms to.
type MobileCarriersGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "mobileCarriers" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] MobileCarrier

-- | Gets one mobile carrier by ID.
--
-- /See:/ 'mobileCarriersGet'' smart constructor.
data MobileCarriersGet' = MobileCarriersGet'
    { _mcgQuotaUser   :: !(Maybe Text)
    , _mcgPrettyPrint :: !Bool
    , _mcgUserIP      :: !(Maybe Text)
    , _mcgProFileId   :: !Int64
    , _mcgKey         :: !(Maybe AuthKey)
    , _mcgId          :: !Int64
    , _mcgOAuthToken  :: !(Maybe OAuthToken)
    , _mcgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileCarriersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcgQuotaUser'
--
-- * 'mcgPrettyPrint'
--
-- * 'mcgUserIP'
--
-- * 'mcgProFileId'
--
-- * 'mcgKey'
--
-- * 'mcgId'
--
-- * 'mcgOAuthToken'
--
-- * 'mcgFields'
mobileCarriersGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> MobileCarriersGet'
mobileCarriersGet' pMcgProFileId_ pMcgId_ =
    MobileCarriersGet'
    { _mcgQuotaUser = Nothing
    , _mcgPrettyPrint = True
    , _mcgUserIP = Nothing
    , _mcgProFileId = pMcgProFileId_
    , _mcgKey = Nothing
    , _mcgId = pMcgId_
    , _mcgOAuthToken = Nothing
    , _mcgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcgQuotaUser :: Lens' MobileCarriersGet' (Maybe Text)
mcgQuotaUser
  = lens _mcgQuotaUser (\ s a -> s{_mcgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcgPrettyPrint :: Lens' MobileCarriersGet' Bool
mcgPrettyPrint
  = lens _mcgPrettyPrint
      (\ s a -> s{_mcgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcgUserIP :: Lens' MobileCarriersGet' (Maybe Text)
mcgUserIP
  = lens _mcgUserIP (\ s a -> s{_mcgUserIP = a})

-- | User profile ID associated with this request.
mcgProFileId :: Lens' MobileCarriersGet' Int64
mcgProFileId
  = lens _mcgProFileId (\ s a -> s{_mcgProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcgKey :: Lens' MobileCarriersGet' (Maybe AuthKey)
mcgKey = lens _mcgKey (\ s a -> s{_mcgKey = a})

-- | Mobile carrier ID.
mcgId :: Lens' MobileCarriersGet' Int64
mcgId = lens _mcgId (\ s a -> s{_mcgId = a})

-- | OAuth 2.0 token for the current user.
mcgOAuthToken :: Lens' MobileCarriersGet' (Maybe OAuthToken)
mcgOAuthToken
  = lens _mcgOAuthToken
      (\ s a -> s{_mcgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mcgFields :: Lens' MobileCarriersGet' (Maybe Text)
mcgFields
  = lens _mcgFields (\ s a -> s{_mcgFields = a})

instance GoogleAuth MobileCarriersGet' where
        _AuthKey = mcgKey . _Just
        _AuthToken = mcgOAuthToken . _Just

instance GoogleRequest MobileCarriersGet' where
        type Rs MobileCarriersGet' = MobileCarrier
        request = requestWith dFAReportingRequest
        requestWith rq MobileCarriersGet'{..}
          = go _mcgProFileId _mcgId _mcgQuotaUser
              (Just _mcgPrettyPrint)
              _mcgUserIP
              _mcgFields
              _mcgKey
              _mcgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy MobileCarriersGetResource)
                      rq
