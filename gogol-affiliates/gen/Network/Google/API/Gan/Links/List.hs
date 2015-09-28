{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Gan.Links.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves all links that match the query parameters.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @gan.links.list@.
module Network.Google.API.Gan.Links.List
    (
    -- * REST Resource
      LinksListAPI

    -- * Creating a Request
    , linksList'
    , LinksList'

    -- * Request Lenses
    , llCreateDateMax
    , llAuthorship
    , llQuotaUser
    , llPrettyPrint
    , llAssetSize
    , llUserIp
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
    , llOauthToken
    , llStartDateMin
    , llMaxResults
    , llFields
    , llAlt
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for gan.links.list which the
-- 'LinksList'' request conforms to.
type LinksListAPI =
     Capture "role" LinksList'Role :>
       Capture "roleId" Text :>
         "links" :>
           QueryParam "createDateMax" Text :>
             QueryParam "authorship" LinksList'Authorship :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "assetSize" Text :>
                     QueryParam "userIp" Text :>
                       QueryParam "relationshipStatus"
                         LinksList'RelationshipStatus
                         :>
                         QueryParam "advertiserId" Int64 :>
                           QueryParam "searchText" Text :>
                             QueryParam "promotionType" LinksList'PromotionType
                               :>
                               QueryParam "key" Text :>
                                 QueryParam "createDateMin" Text :>
                                   QueryParam "linkType" LinksList'LinkType :>
                                     QueryParam "pageToken" Text :>
                                       QueryParam "startDateMax" Text :>
                                         QueryParam "oauth_token" Text :>
                                           QueryParam "startDateMin" Text :>
                                             QueryParam "maxResults" Word32 :>
                                               QueryParam "fields" Text :>
                                                 QueryParam "alt" Alt :>
                                                   Get '[JSON] Links

-- | Retrieves all links that match the query parameters.
--
-- /See:/ 'linksList'' smart constructor.
data LinksList' = LinksList'
    { _llCreateDateMax      :: !(Maybe Text)
    , _llAuthorship         :: !(Maybe LinksList'Authorship)
    , _llQuotaUser          :: !(Maybe Text)
    , _llPrettyPrint        :: !Bool
    , _llAssetSize          :: !(Maybe Text)
    , _llUserIp             :: !(Maybe Text)
    , _llRelationshipStatus :: !(Maybe LinksList'RelationshipStatus)
    , _llAdvertiserId       :: !(Maybe Int64)
    , _llSearchText         :: !(Maybe Text)
    , _llPromotionType      :: !(Maybe LinksList'PromotionType)
    , _llRoleId             :: !Text
    , _llRole               :: !LinksList'Role
    , _llKey                :: !(Maybe Text)
    , _llCreateDateMin      :: !(Maybe Text)
    , _llLinkType           :: !(Maybe LinksList'LinkType)
    , _llPageToken          :: !(Maybe Text)
    , _llStartDateMax       :: !(Maybe Text)
    , _llOauthToken         :: !(Maybe Text)
    , _llStartDateMin       :: !(Maybe Text)
    , _llMaxResults         :: !(Maybe Word32)
    , _llFields             :: !(Maybe Text)
    , _llAlt                :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'llUserIp'
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
-- * 'llOauthToken'
--
-- * 'llStartDateMin'
--
-- * 'llMaxResults'
--
-- * 'llFields'
--
-- * 'llAlt'
linksList'
    :: Text -- ^ 'roleId'
    -> LinksList'Role -- ^ 'role'
    -> LinksList'
linksList' pLlRoleId_ pLlRole_ =
    LinksList'
    { _llCreateDateMax = Nothing
    , _llAuthorship = Nothing
    , _llQuotaUser = Nothing
    , _llPrettyPrint = True
    , _llAssetSize = Nothing
    , _llUserIp = Nothing
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
    , _llOauthToken = Nothing
    , _llStartDateMin = Nothing
    , _llMaxResults = Nothing
    , _llFields = Nothing
    , _llAlt = JSON
    }

-- | The end of the create date range.
llCreateDateMax :: Lens' LinksList' (Maybe Text)
llCreateDateMax
  = lens _llCreateDateMax
      (\ s a -> s{_llCreateDateMax = a})

-- | The role of the author of the link.
llAuthorship :: Lens' LinksList' (Maybe LinksList'Authorship)
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
llAssetSize :: Lens' LinksList' (Maybe Text)
llAssetSize
  = lens _llAssetSize (\ s a -> s{_llAssetSize = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
llUserIp :: Lens' LinksList' (Maybe Text)
llUserIp = lens _llUserIp (\ s a -> s{_llUserIp = a})

-- | The status of the relationship.
llRelationshipStatus :: Lens' LinksList' (Maybe LinksList'RelationshipStatus)
llRelationshipStatus
  = lens _llRelationshipStatus
      (\ s a -> s{_llRelationshipStatus = a})

-- | Limits the resulting links to the ones belonging to the listed
-- advertisers.
llAdvertiserId :: Lens' LinksList' (Maybe Int64)
llAdvertiserId
  = lens _llAdvertiserId
      (\ s a -> s{_llAdvertiserId = a})

-- | Field for full text search across title and merchandising text, supports
-- link id search.
llSearchText :: Lens' LinksList' (Maybe Text)
llSearchText
  = lens _llSearchText (\ s a -> s{_llSearchText = a})

-- | The promotion type.
llPromotionType :: Lens' LinksList' (Maybe LinksList'PromotionType)
llPromotionType
  = lens _llPromotionType
      (\ s a -> s{_llPromotionType = a})

-- | The ID of the requesting advertiser or publisher.
llRoleId :: Lens' LinksList' Text
llRoleId = lens _llRoleId (\ s a -> s{_llRoleId = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
llRole :: Lens' LinksList' LinksList'Role
llRole = lens _llRole (\ s a -> s{_llRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
llKey :: Lens' LinksList' (Maybe Text)
llKey = lens _llKey (\ s a -> s{_llKey = a})

-- | The beginning of the create date range.
llCreateDateMin :: Lens' LinksList' (Maybe Text)
llCreateDateMin
  = lens _llCreateDateMin
      (\ s a -> s{_llCreateDateMin = a})

-- | The type of the link.
llLinkType :: Lens' LinksList' (Maybe LinksList'LinkType)
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
llOauthToken :: Lens' LinksList' (Maybe Text)
llOauthToken
  = lens _llOauthToken (\ s a -> s{_llOauthToken = a})

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

-- | Data format for the response.
llAlt :: Lens' LinksList' Alt
llAlt = lens _llAlt (\ s a -> s{_llAlt = a})

instance GoogleRequest LinksList' where
        type Rs LinksList' = Links
        request = requestWithRoute defReq affiliatesURL
        requestWithRoute r u LinksList'{..}
          = go _llCreateDateMax _llAuthorship _llQuotaUser
              (Just _llPrettyPrint)
              _llAssetSize
              _llUserIp
              _llRelationshipStatus
              _llAdvertiserId
              _llSearchText
              _llPromotionType
              _llRoleId
              _llRole
              _llKey
              _llCreateDateMin
              _llLinkType
              _llPageToken
              _llStartDateMax
              _llOauthToken
              _llStartDateMin
              _llMaxResults
              _llFields
              (Just _llAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy LinksListAPI) r u
