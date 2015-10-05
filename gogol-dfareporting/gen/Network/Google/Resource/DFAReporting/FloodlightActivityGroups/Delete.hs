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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing floodlight activity group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightActivityGroupsDelete@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Delete
    (
    -- * REST Resource
      FloodlightActivityGroupsDeleteResource

    -- * Creating a Request
    , floodlightActivityGroupsDelete'
    , FloodlightActivityGroupsDelete'

    -- * Request Lenses
    , fagdQuotaUser
    , fagdPrettyPrint
    , fagdUserIP
    , fagdProFileId
    , fagdKey
    , fagdId
    , fagdOAuthToken
    , fagdFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivityGroupsDelete@ which the
-- 'FloodlightActivityGroupsDelete'' request conforms to.
type FloodlightActivityGroupsDeleteResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivityGroups" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing floodlight activity group.
--
-- /See:/ 'floodlightActivityGroupsDelete'' smart constructor.
data FloodlightActivityGroupsDelete' = FloodlightActivityGroupsDelete'
    { _fagdQuotaUser   :: !(Maybe Text)
    , _fagdPrettyPrint :: !Bool
    , _fagdUserIP      :: !(Maybe Text)
    , _fagdProFileId   :: !Int64
    , _fagdKey         :: !(Maybe Key)
    , _fagdId          :: !Int64
    , _fagdOAuthToken  :: !(Maybe OAuthToken)
    , _fagdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityGroupsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fagdQuotaUser'
--
-- * 'fagdPrettyPrint'
--
-- * 'fagdUserIP'
--
-- * 'fagdProFileId'
--
-- * 'fagdKey'
--
-- * 'fagdId'
--
-- * 'fagdOAuthToken'
--
-- * 'fagdFields'
floodlightActivityGroupsDelete'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> FloodlightActivityGroupsDelete'
floodlightActivityGroupsDelete' pFagdProFileId_ pFagdId_ =
    FloodlightActivityGroupsDelete'
    { _fagdQuotaUser = Nothing
    , _fagdPrettyPrint = True
    , _fagdUserIP = Nothing
    , _fagdProFileId = pFagdProFileId_
    , _fagdKey = Nothing
    , _fagdId = pFagdId_
    , _fagdOAuthToken = Nothing
    , _fagdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fagdQuotaUser :: Lens' FloodlightActivityGroupsDelete' (Maybe Text)
fagdQuotaUser
  = lens _fagdQuotaUser
      (\ s a -> s{_fagdQuotaUser = a})

-- | Returns response with indentations and line breaks.
fagdPrettyPrint :: Lens' FloodlightActivityGroupsDelete' Bool
fagdPrettyPrint
  = lens _fagdPrettyPrint
      (\ s a -> s{_fagdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fagdUserIP :: Lens' FloodlightActivityGroupsDelete' (Maybe Text)
fagdUserIP
  = lens _fagdUserIP (\ s a -> s{_fagdUserIP = a})

-- | User profile ID associated with this request.
fagdProFileId :: Lens' FloodlightActivityGroupsDelete' Int64
fagdProFileId
  = lens _fagdProFileId
      (\ s a -> s{_fagdProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fagdKey :: Lens' FloodlightActivityGroupsDelete' (Maybe Key)
fagdKey = lens _fagdKey (\ s a -> s{_fagdKey = a})

-- | Floodlight activity Group ID.
fagdId :: Lens' FloodlightActivityGroupsDelete' Int64
fagdId = lens _fagdId (\ s a -> s{_fagdId = a})

-- | OAuth 2.0 token for the current user.
fagdOAuthToken :: Lens' FloodlightActivityGroupsDelete' (Maybe OAuthToken)
fagdOAuthToken
  = lens _fagdOAuthToken
      (\ s a -> s{_fagdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fagdFields :: Lens' FloodlightActivityGroupsDelete' (Maybe Text)
fagdFields
  = lens _fagdFields (\ s a -> s{_fagdFields = a})

instance GoogleAuth FloodlightActivityGroupsDelete'
         where
        authKey = fagdKey . _Just
        authToken = fagdOAuthToken . _Just

instance GoogleRequest
         FloodlightActivityGroupsDelete' where
        type Rs FloodlightActivityGroupsDelete' = ()
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          FloodlightActivityGroupsDelete'{..}
          = go _fagdProFileId _fagdId _fagdQuotaUser
              (Just _fagdPrettyPrint)
              _fagdUserIP
              _fagdFields
              _fagdKey
              _fagdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy FloodlightActivityGroupsDeleteResource)
                      r
                      u
