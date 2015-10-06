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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new floodlight activity group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightActivityGroupsInsert@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Insert
    (
    -- * REST Resource
      FloodlightActivityGroupsInsertResource

    -- * Creating a Request
    , floodlightActivityGroupsInsert'
    , FloodlightActivityGroupsInsert'

    -- * Request Lenses
    , fagiQuotaUser
    , fagiPrettyPrint
    , fagiUserIP
    , fagiProFileId
    , fagiPayload
    , fagiKey
    , fagiOAuthToken
    , fagiFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivityGroupsInsert@ which the
-- 'FloodlightActivityGroupsInsert'' request conforms to.
type FloodlightActivityGroupsInsertResource =
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
                           Post '[JSON] FloodlightActivityGroup

-- | Inserts a new floodlight activity group.
--
-- /See:/ 'floodlightActivityGroupsInsert'' smart constructor.
data FloodlightActivityGroupsInsert' = FloodlightActivityGroupsInsert'
    { _fagiQuotaUser   :: !(Maybe Text)
    , _fagiPrettyPrint :: !Bool
    , _fagiUserIP      :: !(Maybe Text)
    , _fagiProFileId   :: !Int64
    , _fagiPayload     :: !FloodlightActivityGroup
    , _fagiKey         :: !(Maybe AuthKey)
    , _fagiOAuthToken  :: !(Maybe OAuthToken)
    , _fagiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityGroupsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fagiQuotaUser'
--
-- * 'fagiPrettyPrint'
--
-- * 'fagiUserIP'
--
-- * 'fagiProFileId'
--
-- * 'fagiPayload'
--
-- * 'fagiKey'
--
-- * 'fagiOAuthToken'
--
-- * 'fagiFields'
floodlightActivityGroupsInsert'
    :: Int64 -- ^ 'profileId'
    -> FloodlightActivityGroup -- ^ 'payload'
    -> FloodlightActivityGroupsInsert'
floodlightActivityGroupsInsert' pFagiProFileId_ pFagiPayload_ =
    FloodlightActivityGroupsInsert'
    { _fagiQuotaUser = Nothing
    , _fagiPrettyPrint = True
    , _fagiUserIP = Nothing
    , _fagiProFileId = pFagiProFileId_
    , _fagiPayload = pFagiPayload_
    , _fagiKey = Nothing
    , _fagiOAuthToken = Nothing
    , _fagiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fagiQuotaUser :: Lens' FloodlightActivityGroupsInsert' (Maybe Text)
fagiQuotaUser
  = lens _fagiQuotaUser
      (\ s a -> s{_fagiQuotaUser = a})

-- | Returns response with indentations and line breaks.
fagiPrettyPrint :: Lens' FloodlightActivityGroupsInsert' Bool
fagiPrettyPrint
  = lens _fagiPrettyPrint
      (\ s a -> s{_fagiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fagiUserIP :: Lens' FloodlightActivityGroupsInsert' (Maybe Text)
fagiUserIP
  = lens _fagiUserIP (\ s a -> s{_fagiUserIP = a})

-- | User profile ID associated with this request.
fagiProFileId :: Lens' FloodlightActivityGroupsInsert' Int64
fagiProFileId
  = lens _fagiProFileId
      (\ s a -> s{_fagiProFileId = a})

-- | Multipart request metadata.
fagiPayload :: Lens' FloodlightActivityGroupsInsert' FloodlightActivityGroup
fagiPayload
  = lens _fagiPayload (\ s a -> s{_fagiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fagiKey :: Lens' FloodlightActivityGroupsInsert' (Maybe AuthKey)
fagiKey = lens _fagiKey (\ s a -> s{_fagiKey = a})

-- | OAuth 2.0 token for the current user.
fagiOAuthToken :: Lens' FloodlightActivityGroupsInsert' (Maybe OAuthToken)
fagiOAuthToken
  = lens _fagiOAuthToken
      (\ s a -> s{_fagiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fagiFields :: Lens' FloodlightActivityGroupsInsert' (Maybe Text)
fagiFields
  = lens _fagiFields (\ s a -> s{_fagiFields = a})

instance GoogleAuth FloodlightActivityGroupsInsert'
         where
        _AuthKey = fagiKey . _Just
        _AuthToken = fagiOAuthToken . _Just

instance GoogleRequest
         FloodlightActivityGroupsInsert' where
        type Rs FloodlightActivityGroupsInsert' =
             FloodlightActivityGroup
        request = requestWith dFAReportingRequest
        requestWith rq FloodlightActivityGroupsInsert'{..}
          = go _fagiProFileId _fagiQuotaUser
              (Just _fagiPrettyPrint)
              _fagiUserIP
              _fagiFields
              _fagiKey
              _fagiOAuthToken
              (Just AltJSON)
              _fagiPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy FloodlightActivityGroupsInsertResource)
                      rq
