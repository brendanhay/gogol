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
-- Module      : Network.Google.Resource.DFAReporting.PlacementGroups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new placement group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementGroupsInsert@.
module Network.Google.Resource.DFAReporting.PlacementGroups.Insert
    (
    -- * REST Resource
      PlacementGroupsInsertResource

    -- * Creating a Request
    , placementGroupsInsert'
    , PlacementGroupsInsert'

    -- * Request Lenses
    , pgiQuotaUser
    , pgiPrettyPrint
    , pgiUserIP
    , pgiProFileId
    , pgiPayload
    , pgiKey
    , pgiOAuthToken
    , pgiFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementGroupsInsert@ method which the
-- 'PlacementGroupsInsert'' request conforms to.
type PlacementGroupsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] PlacementGroup :>
                           Post '[JSON] PlacementGroup

-- | Inserts a new placement group.
--
-- /See:/ 'placementGroupsInsert'' smart constructor.
data PlacementGroupsInsert' = PlacementGroupsInsert'
    { _pgiQuotaUser   :: !(Maybe Text)
    , _pgiPrettyPrint :: !Bool
    , _pgiUserIP      :: !(Maybe Text)
    , _pgiProFileId   :: !Int64
    , _pgiPayload     :: !PlacementGroup
    , _pgiKey         :: !(Maybe AuthKey)
    , _pgiOAuthToken  :: !(Maybe OAuthToken)
    , _pgiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementGroupsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgiQuotaUser'
--
-- * 'pgiPrettyPrint'
--
-- * 'pgiUserIP'
--
-- * 'pgiProFileId'
--
-- * 'pgiPayload'
--
-- * 'pgiKey'
--
-- * 'pgiOAuthToken'
--
-- * 'pgiFields'
placementGroupsInsert'
    :: Int64 -- ^ 'profileId'
    -> PlacementGroup -- ^ 'payload'
    -> PlacementGroupsInsert'
placementGroupsInsert' pPgiProFileId_ pPgiPayload_ =
    PlacementGroupsInsert'
    { _pgiQuotaUser = Nothing
    , _pgiPrettyPrint = True
    , _pgiUserIP = Nothing
    , _pgiProFileId = pPgiProFileId_
    , _pgiPayload = pPgiPayload_
    , _pgiKey = Nothing
    , _pgiOAuthToken = Nothing
    , _pgiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgiQuotaUser :: Lens' PlacementGroupsInsert' (Maybe Text)
pgiQuotaUser
  = lens _pgiQuotaUser (\ s a -> s{_pgiQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgiPrettyPrint :: Lens' PlacementGroupsInsert' Bool
pgiPrettyPrint
  = lens _pgiPrettyPrint
      (\ s a -> s{_pgiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgiUserIP :: Lens' PlacementGroupsInsert' (Maybe Text)
pgiUserIP
  = lens _pgiUserIP (\ s a -> s{_pgiUserIP = a})

-- | User profile ID associated with this request.
pgiProFileId :: Lens' PlacementGroupsInsert' Int64
pgiProFileId
  = lens _pgiProFileId (\ s a -> s{_pgiProFileId = a})

-- | Multipart request metadata.
pgiPayload :: Lens' PlacementGroupsInsert' PlacementGroup
pgiPayload
  = lens _pgiPayload (\ s a -> s{_pgiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgiKey :: Lens' PlacementGroupsInsert' (Maybe AuthKey)
pgiKey = lens _pgiKey (\ s a -> s{_pgiKey = a})

-- | OAuth 2.0 token for the current user.
pgiOAuthToken :: Lens' PlacementGroupsInsert' (Maybe OAuthToken)
pgiOAuthToken
  = lens _pgiOAuthToken
      (\ s a -> s{_pgiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgiFields :: Lens' PlacementGroupsInsert' (Maybe Text)
pgiFields
  = lens _pgiFields (\ s a -> s{_pgiFields = a})

instance GoogleAuth PlacementGroupsInsert' where
        _AuthKey = pgiKey . _Just
        _AuthToken = pgiOAuthToken . _Just

instance GoogleRequest PlacementGroupsInsert' where
        type Rs PlacementGroupsInsert' = PlacementGroup
        request = requestWith dFAReportingRequest
        requestWith rq PlacementGroupsInsert'{..}
          = go _pgiProFileId _pgiQuotaUser
              (Just _pgiPrettyPrint)
              _pgiUserIP
              _pgiFields
              _pgiKey
              _pgiOAuthToken
              (Just AltJSON)
              _pgiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy PlacementGroupsInsertResource)
                      rq
