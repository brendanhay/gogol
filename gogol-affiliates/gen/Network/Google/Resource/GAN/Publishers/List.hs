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
-- Module      : Network.Google.Resource.GAN.Publishers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves data about all publishers that the requesting
-- advertiser\/publisher has access to.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @GANPublishersList@.
module Network.Google.Resource.GAN.Publishers.List
    (
    -- * REST Resource
      PublishersListResource

    -- * Creating a Request
    , publishersList'
    , PublishersList'

    -- * Request Lenses
    , plRelationshipStatus
    , plMinSevenDayEpc
    , plRoleId
    , plMinNinetyDayEpc
    , plRole
    , plMinPayoutRank
    , plPageToken
    , plPublisherCategory
    , plMaxResults
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @GANPublishersList@ method which the
-- 'PublishersList'' request conforms to.
type PublishersListResource =
     Capture "role" PublishersListRole :>
       Capture "roleId" Text :>
         "publishers" :>
           QueryParam "relationshipStatus"
             PublishersListRelationshipStatus
             :>
             QueryParam "minSevenDayEpc" Double :>
               QueryParam "minNinetyDayEpc" Double :>
                 QueryParam "minPayoutRank" Int32 :>
                   QueryParam "pageToken" Text :>
                     QueryParam "publisherCategory" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Publishers

-- | Retrieves data about all publishers that the requesting
-- advertiser\/publisher has access to.
--
-- /See:/ 'publishersList'' smart constructor.
data PublishersList' = PublishersList'
    { _plRelationshipStatus :: !(Maybe PublishersListRelationshipStatus)
    , _plMinSevenDayEpc     :: !(Maybe Double)
    , _plRoleId             :: !Text
    , _plMinNinetyDayEpc    :: !(Maybe Double)
    , _plRole               :: !PublishersListRole
    , _plMinPayoutRank      :: !(Maybe Int32)
    , _plPageToken          :: !(Maybe Text)
    , _plPublisherCategory  :: !(Maybe Text)
    , _plMaxResults         :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublishersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
-- * 'plMinPayoutRank'
--
-- * 'plPageToken'
--
-- * 'plPublisherCategory'
--
-- * 'plMaxResults'
publishersList'
    :: Text -- ^ 'roleId'
    -> PublishersListRole -- ^ 'role'
    -> PublishersList'
publishersList' pPlRoleId_ pPlRole_ =
    PublishersList'
    { _plRelationshipStatus = Nothing
    , _plMinSevenDayEpc = Nothing
    , _plRoleId = pPlRoleId_
    , _plMinNinetyDayEpc = Nothing
    , _plRole = pPlRole_
    , _plMinPayoutRank = Nothing
    , _plPageToken = Nothing
    , _plPublisherCategory = Nothing
    , _plMaxResults = Nothing
    }

-- | Filters out all publishers for which do not have the given relationship
-- status with the requesting publisher.
plRelationshipStatus :: Lens' PublishersList' (Maybe PublishersListRelationshipStatus)
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
plRole :: Lens' PublishersList' PublishersListRole
plRole = lens _plRole (\ s a -> s{_plRole = a})

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

instance GoogleRequest PublishersList' where
        type Rs PublishersList' = Publishers
        requestClient PublishersList'{..}
          = go _plRole _plRoleId _plRelationshipStatus
              _plMinSevenDayEpc
              _plMinNinetyDayEpc
              _plMinPayoutRank
              _plPageToken
              _plPublisherCategory
              _plMaxResults
              (Just AltJSON)
              affiliatesService
          where go
                  = buildClient (Proxy :: Proxy PublishersListResource)
                      mempty
