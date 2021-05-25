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
-- Module      : Network.Google.Resource.DFAReporting.DirectorySites.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of directory sites, possibly filtered. This method
-- supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.directorySites.list@.
module Network.Google.Resource.DFAReporting.DirectorySites.List
    (
    -- * REST Resource
      DirectorySitesListResource

    -- * Creating a Request
    , directorySitesList
    , DirectorySitesList

    -- * Request Lenses
    , dslXgafv
    , dslUploadProtocol
    , dslAccessToken
    , dslSearchString
    , dslAcceptsInterstitialPlacements
    , dslAcceptsPublisherPaidPlacements
    , dslUploadType
    , dslIds
    , dslProFileId
    , dslSortOrder
    , dslActive
    , dslPageToken
    , dslSortField
    , dslAcceptsInStreamVideoPlacements
    , dslMaxResults
    , dslDfpNetworkCode
    , dslCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.directorySites.list@ method which the
-- 'DirectorySitesList' request conforms to.
type DirectorySitesListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "directorySites" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "searchString" Text :>
                       QueryParam "acceptsInterstitialPlacements" Bool :>
                         QueryParam "acceptsPublisherPaidPlacements" Bool :>
                           QueryParam "uploadType" Text :>
                             QueryParams "ids" (Textual Int64) :>
                               QueryParam "sortOrder"
                                 DirectorySitesListSortOrder
                                 :>
                                 QueryParam "active" Bool :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "sortField"
                                       DirectorySitesListSortField
                                       :>
                                       QueryParam
                                         "acceptsInStreamVideoPlacements"
                                         Bool
                                         :>
                                         QueryParam "maxResults" (Textual Int32)
                                           :>
                                           QueryParam "dfpNetworkCode" Text :>
                                             QueryParam "callback" Text :>
                                               QueryParam "alt" AltJSON :>
                                                 Get '[JSON]
                                                   DirectorySitesListResponse

-- | Retrieves a list of directory sites, possibly filtered. This method
-- supports paging.
--
-- /See:/ 'directorySitesList' smart constructor.
data DirectorySitesList =
  DirectorySitesList'
    { _dslXgafv :: !(Maybe Xgafv)
    , _dslUploadProtocol :: !(Maybe Text)
    , _dslAccessToken :: !(Maybe Text)
    , _dslSearchString :: !(Maybe Text)
    , _dslAcceptsInterstitialPlacements :: !(Maybe Bool)
    , _dslAcceptsPublisherPaidPlacements :: !(Maybe Bool)
    , _dslUploadType :: !(Maybe Text)
    , _dslIds :: !(Maybe [Textual Int64])
    , _dslProFileId :: !(Textual Int64)
    , _dslSortOrder :: !DirectorySitesListSortOrder
    , _dslActive :: !(Maybe Bool)
    , _dslPageToken :: !(Maybe Text)
    , _dslSortField :: !DirectorySitesListSortField
    , _dslAcceptsInStreamVideoPlacements :: !(Maybe Bool)
    , _dslMaxResults :: !(Textual Int32)
    , _dslDfpNetworkCode :: !(Maybe Text)
    , _dslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DirectorySitesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dslXgafv'
--
-- * 'dslUploadProtocol'
--
-- * 'dslAccessToken'
--
-- * 'dslSearchString'
--
-- * 'dslAcceptsInterstitialPlacements'
--
-- * 'dslAcceptsPublisherPaidPlacements'
--
-- * 'dslUploadType'
--
-- * 'dslIds'
--
-- * 'dslProFileId'
--
-- * 'dslSortOrder'
--
-- * 'dslActive'
--
-- * 'dslPageToken'
--
-- * 'dslSortField'
--
-- * 'dslAcceptsInStreamVideoPlacements'
--
-- * 'dslMaxResults'
--
-- * 'dslDfpNetworkCode'
--
-- * 'dslCallback'
directorySitesList
    :: Int64 -- ^ 'dslProFileId'
    -> DirectorySitesList
directorySitesList pDslProFileId_ =
  DirectorySitesList'
    { _dslXgafv = Nothing
    , _dslUploadProtocol = Nothing
    , _dslAccessToken = Nothing
    , _dslSearchString = Nothing
    , _dslAcceptsInterstitialPlacements = Nothing
    , _dslAcceptsPublisherPaidPlacements = Nothing
    , _dslUploadType = Nothing
    , _dslIds = Nothing
    , _dslProFileId = _Coerce # pDslProFileId_
    , _dslSortOrder = DSLSOAscending
    , _dslActive = Nothing
    , _dslPageToken = Nothing
    , _dslSortField = DSLSFID
    , _dslAcceptsInStreamVideoPlacements = Nothing
    , _dslMaxResults = 1000
    , _dslDfpNetworkCode = Nothing
    , _dslCallback = Nothing
    }


-- | V1 error format.
dslXgafv :: Lens' DirectorySitesList (Maybe Xgafv)
dslXgafv = lens _dslXgafv (\ s a -> s{_dslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dslUploadProtocol :: Lens' DirectorySitesList (Maybe Text)
dslUploadProtocol
  = lens _dslUploadProtocol
      (\ s a -> s{_dslUploadProtocol = a})

-- | OAuth access token.
dslAccessToken :: Lens' DirectorySitesList (Maybe Text)
dslAccessToken
  = lens _dslAccessToken
      (\ s a -> s{_dslAccessToken = a})

-- | Allows searching for objects by name, ID or URL. Wildcards (*) are
-- allowed. For example, \"directory site*2015\" will return objects with
-- names like \"directory site June 2015\", \"directory site April 2015\",
-- or simply \"directory site 2015\". Most of the searches also add
-- wildcards implicitly at the start and the end of the search string. For
-- example, a search string of \"directory site\" will match objects with
-- name \"my directory site\", \"directory site 2015\" or simply,
-- \"directory site\".
dslSearchString :: Lens' DirectorySitesList (Maybe Text)
dslSearchString
  = lens _dslSearchString
      (\ s a -> s{_dslSearchString = a})

-- | This search filter is no longer supported and will have no effect on the
-- results returned.
dslAcceptsInterstitialPlacements :: Lens' DirectorySitesList (Maybe Bool)
dslAcceptsInterstitialPlacements
  = lens _dslAcceptsInterstitialPlacements
      (\ s a -> s{_dslAcceptsInterstitialPlacements = a})

-- | Select only directory sites that accept publisher paid placements. This
-- field can be left blank.
dslAcceptsPublisherPaidPlacements :: Lens' DirectorySitesList (Maybe Bool)
dslAcceptsPublisherPaidPlacements
  = lens _dslAcceptsPublisherPaidPlacements
      (\ s a -> s{_dslAcceptsPublisherPaidPlacements = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dslUploadType :: Lens' DirectorySitesList (Maybe Text)
dslUploadType
  = lens _dslUploadType
      (\ s a -> s{_dslUploadType = a})

-- | Select only directory sites with these IDs.
dslIds :: Lens' DirectorySitesList [Int64]
dslIds
  = lens _dslIds (\ s a -> s{_dslIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
dslProFileId :: Lens' DirectorySitesList Int64
dslProFileId
  = lens _dslProFileId (\ s a -> s{_dslProFileId = a})
      . _Coerce

-- | Order of sorted results.
dslSortOrder :: Lens' DirectorySitesList DirectorySitesListSortOrder
dslSortOrder
  = lens _dslSortOrder (\ s a -> s{_dslSortOrder = a})

-- | Select only active directory sites. Leave blank to retrieve both active
-- and inactive directory sites.
dslActive :: Lens' DirectorySitesList (Maybe Bool)
dslActive
  = lens _dslActive (\ s a -> s{_dslActive = a})

-- | Value of the nextPageToken from the previous result page.
dslPageToken :: Lens' DirectorySitesList (Maybe Text)
dslPageToken
  = lens _dslPageToken (\ s a -> s{_dslPageToken = a})

-- | Field by which to sort the list.
dslSortField :: Lens' DirectorySitesList DirectorySitesListSortField
dslSortField
  = lens _dslSortField (\ s a -> s{_dslSortField = a})

-- | This search filter is no longer supported and will have no effect on the
-- results returned.
dslAcceptsInStreamVideoPlacements :: Lens' DirectorySitesList (Maybe Bool)
dslAcceptsInStreamVideoPlacements
  = lens _dslAcceptsInStreamVideoPlacements
      (\ s a -> s{_dslAcceptsInStreamVideoPlacements = a})

-- | Maximum number of results to return.
dslMaxResults :: Lens' DirectorySitesList Int32
dslMaxResults
  = lens _dslMaxResults
      (\ s a -> s{_dslMaxResults = a})
      . _Coerce

-- | Select only directory sites with this Ad Manager network code.
dslDfpNetworkCode :: Lens' DirectorySitesList (Maybe Text)
dslDfpNetworkCode
  = lens _dslDfpNetworkCode
      (\ s a -> s{_dslDfpNetworkCode = a})

-- | JSONP
dslCallback :: Lens' DirectorySitesList (Maybe Text)
dslCallback
  = lens _dslCallback (\ s a -> s{_dslCallback = a})

instance GoogleRequest DirectorySitesList where
        type Rs DirectorySitesList =
             DirectorySitesListResponse
        type Scopes DirectorySitesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient DirectorySitesList'{..}
          = go _dslProFileId _dslXgafv _dslUploadProtocol
              _dslAccessToken
              _dslSearchString
              _dslAcceptsInterstitialPlacements
              _dslAcceptsPublisherPaidPlacements
              _dslUploadType
              (_dslIds ^. _Default)
              (Just _dslSortOrder)
              _dslActive
              _dslPageToken
              (Just _dslSortField)
              _dslAcceptsInStreamVideoPlacements
              (Just _dslMaxResults)
              _dslDfpNetworkCode
              _dslCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy DirectorySitesListResource)
                      mempty
