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
-- Module      : Network.Google.Resource.GAN.Links.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves all links that match the query parameters.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @gan.links.list@.
module Network.Google.Resource.GAN.Links.List
    (
    -- * REST Resource
      LinksListResource

    -- * Creating a Request
    , linksList'
    , LinksList'

    -- * Request Lenses
    , llCreateDateMax
    , llAuthorship
    , llAssetSize
    , llRelationshipStatus
    , llAdvertiserId
    , llSearchText
    , llPromotionType
    , llRoleId
    , llRole
    , llCreateDateMin
    , llLinkType
    , llPageToken
    , llStartDateMax
    , llStartDateMin
    , llMaxResults
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @gan.links.list@ method which the
-- 'LinksList'' request conforms to.
type LinksListResource =
     Capture "role" LinksListRole :>
       Capture "roleId" Text :>
         "links" :>
           QueryParam "createDateMax" Text :>
             QueryParam "authorship" LinksListAuthorship :>
               QueryParams "assetSize" Text :>
                 QueryParam "relationshipStatus"
                   LinksListRelationshipStatus
                   :>
                   QueryParams "advertiserId" Int64 :>
                     QueryParam "searchText" Text :>
                       QueryParams "promotionType" LinksListPromotionType :>
                         QueryParam "createDateMin" Text :>
                           QueryParam "linkType" LinksListLinkType :>
                             QueryParam "pageToken" Text :>
                               QueryParam "startDateMax" Text :>
                                 QueryParam "startDateMin" Text :>
                                   QueryParam "maxResults" Word32 :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] Links

-- | Retrieves all links that match the query parameters.
--
-- /See:/ 'linksList'' smart constructor.
data LinksList' = LinksList'
    { _llCreateDateMax      :: !(Maybe Text)
    , _llAuthorship         :: !(Maybe LinksListAuthorship)
    , _llAssetSize          :: !(Maybe [Text])
    , _llRelationshipStatus :: !(Maybe LinksListRelationshipStatus)
    , _llAdvertiserId       :: !(Maybe [Int64])
    , _llSearchText         :: !(Maybe Text)
    , _llPromotionType      :: !(Maybe [LinksListPromotionType])
    , _llRoleId             :: !Text
    , _llRole               :: !LinksListRole
    , _llCreateDateMin      :: !(Maybe Text)
    , _llLinkType           :: !(Maybe LinksListLinkType)
    , _llPageToken          :: !(Maybe Text)
    , _llStartDateMax       :: !(Maybe Text)
    , _llStartDateMin       :: !(Maybe Text)
    , _llMaxResults         :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llCreateDateMax'
--
-- * 'llAuthorship'
--
-- * 'llAssetSize'
--
-- * 'llRelationshipStatus'
--
-- * 'llAdvertiserId'
--
-- * 'llSearchText'
--
-- * 'llPromotionType'
--
-- * 'llRoleId'
--
-- * 'llRole'
--
-- * 'llCreateDateMin'
--
-- * 'llLinkType'
--
-- * 'llPageToken'
--
-- * 'llStartDateMax'
--
-- * 'llStartDateMin'
--
-- * 'llMaxResults'
linksList'
    :: Text -- ^ 'llRoleId'
    -> LinksListRole -- ^ 'llRole'
    -> LinksList'
linksList' pLlRoleId_ pLlRole_ =
    LinksList'
    { _llCreateDateMax = Nothing
    , _llAuthorship = Nothing
    , _llAssetSize = Nothing
    , _llRelationshipStatus = Nothing
    , _llAdvertiserId = Nothing
    , _llSearchText = Nothing
    , _llPromotionType = Nothing
    , _llRoleId = pLlRoleId_
    , _llRole = pLlRole_
    , _llCreateDateMin = Nothing
    , _llLinkType = Nothing
    , _llPageToken = Nothing
    , _llStartDateMax = Nothing
    , _llStartDateMin = Nothing
    , _llMaxResults = Nothing
    }

-- | The end of the create date range.
llCreateDateMax :: Lens' LinksList' (Maybe Text)
llCreateDateMax
  = lens _llCreateDateMax
      (\ s a -> s{_llCreateDateMax = a})

-- | The role of the author of the link.
llAuthorship :: Lens' LinksList' (Maybe LinksListAuthorship)
llAuthorship
  = lens _llAuthorship (\ s a -> s{_llAuthorship = a})

-- | The size of the given asset.
llAssetSize :: Lens' LinksList' [Text]
llAssetSize
  = lens _llAssetSize (\ s a -> s{_llAssetSize = a}) .
      _Default
      . _Coerce

-- | The status of the relationship.
llRelationshipStatus :: Lens' LinksList' (Maybe LinksListRelationshipStatus)
llRelationshipStatus
  = lens _llRelationshipStatus
      (\ s a -> s{_llRelationshipStatus = a})

-- | Limits the resulting links to the ones belonging to the listed
-- advertisers.
llAdvertiserId :: Lens' LinksList' [Int64]
llAdvertiserId
  = lens _llAdvertiserId
      (\ s a -> s{_llAdvertiserId = a})
      . _Default
      . _Coerce

-- | Field for full text search across title and merchandising text, supports
-- link id search.
llSearchText :: Lens' LinksList' (Maybe Text)
llSearchText
  = lens _llSearchText (\ s a -> s{_llSearchText = a})

-- | The promotion type.
llPromotionType :: Lens' LinksList' [LinksListPromotionType]
llPromotionType
  = lens _llPromotionType
      (\ s a -> s{_llPromotionType = a})
      . _Default
      . _Coerce

-- | The ID of the requesting advertiser or publisher.
llRoleId :: Lens' LinksList' Text
llRoleId = lens _llRoleId (\ s a -> s{_llRoleId = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
llRole :: Lens' LinksList' LinksListRole
llRole = lens _llRole (\ s a -> s{_llRole = a})

-- | The beginning of the create date range.
llCreateDateMin :: Lens' LinksList' (Maybe Text)
llCreateDateMin
  = lens _llCreateDateMin
      (\ s a -> s{_llCreateDateMin = a})

-- | The type of the link.
llLinkType :: Lens' LinksList' (Maybe LinksListLinkType)
llLinkType
  = lens _llLinkType (\ s a -> s{_llLinkType = a})

-- | The value of \'nextPageToken\' from the previous page. Optional.
llPageToken :: Lens' LinksList' (Maybe Text)
llPageToken
  = lens _llPageToken (\ s a -> s{_llPageToken = a})

-- | The end of the start date range.
llStartDateMax :: Lens' LinksList' (Maybe Text)
llStartDateMax
  = lens _llStartDateMax
      (\ s a -> s{_llStartDateMax = a})

-- | The beginning of the start date range.
llStartDateMin :: Lens' LinksList' (Maybe Text)
llStartDateMin
  = lens _llStartDateMin
      (\ s a -> s{_llStartDateMin = a})

-- | Max number of items to return in this page. Optional. Defaults to 20.
llMaxResults :: Lens' LinksList' (Maybe Word32)
llMaxResults
  = lens _llMaxResults (\ s a -> s{_llMaxResults = a})

instance GoogleRequest LinksList' where
        type Rs LinksList' = Links
        requestClient LinksList'{..}
          = go _llRole _llRoleId _llCreateDateMax _llAuthorship
              (_llAssetSize ^. _Default)
              _llRelationshipStatus
              (_llAdvertiserId ^. _Default)
              _llSearchText
              (_llPromotionType ^. _Default)
              _llCreateDateMin
              _llLinkType
              _llPageToken
              _llStartDateMax
              _llStartDateMin
              _llMaxResults
              (Just AltJSON)
              affiliatesService
          where go
                  = buildClient (Proxy :: Proxy LinksListResource)
                      mempty
