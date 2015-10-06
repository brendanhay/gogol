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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserGroups.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing advertiser group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertiserGroupsDelete@.
module Network.Google.Resource.DFAReporting.AdvertiserGroups.Delete
    (
    -- * REST Resource
      AdvertiserGroupsDeleteResource

    -- * Creating a Request
    , advertiserGroupsDelete'
    , AdvertiserGroupsDelete'

    -- * Request Lenses
    , agdQuotaUser
    , agdPrettyPrint
    , agdUserIP
    , agdProFileId
    , agdKey
    , agdId
    , agdOAuthToken
    , agdFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertiserGroupsDelete@ which the
-- 'AdvertiserGroupsDelete'' request conforms to.
type AdvertiserGroupsDeleteResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertiserGroups" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing advertiser group.
--
-- /See:/ 'advertiserGroupsDelete'' smart constructor.
data AdvertiserGroupsDelete' = AdvertiserGroupsDelete'
    { _agdQuotaUser   :: !(Maybe Text)
    , _agdPrettyPrint :: !Bool
    , _agdUserIP      :: !(Maybe Text)
    , _agdProFileId   :: !Int64
    , _agdKey         :: !(Maybe AuthKey)
    , _agdId          :: !Int64
    , _agdOAuthToken  :: !(Maybe OAuthToken)
    , _agdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroupsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agdQuotaUser'
--
-- * 'agdPrettyPrint'
--
-- * 'agdUserIP'
--
-- * 'agdProFileId'
--
-- * 'agdKey'
--
-- * 'agdId'
--
-- * 'agdOAuthToken'
--
-- * 'agdFields'
advertiserGroupsDelete'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AdvertiserGroupsDelete'
advertiserGroupsDelete' pAgdProFileId_ pAgdId_ =
    AdvertiserGroupsDelete'
    { _agdQuotaUser = Nothing
    , _agdPrettyPrint = True
    , _agdUserIP = Nothing
    , _agdProFileId = pAgdProFileId_
    , _agdKey = Nothing
    , _agdId = pAgdId_
    , _agdOAuthToken = Nothing
    , _agdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agdQuotaUser :: Lens' AdvertiserGroupsDelete' (Maybe Text)
agdQuotaUser
  = lens _agdQuotaUser (\ s a -> s{_agdQuotaUser = a})

-- | Returns response with indentations and line breaks.
agdPrettyPrint :: Lens' AdvertiserGroupsDelete' Bool
agdPrettyPrint
  = lens _agdPrettyPrint
      (\ s a -> s{_agdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agdUserIP :: Lens' AdvertiserGroupsDelete' (Maybe Text)
agdUserIP
  = lens _agdUserIP (\ s a -> s{_agdUserIP = a})

-- | User profile ID associated with this request.
agdProFileId :: Lens' AdvertiserGroupsDelete' Int64
agdProFileId
  = lens _agdProFileId (\ s a -> s{_agdProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agdKey :: Lens' AdvertiserGroupsDelete' (Maybe AuthKey)
agdKey = lens _agdKey (\ s a -> s{_agdKey = a})

-- | Advertiser group ID.
agdId :: Lens' AdvertiserGroupsDelete' Int64
agdId = lens _agdId (\ s a -> s{_agdId = a})

-- | OAuth 2.0 token for the current user.
agdOAuthToken :: Lens' AdvertiserGroupsDelete' (Maybe OAuthToken)
agdOAuthToken
  = lens _agdOAuthToken
      (\ s a -> s{_agdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
agdFields :: Lens' AdvertiserGroupsDelete' (Maybe Text)
agdFields
  = lens _agdFields (\ s a -> s{_agdFields = a})

instance GoogleAuth AdvertiserGroupsDelete' where
        _AuthKey = agdKey . _Just
        _AuthToken = agdOAuthToken . _Just

instance GoogleRequest AdvertiserGroupsDelete' where
        type Rs AdvertiserGroupsDelete' = ()
        request = requestWith dFAReportingRequest
        requestWith rq AdvertiserGroupsDelete'{..}
          = go _agdProFileId _agdId _agdQuotaUser
              (Just _agdPrettyPrint)
              _agdUserIP
              _agdFields
              _agdKey
              _agdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AdvertiserGroupsDeleteResource)
                      rq
