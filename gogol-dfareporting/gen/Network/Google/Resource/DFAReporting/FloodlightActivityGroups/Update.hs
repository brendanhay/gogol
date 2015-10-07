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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing floodlight activity group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightActivityGroupsUpdate@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Update
    (
    -- * REST Resource
      FloodlightActivityGroupsUpdateResource

    -- * Creating a Request
    , floodlightActivityGroupsUpdate'
    , FloodlightActivityGroupsUpdate'

    -- * Request Lenses
    , faguQuotaUser
    , faguPrettyPrint
    , faguUserIP
    , faguProFileId
    , faguPayload
    , faguKey
    , faguOAuthToken
    , faguFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivityGroupsUpdate@ method which the
-- 'FloodlightActivityGroupsUpdate'' request conforms to.
type FloodlightActivityGroupsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivityGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] FloodlightActivityGroup :>
                           Put '[JSON] FloodlightActivityGroup

-- | Updates an existing floodlight activity group.
--
-- /See:/ 'floodlightActivityGroupsUpdate'' smart constructor.
data FloodlightActivityGroupsUpdate' = FloodlightActivityGroupsUpdate'
    { _faguQuotaUser   :: !(Maybe Text)
    , _faguPrettyPrint :: !Bool
    , _faguUserIP      :: !(Maybe Text)
    , _faguProFileId   :: !Int64
    , _faguPayload     :: !FloodlightActivityGroup
    , _faguKey         :: !(Maybe AuthKey)
    , _faguOAuthToken  :: !(Maybe OAuthToken)
    , _faguFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityGroupsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faguQuotaUser'
--
-- * 'faguPrettyPrint'
--
-- * 'faguUserIP'
--
-- * 'faguProFileId'
--
-- * 'faguPayload'
--
-- * 'faguKey'
--
-- * 'faguOAuthToken'
--
-- * 'faguFields'
floodlightActivityGroupsUpdate'
    :: Int64 -- ^ 'profileId'
    -> FloodlightActivityGroup -- ^ 'payload'
    -> FloodlightActivityGroupsUpdate'
floodlightActivityGroupsUpdate' pFaguProFileId_ pFaguPayload_ =
    FloodlightActivityGroupsUpdate'
    { _faguQuotaUser = Nothing
    , _faguPrettyPrint = True
    , _faguUserIP = Nothing
    , _faguProFileId = pFaguProFileId_
    , _faguPayload = pFaguPayload_
    , _faguKey = Nothing
    , _faguOAuthToken = Nothing
    , _faguFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
faguQuotaUser :: Lens' FloodlightActivityGroupsUpdate' (Maybe Text)
faguQuotaUser
  = lens _faguQuotaUser
      (\ s a -> s{_faguQuotaUser = a})

-- | Returns response with indentations and line breaks.
faguPrettyPrint :: Lens' FloodlightActivityGroupsUpdate' Bool
faguPrettyPrint
  = lens _faguPrettyPrint
      (\ s a -> s{_faguPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
faguUserIP :: Lens' FloodlightActivityGroupsUpdate' (Maybe Text)
faguUserIP
  = lens _faguUserIP (\ s a -> s{_faguUserIP = a})

-- | User profile ID associated with this request.
faguProFileId :: Lens' FloodlightActivityGroupsUpdate' Int64
faguProFileId
  = lens _faguProFileId
      (\ s a -> s{_faguProFileId = a})

-- | Multipart request metadata.
faguPayload :: Lens' FloodlightActivityGroupsUpdate' FloodlightActivityGroup
faguPayload
  = lens _faguPayload (\ s a -> s{_faguPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
faguKey :: Lens' FloodlightActivityGroupsUpdate' (Maybe AuthKey)
faguKey = lens _faguKey (\ s a -> s{_faguKey = a})

-- | OAuth 2.0 token for the current user.
faguOAuthToken :: Lens' FloodlightActivityGroupsUpdate' (Maybe OAuthToken)
faguOAuthToken
  = lens _faguOAuthToken
      (\ s a -> s{_faguOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
faguFields :: Lens' FloodlightActivityGroupsUpdate' (Maybe Text)
faguFields
  = lens _faguFields (\ s a -> s{_faguFields = a})

instance GoogleAuth FloodlightActivityGroupsUpdate'
         where
        _AuthKey = faguKey . _Just
        _AuthToken = faguOAuthToken . _Just

instance GoogleRequest
         FloodlightActivityGroupsUpdate' where
        type Rs FloodlightActivityGroupsUpdate' =
             FloodlightActivityGroup
        request = requestWith dFAReportingRequest
        requestWith rq FloodlightActivityGroupsUpdate'{..}
          = go _faguProFileId _faguQuotaUser
              (Just _faguPrettyPrint)
              _faguUserIP
              _faguFields
              _faguKey
              _faguOAuthToken
              (Just AltJSON)
              _faguPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy FloodlightActivityGroupsUpdateResource)
                      rq
