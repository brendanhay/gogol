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
-- Module      : Network.Google.Resource.DFAReporting.TargetableRemarketingLists.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of targetable remarketing lists, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingTargetableRemarketingListsList@.
module Network.Google.Resource.DFAReporting.TargetableRemarketingLists.List
    (
    -- * REST Resource
      TargetableRemarketingListsListResource

    -- * Creating a Request
    , targetableRemarketingListsList'
    , TargetableRemarketingListsList'

    -- * Request Lenses
    , trllQuotaUser
    , trllPrettyPrint
    , trllUserIP
    , trllAdvertiserId
    , trllProFileId
    , trllSortOrder
    , trllActive
    , trllKey
    , trllName
    , trllPageToken
    , trllSortField
    , trllOAuthToken
    , trllMaxResults
    , trllFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingTargetableRemarketingListsList@ which the
-- 'TargetableRemarketingListsList'' request conforms to.
type TargetableRemarketingListsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "targetableRemarketingLists" :>
           QueryParam "advertiserId" Int64 :>
             QueryParam "sortOrder"
               TargetableRemarketingListsListSortOrder
               :>
               QueryParam "active" Bool :>
                 QueryParam "name" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "sortField"
                       TargetableRemarketingListsListSortField
                       :>
                       QueryParam "maxResults" Int32 :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" AuthKey :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON]
                                         TargetableRemarketingListsListResponse

-- | Retrieves a list of targetable remarketing lists, possibly filtered.
--
-- /See:/ 'targetableRemarketingListsList'' smart constructor.
data TargetableRemarketingListsList' = TargetableRemarketingListsList'
    { _trllQuotaUser    :: !(Maybe Text)
    , _trllPrettyPrint  :: !Bool
    , _trllUserIP       :: !(Maybe Text)
    , _trllAdvertiserId :: !Int64
    , _trllProFileId    :: !Int64
    , _trllSortOrder    :: !(Maybe TargetableRemarketingListsListSortOrder)
    , _trllActive       :: !(Maybe Bool)
    , _trllKey          :: !(Maybe AuthKey)
    , _trllName         :: !(Maybe Text)
    , _trllPageToken    :: !(Maybe Text)
    , _trllSortField    :: !(Maybe TargetableRemarketingListsListSortField)
    , _trllOAuthToken   :: !(Maybe OAuthToken)
    , _trllMaxResults   :: !(Maybe Int32)
    , _trllFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetableRemarketingListsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trllQuotaUser'
--
-- * 'trllPrettyPrint'
--
-- * 'trllUserIP'
--
-- * 'trllAdvertiserId'
--
-- * 'trllProFileId'
--
-- * 'trllSortOrder'
--
-- * 'trllActive'
--
-- * 'trllKey'
--
-- * 'trllName'
--
-- * 'trllPageToken'
--
-- * 'trllSortField'
--
-- * 'trllOAuthToken'
--
-- * 'trllMaxResults'
--
-- * 'trllFields'
targetableRemarketingListsList'
    :: Int64 -- ^ 'advertiserId'
    -> Int64 -- ^ 'profileId'
    -> TargetableRemarketingListsList'
targetableRemarketingListsList' pTrllAdvertiserId_ pTrllProFileId_ =
    TargetableRemarketingListsList'
    { _trllQuotaUser = Nothing
    , _trllPrettyPrint = True
    , _trllUserIP = Nothing
    , _trllAdvertiserId = pTrllAdvertiserId_
    , _trllProFileId = pTrllProFileId_
    , _trllSortOrder = Nothing
    , _trllActive = Nothing
    , _trllKey = Nothing
    , _trllName = Nothing
    , _trllPageToken = Nothing
    , _trllSortField = Nothing
    , _trllOAuthToken = Nothing
    , _trllMaxResults = Nothing
    , _trllFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
trllQuotaUser :: Lens' TargetableRemarketingListsList' (Maybe Text)
trllQuotaUser
  = lens _trllQuotaUser
      (\ s a -> s{_trllQuotaUser = a})

-- | Returns response with indentations and line breaks.
trllPrettyPrint :: Lens' TargetableRemarketingListsList' Bool
trllPrettyPrint
  = lens _trllPrettyPrint
      (\ s a -> s{_trllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
trllUserIP :: Lens' TargetableRemarketingListsList' (Maybe Text)
trllUserIP
  = lens _trllUserIP (\ s a -> s{_trllUserIP = a})

-- | Select only targetable remarketing lists targetable by these
-- advertisers.
trllAdvertiserId :: Lens' TargetableRemarketingListsList' Int64
trllAdvertiserId
  = lens _trllAdvertiserId
      (\ s a -> s{_trllAdvertiserId = a})

-- | User profile ID associated with this request.
trllProFileId :: Lens' TargetableRemarketingListsList' Int64
trllProFileId
  = lens _trllProFileId
      (\ s a -> s{_trllProFileId = a})

-- | Order of sorted results, default is ASCENDING.
trllSortOrder :: Lens' TargetableRemarketingListsList' (Maybe TargetableRemarketingListsListSortOrder)
trllSortOrder
  = lens _trllSortOrder
      (\ s a -> s{_trllSortOrder = a})

-- | Select only active or only inactive targetable remarketing lists.
trllActive :: Lens' TargetableRemarketingListsList' (Maybe Bool)
trllActive
  = lens _trllActive (\ s a -> s{_trllActive = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
trllKey :: Lens' TargetableRemarketingListsList' (Maybe AuthKey)
trllKey = lens _trllKey (\ s a -> s{_trllKey = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"remarketing list*2015\" will return objects with names
-- like \"remarketing list June 2015\", \"remarketing list April 2015\", or
-- simply \"remarketing list 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"remarketing list\" will match objects with
-- name \"my remarketing list\", \"remarketing list 2015\", or simply
-- \"remarketing list\".
trllName :: Lens' TargetableRemarketingListsList' (Maybe Text)
trllName = lens _trllName (\ s a -> s{_trllName = a})

-- | Value of the nextPageToken from the previous result page.
trllPageToken :: Lens' TargetableRemarketingListsList' (Maybe Text)
trllPageToken
  = lens _trllPageToken
      (\ s a -> s{_trllPageToken = a})

-- | Field by which to sort the list.
trllSortField :: Lens' TargetableRemarketingListsList' (Maybe TargetableRemarketingListsListSortField)
trllSortField
  = lens _trllSortField
      (\ s a -> s{_trllSortField = a})

-- | OAuth 2.0 token for the current user.
trllOAuthToken :: Lens' TargetableRemarketingListsList' (Maybe OAuthToken)
trllOAuthToken
  = lens _trllOAuthToken
      (\ s a -> s{_trllOAuthToken = a})

-- | Maximum number of results to return.
trllMaxResults :: Lens' TargetableRemarketingListsList' (Maybe Int32)
trllMaxResults
  = lens _trllMaxResults
      (\ s a -> s{_trllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
trllFields :: Lens' TargetableRemarketingListsList' (Maybe Text)
trllFields
  = lens _trllFields (\ s a -> s{_trllFields = a})

instance GoogleAuth TargetableRemarketingListsList'
         where
        _AuthKey = trllKey . _Just
        _AuthToken = trllOAuthToken . _Just

instance GoogleRequest
         TargetableRemarketingListsList' where
        type Rs TargetableRemarketingListsList' =
             TargetableRemarketingListsListResponse
        request = requestWith dFAReportingRequest
        requestWith rq TargetableRemarketingListsList'{..}
          = go _trllProFileId (Just _trllAdvertiserId)
              _trllSortOrder
              _trllActive
              _trllName
              _trllPageToken
              _trllSortField
              _trllMaxResults
              _trllQuotaUser
              (Just _trllPrettyPrint)
              _trllUserIP
              _trllFields
              _trllKey
              _trllOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy TargetableRemarketingListsListResource)
                      rq
