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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one floodlight activity by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightActivitiesGet@.
module Network.Google.Resource.DFAReporting.FloodlightActivities.Get
    (
    -- * REST Resource
      FloodlightActivitiesGetResource

    -- * Creating a Request
    , floodlightActivitiesGet'
    , FloodlightActivitiesGet'

    -- * Request Lenses
    , fQuotaUser
    , fPrettyPrint
    , fUserIP
    , fProFileId
    , fKey
    , fId
    , fOAuthToken
    , fFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivitiesGet@ which the
-- 'FloodlightActivitiesGet'' request conforms to.
type FloodlightActivitiesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivities" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] FloodlightActivity

-- | Gets one floodlight activity by ID.
--
-- /See:/ 'floodlightActivitiesGet'' smart constructor.
data FloodlightActivitiesGet' = FloodlightActivitiesGet'
    { _fQuotaUser   :: !(Maybe Text)
    , _fPrettyPrint :: !Bool
    , _fUserIP      :: !(Maybe Text)
    , _fProFileId   :: !Int64
    , _fKey         :: !(Maybe AuthKey)
    , _fId          :: !Int64
    , _fOAuthToken  :: !(Maybe OAuthToken)
    , _fFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fQuotaUser'
--
-- * 'fPrettyPrint'
--
-- * 'fUserIP'
--
-- * 'fProFileId'
--
-- * 'fKey'
--
-- * 'fId'
--
-- * 'fOAuthToken'
--
-- * 'fFields'
floodlightActivitiesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> FloodlightActivitiesGet'
floodlightActivitiesGet' pFProFileId_ pFId_ =
    FloodlightActivitiesGet'
    { _fQuotaUser = Nothing
    , _fPrettyPrint = True
    , _fUserIP = Nothing
    , _fProFileId = pFProFileId_
    , _fKey = Nothing
    , _fId = pFId_
    , _fOAuthToken = Nothing
    , _fFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fQuotaUser :: Lens' FloodlightActivitiesGet' (Maybe Text)
fQuotaUser
  = lens _fQuotaUser (\ s a -> s{_fQuotaUser = a})

-- | Returns response with indentations and line breaks.
fPrettyPrint :: Lens' FloodlightActivitiesGet' Bool
fPrettyPrint
  = lens _fPrettyPrint (\ s a -> s{_fPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fUserIP :: Lens' FloodlightActivitiesGet' (Maybe Text)
fUserIP = lens _fUserIP (\ s a -> s{_fUserIP = a})

-- | User profile ID associated with this request.
fProFileId :: Lens' FloodlightActivitiesGet' Int64
fProFileId
  = lens _fProFileId (\ s a -> s{_fProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fKey :: Lens' FloodlightActivitiesGet' (Maybe AuthKey)
fKey = lens _fKey (\ s a -> s{_fKey = a})

-- | Floodlight activity ID.
fId :: Lens' FloodlightActivitiesGet' Int64
fId = lens _fId (\ s a -> s{_fId = a})

-- | OAuth 2.0 token for the current user.
fOAuthToken :: Lens' FloodlightActivitiesGet' (Maybe OAuthToken)
fOAuthToken
  = lens _fOAuthToken (\ s a -> s{_fOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fFields :: Lens' FloodlightActivitiesGet' (Maybe Text)
fFields = lens _fFields (\ s a -> s{_fFields = a})

instance GoogleAuth FloodlightActivitiesGet' where
        authKey = fKey . _Just
        authToken = fOAuthToken . _Just

instance GoogleRequest FloodlightActivitiesGet' where
        type Rs FloodlightActivitiesGet' = FloodlightActivity
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FloodlightActivitiesGet'{..}
          = go _fProFileId _fId _fQuotaUser
              (Just _fPrettyPrint)
              _fUserIP
              _fFields
              _fKey
              _fOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightActivitiesGetResource)
                      r
                      u
