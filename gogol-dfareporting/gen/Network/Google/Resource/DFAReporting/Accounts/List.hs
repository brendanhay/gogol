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
-- Module      : Network.Google.Resource.DFAReporting.Accounts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of accounts, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.accounts.list@.
module Network.Google.Resource.DFAReporting.Accounts.List
    (
    -- * REST Resource
      AccountsListResource

    -- * Creating a Request
    , accountsList
    , AccountsList

    -- * Request Lenses
    , accSearchString
    , accIds
    , accProFileId
    , accSortOrder
    , accActive
    , accPageToken
    , accSortField
    , accMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.accounts.list@ method which the
-- 'AccountsList' request conforms to.
type AccountsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accounts" :>
           QueryParam "searchString" Text :>
             QueryParams "ids" Int64 :>
               QueryParam "sortOrder" AccountsListSortOrder :>
                 QueryParam "active" Bool :>
                   QueryParam "pageToken" Text :>
                     QueryParam "sortField" AccountsListSortField :>
                       QueryParam "maxResults" Int32 :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AccountsListResponse

-- | Retrieves the list of accounts, possibly filtered.
--
-- /See:/ 'accountsList' smart constructor.
data AccountsList = AccountsList
    { _accSearchString :: !(Maybe Text)
    , _accIds          :: !(Maybe [Int64])
    , _accProFileId    :: !Int64
    , _accSortOrder    :: !(Maybe AccountsListSortOrder)
    , _accActive       :: !(Maybe Bool)
    , _accPageToken    :: !(Maybe Text)
    , _accSortField    :: !(Maybe AccountsListSortField)
    , _accMaxResults   :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accSearchString'
--
-- * 'accIds'
--
-- * 'accProFileId'
--
-- * 'accSortOrder'
--
-- * 'accActive'
--
-- * 'accPageToken'
--
-- * 'accSortField'
--
-- * 'accMaxResults'
accountsList
    :: Int64 -- ^ 'accProFileId'
    -> AccountsList
accountsList pAccProFileId_ =
    AccountsList
    { _accSearchString = Nothing
    , _accIds = Nothing
    , _accProFileId = pAccProFileId_
    , _accSortOrder = Nothing
    , _accActive = Nothing
    , _accPageToken = Nothing
    , _accSortField = Nothing
    , _accMaxResults = Nothing
    }

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"account*2015\" will return objects with names like
-- \"account June 2015\", \"account April 2015\", or simply \"account
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"account\" will match objects with name \"my account\", \"account
-- 2015\", or simply \"account\".
accSearchString :: Lens' AccountsList (Maybe Text)
accSearchString
  = lens _accSearchString
      (\ s a -> s{_accSearchString = a})

-- | Select only accounts with these IDs.
accIds :: Lens' AccountsList [Int64]
accIds
  = lens _accIds (\ s a -> s{_accIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
accProFileId :: Lens' AccountsList Int64
accProFileId
  = lens _accProFileId (\ s a -> s{_accProFileId = a})

-- | Order of sorted results, default is ASCENDING.
accSortOrder :: Lens' AccountsList (Maybe AccountsListSortOrder)
accSortOrder
  = lens _accSortOrder (\ s a -> s{_accSortOrder = a})

-- | Select only active accounts. Don\'t set this field to select both active
-- and non-active accounts.
accActive :: Lens' AccountsList (Maybe Bool)
accActive
  = lens _accActive (\ s a -> s{_accActive = a})

-- | Value of the nextPageToken from the previous result page.
accPageToken :: Lens' AccountsList (Maybe Text)
accPageToken
  = lens _accPageToken (\ s a -> s{_accPageToken = a})

-- | Field by which to sort the list.
accSortField :: Lens' AccountsList (Maybe AccountsListSortField)
accSortField
  = lens _accSortField (\ s a -> s{_accSortField = a})

-- | Maximum number of results to return.
accMaxResults :: Lens' AccountsList (Maybe Int32)
accMaxResults
  = lens _accMaxResults
      (\ s a -> s{_accMaxResults = a})

instance GoogleRequest AccountsList where
        type Rs AccountsList = AccountsListResponse
        requestClient AccountsList{..}
          = go _accProFileId _accSearchString
              (_accIds ^. _Default)
              _accSortOrder
              _accActive
              _accPageToken
              _accSortField
              _accMaxResults
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AccountsListResource)
                      mempty
