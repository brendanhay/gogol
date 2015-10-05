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
-- Module      : Network.Google.Resource.GAN.Advertisers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves data about all advertisers that the requesting
-- advertiser\/publisher has access to.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @GANAdvertisersList@.
module Network.Google.Resource.GAN.Advertisers.List
    (
    -- * REST Resource
      AdvertisersListResource

    -- * Creating a Request
    , advertisersList'
    , AdvertisersList'

    -- * Request Lenses
    , alQuotaUser
    , alPrettyPrint
    , alUserIP
    , alRelationshipStatus
    , alMinSevenDayEpc
    , alRoleId
    , alMinNinetyDayEpc
    , alRole
    , alKey
    , alMinPayoutRank
    , alAdvertiserCategory
    , alPageToken
    , alOAuthToken
    , alMaxResults
    , alFields
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @GANAdvertisersList@ which the
-- 'AdvertisersList'' request conforms to.
type AdvertisersListResource =
     Capture "role" AdvertisersListRole :>
       Capture "roleId" Text :>
         "advertisers" :>
           QueryParam "relationshipStatus"
             AdvertisersListRelationshipStatus
             :>
             QueryParam "minSevenDayEpc" Double :>
               QueryParam "minNinetyDayEpc" Double :>
                 QueryParam "minPayoutRank" Int32 :>
                   QueryParam "advertiserCategory" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" Key :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] Advertisers

-- | Retrieves data about all advertisers that the requesting
-- advertiser\/publisher has access to.
--
-- /See:/ 'advertisersList'' smart constructor.
data AdvertisersList' = AdvertisersList'
    { _alQuotaUser          :: !(Maybe Text)
    , _alPrettyPrint        :: !Bool
    , _alUserIP             :: !(Maybe Text)
    , _alRelationshipStatus :: !(Maybe AdvertisersListRelationshipStatus)
    , _alMinSevenDayEpc     :: !(Maybe Double)
    , _alRoleId             :: !Text
    , _alMinNinetyDayEpc    :: !(Maybe Double)
    , _alRole               :: !AdvertisersListRole
    , _alKey                :: !(Maybe Key)
    , _alMinPayoutRank      :: !(Maybe Int32)
    , _alAdvertiserCategory :: !(Maybe Text)
    , _alPageToken          :: !(Maybe Text)
    , _alOAuthToken         :: !(Maybe OAuthToken)
    , _alMaxResults         :: !(Maybe Word32)
    , _alFields             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alQuotaUser'
--
-- * 'alPrettyPrint'
--
-- * 'alUserIP'
--
-- * 'alRelationshipStatus'
--
-- * 'alMinSevenDayEpc'
--
-- * 'alRoleId'
--
-- * 'alMinNinetyDayEpc'
--
-- * 'alRole'
--
-- * 'alKey'
--
-- * 'alMinPayoutRank'
--
-- * 'alAdvertiserCategory'
--
-- * 'alPageToken'
--
-- * 'alOAuthToken'
--
-- * 'alMaxResults'
--
-- * 'alFields'
advertisersList'
    :: Text -- ^ 'roleId'
    -> AdvertisersListRole -- ^ 'role'
    -> AdvertisersList'
advertisersList' pAlRoleId_ pAlRole_ =
    AdvertisersList'
    { _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alUserIP = Nothing
    , _alRelationshipStatus = Nothing
    , _alMinSevenDayEpc = Nothing
    , _alRoleId = pAlRoleId_
    , _alMinNinetyDayEpc = Nothing
    , _alRole = pAlRole_
    , _alKey = Nothing
    , _alMinPayoutRank = Nothing
    , _alAdvertiserCategory = Nothing
    , _alPageToken = Nothing
    , _alOAuthToken = Nothing
    , _alMaxResults = Nothing
    , _alFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alQuotaUser :: Lens' AdvertisersList' (Maybe Text)
alQuotaUser
  = lens _alQuotaUser (\ s a -> s{_alQuotaUser = a})

-- | Returns response with indentations and line breaks.
alPrettyPrint :: Lens' AdvertisersList' Bool
alPrettyPrint
  = lens _alPrettyPrint
      (\ s a -> s{_alPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIP :: Lens' AdvertisersList' (Maybe Text)
alUserIP = lens _alUserIP (\ s a -> s{_alUserIP = a})

-- | Filters out all advertisers for which do not have the given relationship
-- status with the requesting publisher.
alRelationshipStatus :: Lens' AdvertisersList' (Maybe AdvertisersListRelationshipStatus)
alRelationshipStatus
  = lens _alRelationshipStatus
      (\ s a -> s{_alRelationshipStatus = a})

-- | Filters out all advertisers that have a seven day EPC average lower than
-- the given value (inclusive). Min value: 0.0. Optional.
alMinSevenDayEpc :: Lens' AdvertisersList' (Maybe Double)
alMinSevenDayEpc
  = lens _alMinSevenDayEpc
      (\ s a -> s{_alMinSevenDayEpc = a})

-- | The ID of the requesting advertiser or publisher.
alRoleId :: Lens' AdvertisersList' Text
alRoleId = lens _alRoleId (\ s a -> s{_alRoleId = a})

-- | Filters out all advertisers that have a ninety day EPC average lower
-- than the given value (inclusive). Min value: 0.0. Optional.
alMinNinetyDayEpc :: Lens' AdvertisersList' (Maybe Double)
alMinNinetyDayEpc
  = lens _alMinNinetyDayEpc
      (\ s a -> s{_alMinNinetyDayEpc = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
alRole :: Lens' AdvertisersList' AdvertisersListRole
alRole = lens _alRole (\ s a -> s{_alRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' AdvertisersList' (Maybe Key)
alKey = lens _alKey (\ s a -> s{_alKey = a})

-- | A value between 1 and 4, where 1 represents the quartile of advertisers
-- with the lowest ranks and 4 represents the quartile of advertisers with
-- the highest ranks. Filters out all advertisers with a lower rank than
-- the given quartile. For example if a 2 was given only advertisers with a
-- payout rank of 25 or higher would be included. Optional.
alMinPayoutRank :: Lens' AdvertisersList' (Maybe Int32)
alMinPayoutRank
  = lens _alMinPayoutRank
      (\ s a -> s{_alMinPayoutRank = a})

-- | Caret(^) delimted list of advertiser categories. Valid categories are
-- defined here:
-- http:\/\/www.google.com\/support\/affiliatenetwork\/advertiser\/bin\/answer.py?hl=en&answer=107581.
-- Filters out all advertisers not in one of the given advertiser
-- categories. Optional.
alAdvertiserCategory :: Lens' AdvertisersList' (Maybe Text)
alAdvertiserCategory
  = lens _alAdvertiserCategory
      (\ s a -> s{_alAdvertiserCategory = a})

-- | The value of \'nextPageToken\' from the previous page. Optional.
alPageToken :: Lens' AdvertisersList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | OAuth 2.0 token for the current user.
alOAuthToken :: Lens' AdvertisersList' (Maybe OAuthToken)
alOAuthToken
  = lens _alOAuthToken (\ s a -> s{_alOAuthToken = a})

-- | Max number of items to return in this page. Optional. Defaults to 20.
alMaxResults :: Lens' AdvertisersList' (Maybe Word32)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' AdvertisersList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

instance GoogleAuth AdvertisersList' where
        authKey = alKey . _Just
        authToken = alOAuthToken . _Just

instance GoogleRequest AdvertisersList' where
        type Rs AdvertisersList' = Advertisers
        request = requestWithRoute defReq affiliatesURL
        requestWithRoute r u AdvertisersList'{..}
          = go _alRole _alRoleId _alRelationshipStatus
              _alMinSevenDayEpc
              _alMinNinetyDayEpc
              _alMinPayoutRank
              _alAdvertiserCategory
              _alPageToken
              _alMaxResults
              _alQuotaUser
              (Just _alPrettyPrint)
              _alUserIP
              _alFields
              _alKey
              _alOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertisersListResource)
                      r
                      u
