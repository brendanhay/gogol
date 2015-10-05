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
-- Module      : Network.Google.Resource.DFAReporting.OrderDocuments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of order documents, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingOrderDocumentsList@.
module Network.Google.Resource.DFAReporting.OrderDocuments.List
    (
    -- * REST Resource
      OrderDocumentsListResource

    -- * Creating a Request
    , orderDocumentsList'
    , OrderDocumentsList'

    -- * Request Lenses
    , odlQuotaUser
    , odlPrettyPrint
    , odlUserIP
    , odlSearchString
    , odlIds
    , odlProFileId
    , odlSortOrder
    , odlKey
    , odlPageToken
    , odlProjectId
    , odlSortField
    , odlOAuthToken
    , odlOrderId
    , odlApproved
    , odlSiteId
    , odlMaxResults
    , odlFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingOrderDocumentsList@ which the
-- 'OrderDocumentsList'' request conforms to.
type OrderDocumentsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "projects" :>
           Capture "projectId" Int64 :>
             "orderDocuments" :>
               QueryParam "searchString" Text :>
                 QueryParams "ids" Int64 :>
                   QueryParam "sortOrder" OrderDocumentsListSortOrder :>
                     QueryParam "pageToken" Text :>
                       QueryParam "sortField" OrderDocumentsListSortField :>
                         QueryParams "orderId" Int64 :>
                           QueryParam "approved" Bool :>
                             QueryParams "siteId" Int64 :>
                               QueryParam "maxResults" Int32 :>
                                 QueryParam "quotaUser" Text :>
                                   QueryParam "prettyPrint" Bool :>
                                     QueryParam "userIp" Text :>
                                       QueryParam "fields" Text :>
                                         QueryParam "key" AuthKey :>
                                           QueryParam "oauth_token" OAuthToken
                                             :>
                                             QueryParam "alt" AltJSON :>
                                               Get '[JSON]
                                                 OrderDocumentsListResponse

-- | Retrieves a list of order documents, possibly filtered.
--
-- /See:/ 'orderDocumentsList'' smart constructor.
data OrderDocumentsList' = OrderDocumentsList'
    { _odlQuotaUser    :: !(Maybe Text)
    , _odlPrettyPrint  :: !Bool
    , _odlUserIP       :: !(Maybe Text)
    , _odlSearchString :: !(Maybe Text)
    , _odlIds          :: !(Maybe [Int64])
    , _odlProFileId    :: !Int64
    , _odlSortOrder    :: !(Maybe OrderDocumentsListSortOrder)
    , _odlKey          :: !(Maybe AuthKey)
    , _odlPageToken    :: !(Maybe Text)
    , _odlProjectId    :: !Int64
    , _odlSortField    :: !(Maybe OrderDocumentsListSortField)
    , _odlOAuthToken   :: !(Maybe OAuthToken)
    , _odlOrderId      :: !(Maybe [Int64])
    , _odlApproved     :: !(Maybe Bool)
    , _odlSiteId       :: !(Maybe [Int64])
    , _odlMaxResults   :: !(Maybe Int32)
    , _odlFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderDocumentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odlQuotaUser'
--
-- * 'odlPrettyPrint'
--
-- * 'odlUserIP'
--
-- * 'odlSearchString'
--
-- * 'odlIds'
--
-- * 'odlProFileId'
--
-- * 'odlSortOrder'
--
-- * 'odlKey'
--
-- * 'odlPageToken'
--
-- * 'odlProjectId'
--
-- * 'odlSortField'
--
-- * 'odlOAuthToken'
--
-- * 'odlOrderId'
--
-- * 'odlApproved'
--
-- * 'odlSiteId'
--
-- * 'odlMaxResults'
--
-- * 'odlFields'
orderDocumentsList'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'projectId'
    -> OrderDocumentsList'
orderDocumentsList' pOdlProFileId_ pOdlProjectId_ =
    OrderDocumentsList'
    { _odlQuotaUser = Nothing
    , _odlPrettyPrint = True
    , _odlUserIP = Nothing
    , _odlSearchString = Nothing
    , _odlIds = Nothing
    , _odlProFileId = pOdlProFileId_
    , _odlSortOrder = Nothing
    , _odlKey = Nothing
    , _odlPageToken = Nothing
    , _odlProjectId = pOdlProjectId_
    , _odlSortField = Nothing
    , _odlOAuthToken = Nothing
    , _odlOrderId = Nothing
    , _odlApproved = Nothing
    , _odlSiteId = Nothing
    , _odlMaxResults = Nothing
    , _odlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
odlQuotaUser :: Lens' OrderDocumentsList' (Maybe Text)
odlQuotaUser
  = lens _odlQuotaUser (\ s a -> s{_odlQuotaUser = a})

-- | Returns response with indentations and line breaks.
odlPrettyPrint :: Lens' OrderDocumentsList' Bool
odlPrettyPrint
  = lens _odlPrettyPrint
      (\ s a -> s{_odlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
odlUserIP :: Lens' OrderDocumentsList' (Maybe Text)
odlUserIP
  = lens _odlUserIP (\ s a -> s{_odlUserIP = a})

-- | Allows searching for order documents by name or ID. Wildcards (*) are
-- allowed. For example, \"orderdocument*2015\" will return order documents
-- with names like \"orderdocument June 2015\", \"orderdocument April
-- 2015\", or simply \"orderdocument 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"orderdocument\" will match order documents
-- with name \"my orderdocument\", \"orderdocument 2015\", or simply
-- \"orderdocument\".
odlSearchString :: Lens' OrderDocumentsList' (Maybe Text)
odlSearchString
  = lens _odlSearchString
      (\ s a -> s{_odlSearchString = a})

-- | Select only order documents with these IDs.
odlIds :: Lens' OrderDocumentsList' [Int64]
odlIds
  = lens _odlIds (\ s a -> s{_odlIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
odlProFileId :: Lens' OrderDocumentsList' Int64
odlProFileId
  = lens _odlProFileId (\ s a -> s{_odlProFileId = a})

-- | Order of sorted results, default is ASCENDING.
odlSortOrder :: Lens' OrderDocumentsList' (Maybe OrderDocumentsListSortOrder)
odlSortOrder
  = lens _odlSortOrder (\ s a -> s{_odlSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
odlKey :: Lens' OrderDocumentsList' (Maybe AuthKey)
odlKey = lens _odlKey (\ s a -> s{_odlKey = a})

-- | Value of the nextPageToken from the previous result page.
odlPageToken :: Lens' OrderDocumentsList' (Maybe Text)
odlPageToken
  = lens _odlPageToken (\ s a -> s{_odlPageToken = a})

-- | Project ID for order documents.
odlProjectId :: Lens' OrderDocumentsList' Int64
odlProjectId
  = lens _odlProjectId (\ s a -> s{_odlProjectId = a})

-- | Field by which to sort the list.
odlSortField :: Lens' OrderDocumentsList' (Maybe OrderDocumentsListSortField)
odlSortField
  = lens _odlSortField (\ s a -> s{_odlSortField = a})

-- | OAuth 2.0 token for the current user.
odlOAuthToken :: Lens' OrderDocumentsList' (Maybe OAuthToken)
odlOAuthToken
  = lens _odlOAuthToken
      (\ s a -> s{_odlOAuthToken = a})

-- | Select only order documents for specified orders.
odlOrderId :: Lens' OrderDocumentsList' [Int64]
odlOrderId
  = lens _odlOrderId (\ s a -> s{_odlOrderId = a}) .
      _Default
      . _Coerce

-- | Select only order documents that have been approved by at least one
-- user.
odlApproved :: Lens' OrderDocumentsList' (Maybe Bool)
odlApproved
  = lens _odlApproved (\ s a -> s{_odlApproved = a})

-- | Select only order documents that are associated with these sites.
odlSiteId :: Lens' OrderDocumentsList' [Int64]
odlSiteId
  = lens _odlSiteId (\ s a -> s{_odlSiteId = a}) .
      _Default
      . _Coerce

-- | Maximum number of results to return.
odlMaxResults :: Lens' OrderDocumentsList' (Maybe Int32)
odlMaxResults
  = lens _odlMaxResults
      (\ s a -> s{_odlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
odlFields :: Lens' OrderDocumentsList' (Maybe Text)
odlFields
  = lens _odlFields (\ s a -> s{_odlFields = a})

instance GoogleAuth OrderDocumentsList' where
        authKey = odlKey . _Just
        authToken = odlOAuthToken . _Just

instance GoogleRequest OrderDocumentsList' where
        type Rs OrderDocumentsList' =
             OrderDocumentsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u OrderDocumentsList'{..}
          = go _odlProFileId _odlProjectId _odlSearchString
              (_odlIds ^. _Default)
              _odlSortOrder
              _odlPageToken
              _odlSortField
              (_odlOrderId ^. _Default)
              _odlApproved
              (_odlSiteId ^. _Default)
              _odlMaxResults
              _odlQuotaUser
              (Just _odlPrettyPrint)
              _odlUserIP
              _odlFields
              _odlKey
              _odlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrderDocumentsListResource)
                      r
                      u
