{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.GAN.Links.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves all links that match the query parameters.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @GANLinksList@.
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
    , llQuotaUser
    , llPrettyPrint
    , llAssetSize
    , llUserIP
    , llRelationshipStatus
    , llAdvertiserId
    , llSearchText
    , llPromotionType
    , llRoleId
    , llRole
    , llKey
    , llCreateDateMin
    , llLinkType
    , llPageToken
    , llStartDateMax
    , llOAuthToken
    , llStartDateMin
    , llMaxResults
    , llFields
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @GANLinksList@ which the
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
                                     QueryParam "quotaUser" Text :>
                                       QueryParam "prettyPrint" Bool :>
                                         QueryParam "userIp" Text :>
                                           QueryParam "fields" Text :>
                                             QueryParam "key" Key :>
                                               QueryParam "oauth_token"
                                                 OAuthToken
                                                 :>
                                                 QueryParam "alt" AltJSON :>
                                                   Get '[JSON] Links

-- | Retrieves all links that match the query parameters.
--
-- /See:/ 'linksList'' smart constructor.
data LinksList' = LinksList'
    { _llCreateDateMax      :: !(Maybe Text)
    , _llAuthorship         :: !(Maybe LinksListAuthorship)
    , _llQuotaUser          :: !(Maybe Text)
    , _llPrettyPrint        :: !Bool
    , _llAssetSize          :: !(Maybe [Text])
    , _llUserIP             :: !(Maybe Text)
    , _llRelationshipStatus :: !(Maybe LinksListRelationshipStatus)
    , _llAdvertiserId       :: !(Maybe [Int64])
    , _llSearchText         :: !(Maybe Text)
    , _llPromotionType      :: !(Maybe [LinksListPromotionType])
    , _llRoleId             :: !Text
    , _llRole               :: !LinksListRole
    , _llKey                :: !(Maybe Key)
    , _llCreateDateMin      :: !(Maybe Text)
    , _llLinkType           :: !(Maybe LinksListLinkType)
    , _llPageToken          :: !(Maybe Text)
    , _llStartDateMax       :: !(Maybe Text)
    , _llOAuthToken         :: !(Maybe OAuthToken)
    , _llStartDateMin       :: !(Maybe Text)
    , _llMaxResults         :: !(Maybe Word32)
    , _llFields             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llCreateDateMax'
--
-- * 'llAuthorship'
--
-- * 'llQuotaUser'
--
-- * 'llPrettyPrint'
--
-- * 'llAssetSize'
--
-- * 'llUserIP'
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
-- * 'llKey'
--
-- * 'llCreateDateMin'
--
-- * 'llLinkType'
--
-- * 'llPageToken'
--
-- * 'llStartDateMax'
--
-- * 'llOAuthToken'
--
-- * 'llStartDateMin'
--
-- * 'llMaxResults'
--
-- * 'llFields'
linksList'
    :: Text -- ^ 'roleId'
    -> LinksListRole -- ^ 'role'
    -> LinksList'
linksList' pLlRoleId_ pLlRole_ =
    LinksList'
    { _llCreateDateMax = Nothing
    , _llAuthorship = Nothing
    , _llQuotaUser = Nothing
    , _llPrettyPrint = True
    , _llAssetSize = Nothing
    , _llUserIP = Nothing
    , _llRelationshipStatus = Nothing
    , _llAdvertiserId = Nothing
    , _llSearchText = Nothing
    , _llPromotionType = Nothing
    , _llRoleId = pLlRoleId_
    , _llRole = pLlRole_
    , _llKey = Nothing
    , _llCreateDateMin = Nothing
    , _llLinkType = Nothing
    , _llPageToken = Nothing
    , _llStartDateMax = Nothing
    , _llOAuthToken = Nothing
    , _llStartDateMin = Nothing
    , _llMaxResults = Nothing
    , _llFields = Nothing
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

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
llQuotaUser :: Lens' LinksList' (Maybe Text)
llQuotaUser
  = lens _llQuotaUser (\ s a -> s{_llQuotaUser = a})

-- | Returns response with indentations and line breaks.
llPrettyPrint :: Lens' LinksList' Bool
llPrettyPrint
  = lens _llPrettyPrint
      (\ s a -> s{_llPrettyPrint = a})

-- | The size of the given asset.
llAssetSize :: Lens' LinksList' [Text]
llAssetSize
  = lens _llAssetSize (\ s a -> s{_llAssetSize = a}) .
      _Default
      . _Coerce

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
llUserIP :: Lens' LinksList' (Maybe Text)
llUserIP = lens _llUserIP (\ s a -> s{_llUserIP = a})

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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
llKey :: Lens' LinksList' (Maybe Key)
llKey = lens _llKey (\ s a -> s{_llKey = a})

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

-- | OAuth 2.0 token for the current user.
llOAuthToken :: Lens' LinksList' (Maybe OAuthToken)
llOAuthToken
  = lens _llOAuthToken (\ s a -> s{_llOAuthToken = a})

-- | The beginning of the start date range.
llStartDateMin :: Lens' LinksList' (Maybe Text)
llStartDateMin
  = lens _llStartDateMin
      (\ s a -> s{_llStartDateMin = a})

-- | Max number of items to return in this page. Optional. Defaults to 20.
llMaxResults :: Lens' LinksList' (Maybe Word32)
llMaxResults
  = lens _llMaxResults (\ s a -> s{_llMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
llFields :: Lens' LinksList' (Maybe Text)
llFields = lens _llFields (\ s a -> s{_llFields = a})

instance GoogleAuth LinksList' where
        authKey = llKey . _Just
        authToken = llOAuthToken . _Just

instance GoogleRequest LinksList' where
        type Rs LinksList' = Links
        request = requestWithRoute defReq affiliatesURL
        requestWithRoute r u LinksList'{..}
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
              _llQuotaUser
              (Just _llPrettyPrint)
              _llUserIP
              _llFields
              _llKey
              _llOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy LinksListResource)
                      r
                      u
