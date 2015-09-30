{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module DFAReporting.OrderDocuments.List
    (
    -- * REST Resource
      OrderDocumentsListAPI

    -- * Creating a Request
    , orderDocumentsList
    , OrderDocumentsList

    -- * Request Lenses
    , odlQuotaUser
    , odlPrettyPrint
    , odlUserIp
    , odlSearchString
    , odlIds
    , odlProfileId
    , odlSortOrder
    , odlKey
    , odlPageToken
    , odlProjectId
    , odlSortField
    , odlOauthToken
    , odlOrderId
    , odlApproved
    , odlSiteId
    , odlMaxResults
    , odlFields
    , odlAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingOrderDocumentsList@ which the
-- 'OrderDocumentsList' request conforms to.
type OrderDocumentsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "projects" :>
           Capture "projectId" Int64 :>
             "orderDocuments" :>
               QueryParam "searchString" Text :>
                 QueryParams "ids" Int64 :>
                   QueryParam "sortOrder" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "sortField" Text :>
                         QueryParams "orderId" Int64 :>
                           QueryParam "approved" Bool :>
                             QueryParams "siteId" Int64 :>
                               QueryParam "maxResults" Int32 :>
                                 Get '[JSON] OrderDocumentsListResponse

-- | Retrieves a list of order documents, possibly filtered.
--
-- /See:/ 'orderDocumentsList' smart constructor.
data OrderDocumentsList = OrderDocumentsList
    { _odlQuotaUser    :: !(Maybe Text)
    , _odlPrettyPrint  :: !Bool
    , _odlUserIp       :: !(Maybe Text)
    , _odlSearchString :: !(Maybe Text)
    , _odlIds          :: !(Maybe Int64)
    , _odlProfileId    :: !Int64
    , _odlSortOrder    :: !(Maybe Text)
    , _odlKey          :: !(Maybe Text)
    , _odlPageToken    :: !(Maybe Text)
    , _odlProjectId    :: !Int64
    , _odlSortField    :: !(Maybe Text)
    , _odlOauthToken   :: !(Maybe Text)
    , _odlOrderId      :: !(Maybe Int64)
    , _odlApproved     :: !(Maybe Bool)
    , _odlSiteId       :: !(Maybe Int64)
    , _odlMaxResults   :: !(Maybe Int32)
    , _odlFields       :: !(Maybe Text)
    , _odlAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderDocumentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odlQuotaUser'
--
-- * 'odlPrettyPrint'
--
-- * 'odlUserIp'
--
-- * 'odlSearchString'
--
-- * 'odlIds'
--
-- * 'odlProfileId'
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
-- * 'odlOauthToken'
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
--
-- * 'odlAlt'
orderDocumentsList
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'projectId'
    -> OrderDocumentsList
orderDocumentsList pOdlProfileId_ pOdlProjectId_ =
    OrderDocumentsList
    { _odlQuotaUser = Nothing
    , _odlPrettyPrint = True
    , _odlUserIp = Nothing
    , _odlSearchString = Nothing
    , _odlIds = Nothing
    , _odlProfileId = pOdlProfileId_
    , _odlSortOrder = Nothing
    , _odlKey = Nothing
    , _odlPageToken = Nothing
    , _odlProjectId = pOdlProjectId_
    , _odlSortField = Nothing
    , _odlOauthToken = Nothing
    , _odlOrderId = Nothing
    , _odlApproved = Nothing
    , _odlSiteId = Nothing
    , _odlMaxResults = Nothing
    , _odlFields = Nothing
    , _odlAlt = "json"
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
odlUserIp :: Lens' OrderDocumentsList' (Maybe Text)
odlUserIp
  = lens _odlUserIp (\ s a -> s{_odlUserIp = a})

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
odlIds :: Lens' OrderDocumentsList' (Maybe Int64)
odlIds = lens _odlIds (\ s a -> s{_odlIds = a})

-- | User profile ID associated with this request.
odlProfileId :: Lens' OrderDocumentsList' Int64
odlProfileId
  = lens _odlProfileId (\ s a -> s{_odlProfileId = a})

-- | Order of sorted results, default is ASCENDING.
odlSortOrder :: Lens' OrderDocumentsList' (Maybe Text)
odlSortOrder
  = lens _odlSortOrder (\ s a -> s{_odlSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
odlKey :: Lens' OrderDocumentsList' (Maybe Text)
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
odlSortField :: Lens' OrderDocumentsList' (Maybe Text)
odlSortField
  = lens _odlSortField (\ s a -> s{_odlSortField = a})

-- | OAuth 2.0 token for the current user.
odlOauthToken :: Lens' OrderDocumentsList' (Maybe Text)
odlOauthToken
  = lens _odlOauthToken
      (\ s a -> s{_odlOauthToken = a})

-- | Select only order documents for specified orders.
odlOrderId :: Lens' OrderDocumentsList' (Maybe Int64)
odlOrderId
  = lens _odlOrderId (\ s a -> s{_odlOrderId = a})

-- | Select only order documents that have been approved by at least one
-- user.
odlApproved :: Lens' OrderDocumentsList' (Maybe Bool)
odlApproved
  = lens _odlApproved (\ s a -> s{_odlApproved = a})

-- | Select only order documents that are associated with these sites.
odlSiteId :: Lens' OrderDocumentsList' (Maybe Int64)
odlSiteId
  = lens _odlSiteId (\ s a -> s{_odlSiteId = a})

-- | Maximum number of results to return.
odlMaxResults :: Lens' OrderDocumentsList' (Maybe Int32)
odlMaxResults
  = lens _odlMaxResults
      (\ s a -> s{_odlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
odlFields :: Lens' OrderDocumentsList' (Maybe Text)
odlFields
  = lens _odlFields (\ s a -> s{_odlFields = a})

-- | Data format for the response.
odlAlt :: Lens' OrderDocumentsList' Text
odlAlt = lens _odlAlt (\ s a -> s{_odlAlt = a})

instance GoogleRequest OrderDocumentsList' where
        type Rs OrderDocumentsList' =
             OrderDocumentsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u OrderDocumentsList{..}
          = go _odlQuotaUser _odlPrettyPrint _odlUserIp
              _odlSearchString
              _odlIds
              _odlProfileId
              _odlSortOrder
              _odlKey
              _odlPageToken
              _odlProjectId
              _odlSortField
              _odlOauthToken
              _odlOrderId
              _odlApproved
              _odlSiteId
              _odlMaxResults
              _odlFields
              _odlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrderDocumentsListAPI)
                      r
                      u
