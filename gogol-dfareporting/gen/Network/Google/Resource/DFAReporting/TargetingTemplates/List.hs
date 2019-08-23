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
-- Module      : Network.Google.Resource.DFAReporting.TargetingTemplates.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of targeting templates, optionally filtered. This
-- method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.targetingTemplates.list@.
module Network.Google.Resource.DFAReporting.TargetingTemplates.List
    (
    -- * REST Resource
      TargetingTemplatesListResource

    -- * Creating a Request
    , targetingTemplatesList
    , TargetingTemplatesList

    -- * Request Lenses
    , ttlAdvertiserId
    , ttlSearchString
    , ttlIds
    , ttlProFileId
    , ttlSortOrder
    , ttlPageToken
    , ttlSortField
    , ttlMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.targetingTemplates.list@ method which the
-- 'TargetingTemplatesList' request conforms to.
type TargetingTemplatesListResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "targetingTemplates" :>
               QueryParam "advertiserId" (Textual Int64) :>
                 QueryParam "searchString" Text :>
                   QueryParams "ids" (Textual Int64) :>
                     QueryParam "sortOrder"
                       TargetingTemplatesListSortOrder
                       :>
                       QueryParam "pageToken" Text :>
                         QueryParam "sortField"
                           TargetingTemplatesListSortField
                           :>
                           QueryParam "maxResults" (Textual Int32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] TargetingTemplatesListResponse

-- | Retrieves a list of targeting templates, optionally filtered. This
-- method supports paging.
--
-- /See:/ 'targetingTemplatesList' smart constructor.
data TargetingTemplatesList =
  TargetingTemplatesList'
    { _ttlAdvertiserId :: !(Maybe (Textual Int64))
    , _ttlSearchString :: !(Maybe Text)
    , _ttlIds          :: !(Maybe [Textual Int64])
    , _ttlProFileId    :: !(Textual Int64)
    , _ttlSortOrder    :: !TargetingTemplatesListSortOrder
    , _ttlPageToken    :: !(Maybe Text)
    , _ttlSortField    :: !TargetingTemplatesListSortField
    , _ttlMaxResults   :: !(Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetingTemplatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttlAdvertiserId'
--
-- * 'ttlSearchString'
--
-- * 'ttlIds'
--
-- * 'ttlProFileId'
--
-- * 'ttlSortOrder'
--
-- * 'ttlPageToken'
--
-- * 'ttlSortField'
--
-- * 'ttlMaxResults'
targetingTemplatesList
    :: Int64 -- ^ 'ttlProFileId'
    -> TargetingTemplatesList
targetingTemplatesList pTtlProFileId_ =
  TargetingTemplatesList'
    { _ttlAdvertiserId = Nothing
    , _ttlSearchString = Nothing
    , _ttlIds = Nothing
    , _ttlProFileId = _Coerce # pTtlProFileId_
    , _ttlSortOrder = TTLSOAscending
    , _ttlPageToken = Nothing
    , _ttlSortField = TTLSFID
    , _ttlMaxResults = 1000
    }


-- | Select only targeting templates with this advertiser ID.
ttlAdvertiserId :: Lens' TargetingTemplatesList (Maybe Int64)
ttlAdvertiserId
  = lens _ttlAdvertiserId
      (\ s a -> s{_ttlAdvertiserId = a})
      . mapping _Coerce

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"template*2015\" will return objects with names like
-- \"template June 2015\", \"template April 2015\", or simply \"template
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"template\" will match objects with name \"my template\", \"template
-- 2015\", or simply \"template\".
ttlSearchString :: Lens' TargetingTemplatesList (Maybe Text)
ttlSearchString
  = lens _ttlSearchString
      (\ s a -> s{_ttlSearchString = a})

-- | Select only targeting templates with these IDs.
ttlIds :: Lens' TargetingTemplatesList [Int64]
ttlIds
  = lens _ttlIds (\ s a -> s{_ttlIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
ttlProFileId :: Lens' TargetingTemplatesList Int64
ttlProFileId
  = lens _ttlProFileId (\ s a -> s{_ttlProFileId = a})
      . _Coerce

-- | Order of sorted results.
ttlSortOrder :: Lens' TargetingTemplatesList TargetingTemplatesListSortOrder
ttlSortOrder
  = lens _ttlSortOrder (\ s a -> s{_ttlSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
ttlPageToken :: Lens' TargetingTemplatesList (Maybe Text)
ttlPageToken
  = lens _ttlPageToken (\ s a -> s{_ttlPageToken = a})

-- | Field by which to sort the list.
ttlSortField :: Lens' TargetingTemplatesList TargetingTemplatesListSortField
ttlSortField
  = lens _ttlSortField (\ s a -> s{_ttlSortField = a})

-- | Maximum number of results to return.
ttlMaxResults :: Lens' TargetingTemplatesList Int32
ttlMaxResults
  = lens _ttlMaxResults
      (\ s a -> s{_ttlMaxResults = a})
      . _Coerce

instance GoogleRequest TargetingTemplatesList where
        type Rs TargetingTemplatesList =
             TargetingTemplatesListResponse
        type Scopes TargetingTemplatesList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient TargetingTemplatesList'{..}
          = go _ttlProFileId _ttlAdvertiserId _ttlSearchString
              (_ttlIds ^. _Default)
              (Just _ttlSortOrder)
              _ttlPageToken
              (Just _ttlSortField)
              (Just _ttlMaxResults)
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetingTemplatesListResource)
                      mempty
