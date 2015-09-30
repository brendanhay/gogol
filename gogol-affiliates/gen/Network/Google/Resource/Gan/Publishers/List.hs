{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Gan.Publishers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves data about all publishers that the requesting
-- advertiser\/publisher has access to.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @GanPublishersList@.
module Gan.Publishers.List
    (
    -- * REST Resource
      PublishersListAPI

    -- * Creating a Request
    , publishersList
    , PublishersList

    -- * Request Lenses
    , plQuotaUser
    , plPrettyPrint
    , plUserIp
    , plRelationshipStatus
    , plMinSevenDayEpc
    , plRoleId
    , plMinNinetyDayEpc
    , plRole
    , plKey
    , plMinPayoutRank
    , plPageToken
    , plOauthToken
    , plPublisherCategory
    , plMaxResults
    , plFields
    , plAlt
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @GanPublishersList@ which the
-- 'PublishersList' request conforms to.
type PublishersListAPI =
     Capture "role" Text :>
       Capture "roleId" Text :>
         "publishers" :>
           QueryParam "relationshipStatus" Text :>
             QueryParam "minSevenDayEpc" Double :>
               QueryParam "minNinetyDayEpc" Double :>
                 QueryParam "minPayoutRank" Int32 :>
                   QueryParam "pageToken" Text :>
                     QueryParam "publisherCategory" Text :>
                       QueryParam "maxResults" Word32 :>
                         Get '[JSON] Publishers

-- | Retrieves data about all publishers that the requesting
-- advertiser\/publisher has access to.
--
-- /See:/ 'publishersList' smart constructor.
data PublishersList = PublishersList
    { _plQuotaUser          :: !(Maybe Text)
    , _plPrettyPrint        :: !Bool
    , _plUserIp             :: !(Maybe Text)
    , _plRelationshipStatus :: !(Maybe Text)
    , _plMinSevenDayEpc     :: !(Maybe Double)
    , _plRoleId             :: !Text
    , _plMinNinetyDayEpc    :: !(Maybe Double)
    , _plRole               :: !Text
    , _plKey                :: !(Maybe Text)
    , _plMinPayoutRank      :: !(Maybe Int32)
    , _plPageToken          :: !(Maybe Text)
    , _plOauthToken         :: !(Maybe Text)
    , _plPublisherCategory  :: !(Maybe Text)
    , _plMaxResults         :: !(Maybe Word32)
    , _plFields             :: !(Maybe Text)
    , _plAlt                :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublishersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plQuotaUser'
--
-- * 'plPrettyPrint'
--
-- * 'plUserIp'
--
-- * 'plRelationshipStatus'
--
-- * 'plMinSevenDayEpc'
--
-- * 'plRoleId'
--
-- * 'plMinNinetyDayEpc'
--
-- * 'plRole'
--
-- * 'plKey'
--
-- * 'plMinPayoutRank'
--
-- * 'plPageToken'
--
-- * 'plOauthToken'
--
-- * 'plPublisherCategory'
--
-- * 'plMaxResults'
--
-- * 'plFields'
--
-- * 'plAlt'
publishersList
    :: Text -- ^ 'roleId'
    -> Text -- ^ 'role'
    -> PublishersList
publishersList pPlRoleId_ pPlRole_ =
    PublishersList
    { _plQuotaUser = Nothing
    , _plPrettyPrint = True
    , _plUserIp = Nothing
    , _plRelationshipStatus = Nothing
    , _plMinSevenDayEpc = Nothing
    , _plRoleId = pPlRoleId_
    , _plMinNinetyDayEpc = Nothing
    , _plRole = pPlRole_
    , _plKey = Nothing
    , _plMinPayoutRank = Nothing
    , _plPageToken = Nothing
    , _plOauthToken = Nothing
    , _plPublisherCategory = Nothing
    , _plMaxResults = Nothing
    , _plFields = Nothing
    , _plAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plQuotaUser :: Lens' PublishersList' (Maybe Text)
plQuotaUser
  = lens _plQuotaUser (\ s a -> s{_plQuotaUser = a})

-- | Returns response with indentations and line breaks.
plPrettyPrint :: Lens' PublishersList' Bool
plPrettyPrint
  = lens _plPrettyPrint
      (\ s a -> s{_plPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plUserIp :: Lens' PublishersList' (Maybe Text)
plUserIp = lens _plUserIp (\ s a -> s{_plUserIp = a})

-- | Filters out all publishers for which do not have the given relationship
-- status with the requesting publisher.
plRelationshipStatus :: Lens' PublishersList' (Maybe Text)
plRelationshipStatus
  = lens _plRelationshipStatus
      (\ s a -> s{_plRelationshipStatus = a})

-- | Filters out all publishers that have a seven day EPC average lower than
-- the given value (inclusive). Min value 0.0. Optional.
plMinSevenDayEpc :: Lens' PublishersList' (Maybe Double)
plMinSevenDayEpc
  = lens _plMinSevenDayEpc
      (\ s a -> s{_plMinSevenDayEpc = a})

-- | The ID of the requesting advertiser or publisher.
plRoleId :: Lens' PublishersList' Text
plRoleId = lens _plRoleId (\ s a -> s{_plRoleId = a})

-- | Filters out all publishers that have a ninety day EPC average lower than
-- the given value (inclusive). Min value: 0.0. Optional.
plMinNinetyDayEpc :: Lens' PublishersList' (Maybe Double)
plMinNinetyDayEpc
  = lens _plMinNinetyDayEpc
      (\ s a -> s{_plMinNinetyDayEpc = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
plRole :: Lens' PublishersList' Text
plRole = lens _plRole (\ s a -> s{_plRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plKey :: Lens' PublishersList' (Maybe Text)
plKey = lens _plKey (\ s a -> s{_plKey = a})

-- | A value between 1 and 4, where 1 represents the quartile of publishers
-- with the lowest ranks and 4 represents the quartile of publishers with
-- the highest ranks. Filters out all publishers with a lower rank than the
-- given quartile. For example if a 2 was given only publishers with a
-- payout rank of 25 or higher would be included. Optional.
plMinPayoutRank :: Lens' PublishersList' (Maybe Int32)
plMinPayoutRank
  = lens _plMinPayoutRank
      (\ s a -> s{_plMinPayoutRank = a})

-- | The value of \'nextPageToken\' from the previous page. Optional.
plPageToken :: Lens' PublishersList' (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | OAuth 2.0 token for the current user.
plOauthToken :: Lens' PublishersList' (Maybe Text)
plOauthToken
  = lens _plOauthToken (\ s a -> s{_plOauthToken = a})

-- | Caret(^) delimted list of publisher categories. Valid categories:
-- (unclassified|community_and_content|shopping_and_promotion|loyalty_and_rewards|network|search_specialist|comparison_shopping|email).
-- Filters out all publishers not in one of the given advertiser
-- categories. Optional.
plPublisherCategory :: Lens' PublishersList' (Maybe Text)
plPublisherCategory
  = lens _plPublisherCategory
      (\ s a -> s{_plPublisherCategory = a})

-- | Max number of items to return in this page. Optional. Defaults to 20.
plMaxResults :: Lens' PublishersList' (Maybe Word32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
plFields :: Lens' PublishersList' (Maybe Text)
plFields = lens _plFields (\ s a -> s{_plFields = a})

-- | Data format for the response.
plAlt :: Lens' PublishersList' Text
plAlt = lens _plAlt (\ s a -> s{_plAlt = a})

instance GoogleRequest PublishersList' where
        type Rs PublishersList' = Publishers
        request = requestWithRoute defReq affiliatesURL
        requestWithRoute r u PublishersList{..}
          = go _plQuotaUser _plPrettyPrint _plUserIp
              _plRelationshipStatus
              _plMinSevenDayEpc
              _plRoleId
              _plMinNinetyDayEpc
              _plRole
              _plKey
              _plMinPayoutRank
              _plPageToken
              _plOauthToken
              _plPublisherCategory
              _plMaxResults
              _plFields
              _plAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PublishersListAPI)
                      r
                      u
